const Product = require('../../models/Product')
const jsonData = require('../../products.json')

const importDataToDB = (data)=>{
    data.forEach(subData => {
        Product.create(subData)
    });
}

importDataToDB(jsonData)