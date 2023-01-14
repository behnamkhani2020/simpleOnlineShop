const {DataTypes} = require('sequelize')
const db = require('../src/configs/dbConfigs')
const bcrypt = require('bcrypt')

const User = db.define('users',{
    id:{
        type : DataTypes.NUMBER,
        allowNull : false,
        primaryKey : true,
        autoIncrement : true
    },
    name:{
        type : DataTypes.STRING
    },
    email:{
        type : DataTypes.STRING
    },
    password:{
        type : DataTypes.STRING
    },
    token:{
        type : DataTypes.STRING,
        defaultValue:'-'
    },
    cart:{
        type : DataTypes.STRING,
        defaultValue : JSON.stringify('')
    }
},{
    timestamps : false
})

User.verifyPassword = async (user,pass)=>{
    return await bcrypt.compare(pass,user.password)
}

User.encryptPassword = async (myPlainTextPassword)=>{
    const saltRounds = process.env.SALT_ROUNDS || 10
    const salt = await bcrypt.genSaltSync(saltRounds)
    const hash = await bcrypt.hashSync(myPlainTextPassword, salt)
    return hash
}


module.exports = User