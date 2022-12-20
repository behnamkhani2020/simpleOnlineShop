class Cart {
    constructor(){
        this.cart = []
    }

    getCart(){
        return this.cart
    }

    addToCart(id){
        this.cart.push(id)
    }
}

module.exports = Cart