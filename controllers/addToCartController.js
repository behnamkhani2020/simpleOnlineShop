const addToCartController = (req,res)=>{
    const id = req.params.id
    if(req.session.cart.includes(Number(id))){
        console.log('already added')
    }else{
        req.session.cart.push(Number(id))
    }
    console.log(req.session)
    res.redirect('/')
}

module.exports = addToCartController