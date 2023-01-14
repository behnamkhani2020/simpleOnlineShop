const User = require('../models/User')
const logoutController = async (req,res)=>{
    await User.update({
        cart : JSON.stringify(req.session.cart)
    },{
        where:{
            id : req.user.id
        }
    })
    req.logout((err)=>{
        if (err) {
            console.log(err)
            res.end()
        }else{
            res.redirect('/')
        }
    })
}

module.exports = logoutController