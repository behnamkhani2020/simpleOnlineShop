const Category = require('../models/Category')
const Product = require('../models/Product')
const User = require('../models/User')
const ejs = require('ejs')
const path = require('path')
const sendMail = require('../src/utils/sendMail')

const get = async (req,res)=>{
    const categories = await Category.findAll()
    let fetchedProducts = []
    for(let id of req.session.cart){
        fetchedProducts.push(await Product.findByPk(id,{include:Category}))
    }
    let totalPrice = 0
    fetchedProducts.forEach(product=>{
        totalPrice += product.price
    })
    res.render('checkout',{
        categories : categories,
        products : fetchedProducts,
        user : req.user,
        cart : req.session.cart || [],
        productCount : fetchedProducts.length,
        totalPrice : totalPrice,
        flashMessage : req.flash()
    })
}

const post = async (req,res)=>{
    const categories = await Category.findAll()
    let fetchedProducts = []
    for(let id of req.session.cart){
        fetchedProducts.push(await Product.findByPk(id,{include:Category}))
    }
    let totalPrice = 0
    fetchedProducts.forEach(product=>{
        totalPrice += product.price
    })
    //generate HTML
    const renderdHtml = await ejs.renderFile(path.join(__dirname,'../views/layout/emailTemplate.ejs'),{
        title:'hello there',
        description:`here is your biling info, be sure to pay`,
        link : `http://localhost:${process.env.PORT}`,
        price : req.body.totalPrice
    })
    // send mail to user
    console.log(req.session)
    sendMail(req.user.email,renderdHtml)
    req.flash('info','Biling info sent successfully, you may view link at console !!')
    req.session.cart = []
    fetchedProducts = []
    totalPrice = 0
    await User.update({
        cart : JSON.stringify(req.session.cart)
    },{
        where:{
            id : req.user.id
        }
    })
    res.render('checkout',{
        categories : categories,
        products : fetchedProducts,
        user : req.user,
        cart : req.session.cart || [],
        productCount : fetchedProducts.length,
        totalPrice : totalPrice,
        flashMessage : req.flash()
    })
}

module.exports = {
    get,
    post
}