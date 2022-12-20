const removeFromCartController = (req,res)=>{
    const id = req.params.id
    const index = req.session.cart.indexOf(Number(id));
    console.log(req.session)
    console.log(index)
    if (index > -1) { 
        req.session.cart.splice(index, 1);
    }
    res.redirect('/')
}

module.exports = removeFromCartController