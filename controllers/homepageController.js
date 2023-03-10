const Category = require('../models/Category')
const Product = require('../models/Product')

const homepageController = async (req,res)=>{
    if(req.user){
        if(!req.session.cart){
            console.log(req.user.cart)
            req.session.cart = JSON.parse(req.user.cart) || []
        }
    }
    console.log(req.session.cart)
    const page = req.query.page || 0
    const categories = await Category.findAll()
    const count = await Product.count()
    const theOffset = (count/10)*page
    const allProducts = await Product.findAll({
        include:Category,
        limit:10,
        offset:theOffset
    })
    res.render('home',{
        categories : categories,
        products : allProducts,
        user : req.user,
        productCount : count,
        cart : req.session.cart || []
    })
}

module.exports = homepageController