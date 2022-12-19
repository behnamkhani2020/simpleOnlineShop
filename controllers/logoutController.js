const logoutController = (req,res)=>{
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