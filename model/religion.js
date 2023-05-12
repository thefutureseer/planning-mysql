const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../sequelizeConnection');

class Religion extends Sequelize.Model {}

 Religion.init({
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  description: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  origin: {
    type: DataTypes.STRING,
    allowNull: false
  },
  beliefs: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  practices: {
    type: DataTypes.TEXT,
    allowNull: false
  }
},
{
sequelize,
freezeTableName: true,
timestamps: false,
moduleName: 'religion',
});

module.exports = Religion;