const Category = require('../models/Category')
const Product = require('../models/Product')

const categoryController = async (req,res)=>{
    const id = req.params.id || null
    const page = req.query.page || 0
    const categories = await Category.findAll()
    const count = await Product.count({
        where:{
            category_ID : Number(id)
        }
    })
    const theOffset = (Math.ceil(count/10))*page
    const allProducts = await Product.findAll({
        where:{
            category_ID : Number(id)
        },
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

module.exports = categoryController