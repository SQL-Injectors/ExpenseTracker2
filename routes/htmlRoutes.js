var db = require("../models");

module.exports = function(app) {
  // Load dashboard page
  app.get("/", function(req, res) {
    db.Category.findAll().then(function(dbCategories) {
      res.render("dashboard", {
        categories: dbCategories
      });
    })
        
  });

  // Render Expense data onto Expense Details Page
  app.get("/details", function(req, res) {
    db.Expense.findAll().then(function(expenses) {
      let amt = [];
      let cum = [];
      // Iterate through each object to get amount values
      expenses.forEach(expense => {
        amt.push(parseFloat(expense.amount));
      })
      // Running total
      amt.reduce(function(a,b,i){
        return cum[i] = a + b;
      })
      //Replaces the first index of cum array with first index of amt array
      cum[0] = amt[0];
      console.log(cum);
      //total of array
      function getSum (total,num) {
        return total + num;
      }
      let total = parseFloat(amt.reduce(getSum)).toFixed(2);
      res.render("details", {
        expenses: expenses,
        cum: cum,
        total: total
      });
    })
  })

  // Add Expense page
  app.get("/addexpense", function(req, res) {
    db.Category.findAll().then(function(dbCategories) {
      res.render("addexpense", {
        categories: dbCategories
      });
    })
  })

  // Load example page and pass in an example by id
  app.get("/example/:id", function(req, res) {
    db.Example.findOne({ where: { id: req.params.id } }).then(function(dbExample) {
      res.render("example", {
        example: dbExample
      });
    });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
