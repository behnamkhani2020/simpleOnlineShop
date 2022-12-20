const Category = require('../models/Category')
const Product = require('../models/Product')

const singlePageController = async (req,res)=>{
    const categories = await Category.findAll()
    const id = req.params.id || null
    const singleProduct = await Product.findByPk(id,{
        include:Category
    })
    let alreadyExists = false
    if(req.session.cart){
        if(req.session.cart.includes(Number(id))){
            alreadyExists = true
        }
    }
    res.render('shopSingle',{
        product : singleProduct,
        categories : categories,
        user : req.user,
        productCount : 1,
        cart : req.session.cart || [],
        alreadyExists : alreadyExists
    })
}

module.exports = singlePageController