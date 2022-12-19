const passport = require('passport')
const { validationResult } = require('express-validator')

const get = (req,res)=>{
    const result = validationResult(req)
    if (!result.isEmpty()) {
        res.render('login',{
            flashMessage : req.flash(),
            errors : result.errors
        })
        return 
    }
    res.render('login',{
        flashMessage : req.flash(),
        errors : []
    })
}

const post = passport.authenticate('local', {
    failureRedirect: '/login?failed',
    successRedirect: '/',
    failureFlash: true,
    session : true
})

module.exports = {
    get,
    post
}