const loggedIn = (req,res,next)=>{
    if(req.user){
        res.redirect('/')
    }else{
        next()
    }
}

const notLoggedIn = (req,res,next)=>{
    if(!req.user){
        req.flash('warning', 'you need to login first')
        res.redirect('/login')
    }else{
        next()
    }
}
module.exports = {
    loggedIn,
    notLoggedIn
}