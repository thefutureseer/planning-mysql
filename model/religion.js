const Religion = sequelize.define('Religion', {
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
});

module.exports = Religion;