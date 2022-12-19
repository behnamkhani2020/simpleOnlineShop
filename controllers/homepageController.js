const Category = require('../models/Category')

const homepageController = async (req,res)=>{
    const categories = await Category.findAll()
    res.render('home',{
        categories : categories.map((category)=>category.name),
        user : req.user
    })
}

module.exports = homepageController