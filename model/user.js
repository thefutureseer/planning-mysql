const { Model, DataTypes } = require('sequelize');
const sequelize = require('../sequelizeConnection');
class User extends Model {}

User.init( {
  id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoIncrement: true
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  phone: {
    type: DataTypes.INTEGER,
    allowNull: true, 
  },
  address: {
    type: DataTypes.STRING,
    allowNull: true
  },
  otherInfo: {
    type: DataTypes.STRING,
    allowNull: true
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  sequelize,
  freezeTableName: true,
  timestamps: true,
  // underscored: true,
  modelName: 'user'
});

module.exports = User;