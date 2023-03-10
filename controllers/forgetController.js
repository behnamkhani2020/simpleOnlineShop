const { validationResult } = require('express-validator')
const User = require('../models/User')
const sendMail = require('../src/utils/sendMail')
const ejs = require('ejs')
const path = require('path')
const md5 = require('md5')

const get = async(req,res)=>{
    res.render('forget',{
        flashMessage : req.flash(),
        errors : []
    })
}

const post = async (req,res) =>{
    // check for validation error
    const result = validationResult(req)
    if(!result.isEmpty()){
        res.render('forget',{
            flashMessage : req.flash(),
            errors : result.errors
        })
        return
    }
    // check if user already exists
    const userInfo = req.body
    const userExistance = await User.findAll({
        where:{
            email : userInfo.email
        }
    })
    if(userExistance.length === 0){
        req.flash('warning','user does not exist')
        res.render('forget',{
            flashMessage : req.flash(),
            errors : result.errors
        })
        return
    }
    
    //generate Token
    const token = md5(userInfo.email) + Date.now()
    await User.update({
        token:token
    },{
        where:{
            email : userInfo.email
        }
    })
    //generate HTML
    const renderdHtml = await ejs.renderFile(path.join(__dirname,'../views/layout/emailTemplate.ejs'),{
        title:'hello there',
        description:`here is your reset password link`,
        link : `http://localhost:${process.env.PORT}/reset?token=${token}`,
        price : null
    })
    // send mail to user
    sendMail(userInfo.email,renderdHtml)
    req.flash('info','reset instructions sent successfully, you may view link at console !!')
    res.render('login',{
        flashMessage : req.flash(),
        errors : []
    })
}
module.exports = {
    get,
    post
}