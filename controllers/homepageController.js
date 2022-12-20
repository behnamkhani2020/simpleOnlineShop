const Category = require('../models/Category')
const Product = require('../models/Product')

const homepageController = async (req,res)=>{
    if(req.user){
        console.log(req.session)
        req.session.cart = req.session.cart || []
    }
    console.log(req.session)
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