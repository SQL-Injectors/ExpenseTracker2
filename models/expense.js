module.exports = function(sequelize, DataTypes) {
  var Expense = sequelize.define("Expense", {
    date: DataTypes.DATEONLY,
    description: DataTypes.STRING,
    category: DataTypes.STRING,
    amount: DataTypes.DECIMAL(8.2)
  });

  // Expense.associate = function(models) {
  //   Expense.belongsTo(models.User, {});
  //   Expense.belongsTo(models.Category, {});
  // }

  });
  
  return Expense;
};

