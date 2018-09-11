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
      console.log(expenses)
      res.render("details", {
        expenses: expenses
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
