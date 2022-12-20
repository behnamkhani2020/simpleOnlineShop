const { validationResult } = require('express-validator')
const User = require('../models/User')
const ejs = require('ejs')
const path = require('path')

const get = async(req,res)=>{

    // check if user already exists
    const userInfo = req.query
    if(!userInfo.token){
        res.render('reset',{
            flashMessage : req.flash(),
            errors : [],
            token : null
        })
        return
    }else{{
        const userExistance = await User.findAll({
            where:{
                token : userInfo.token
            }
        })
        if(userExistance.length === 0){
            req.flash('warning','user does not exist')
            res.render('reset',{
                flashMessage : req.flash(),
                errors : [],
                token : null
            })
            return
        }else{
            res.render('reset',{
                flashMessage : req.flash(),
                errors : [],
                token : userInfo.token
            })
            return
        }
    }}
       
}

const post = async (req,res) =>{
    // check for validation error
    const result = validationResult(req)
    const userInfo = req.query
    if(!result.isEmpty()){
        res.render('reset',{
            flashMessage : req.flash(),
            errors : result.errors,
            token: userInfo.token
        })
        return
    }
    // check if user already exists
    const userExistance = await User.findAll({
        where:{
            token : userInfo.token
        }
    })
    if(userExistance.length === 0){
        req.flash('warning','user does not exist')
        res.render('reset',{
            flashMessage : req.flash(),
            errors : result.errors,
            token : null
        })
        return
    }
    
    //clear Token
    const token = Date.now()
    const encPass = await User.encryptPassword(req.body.newPass)
    await User.update({
        token:token,
        password : encPass
    },{
        where:{
            token : userInfo.token
        }
    })
    req.flash('info','reset password was successfull')
    res.redirect('/login')
}
module.exports = {
    get,
    post
}