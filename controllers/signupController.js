const { validationResult } = require('express-validator')
const User = require('../models/User')
const path = require('path')

const get = async(req,res)=>{
    res.render('signup',{
        flashMessage : req.flash(),
        errors : []
    })
}

const post = async (req,res) =>{
    // check for validation error
    const result = validationResult(req)
    if(!result.isEmpty()){
        res.render('signup',{
            flashMessage : req.flash(),
            errors : result.errors
        })
        return
    }
    // check if user already exists
    const userInfo = req.body
    const userExistance = await User.findAll({
        where:{
            email : userInfo.userEmail
        }
    })
    if(userExistance.length !== 0){
        req.flash('warning','user already exists')
        res.render('signup',{
            flashMessage : req.flash(),
            errors : result.errors
        })
        return
    }
    // password encryption and user insertion 
    const encPass = await User.encryptPassword(userInfo.userPassword)
    await User.create({
        name : userInfo.userName,
        email : userInfo.userEmail,
        password : encPass
    })
    res.redirect('/')
}
module.exports = {
    get,
    post
}