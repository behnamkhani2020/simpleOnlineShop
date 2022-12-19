const { DataTypes } = require('sequelize');
const db = require('../src/configs/dbConfigs');

const Category = db.define('category', {
  // Model attributes are defined here
  id: {
    type: DataTypes.NUMBER,
    allowNull: false,
    primaryKey : true,
    autoIncrement : true
  },
  name: {
    type: DataTypes.TEXT
    // allowNull defaults to true
  }
}, {
  tableName : "categories",
  timestamps : false
});

module.exports = Category;