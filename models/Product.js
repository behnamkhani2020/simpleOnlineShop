const {DataTypes} = require('sequelize')
const db = require('../src/configs/dbConfigs')
const Category = require('../models/Category')

const Product = db.define('products',{
    id:{
        type : DataTypes.NUMBER,
        allowNull : false,
        primaryKey : true,
        autoIncrement : true
    },
    name:{
        type : DataTypes.STRING
    },
    about:{
        type : DataTypes.STRING
    },
    price:{
        type : DataTypes.NUMBER
    },
    company:{
        type : DataTypes.STRING
    },
    category_ID:{
        type: DataTypes.NUMBER
    },
    dob:{
        type: DataTypes.DATE
    }
},{
    timestamps : false
})

Product.belongsTo(Category,{
    foreignKey : 'category_ID'
})


module.exports = Product