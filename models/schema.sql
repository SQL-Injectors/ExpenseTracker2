DROP DATABASE IF EXISTS expensetracker_db;
CREATE DATABASE expensetracker_db;

DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;

-- Data for Category Table
INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Clothing', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Entertainment', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Food and Groceries', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Healthcare', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Housing', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Miscellaneous', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Personal Care', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Restaurant', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Transportation', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Categories (category, createdAt, updatedAt)
VALUES ('Utilities', '2018/09/09 00:00', '2018/09/09 00:00');

-- Insert data into Expense table
INSERT INTO expensetracker_db.Expenses (date, description, category, amount, createdAt, updatedAt)
VALUES ('2018-08-31', 'Starbucks Coffee', 'Food and Groceries', '5.25', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Expenses (date, description, category, amount, createdAt, updatedAt)
VALUES ('2018-08-24', 'Uber', 'Transportation', '15.78', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Expenses (date, description, category, amount, createdAt, updatedAt)
VALUES ('2018-08-20', 'Walgreens', 'Personal Care', '20.46', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Expenses (date, description, category, amount, createdAt, updatedAt)
VALUES ('2018-08-18', 'Coachella', 'Entertainment', '313.78', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Expenses (date, description, category, amount, createdAt, updatedAt)
VALUES ('2018-08-16', 'Urban Outfitters', 'Clothing', '105.18', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Expenses (date, description, category, amount, createdAt, updatedAt)
VALUES ('2018-08-10', 'Zachary Pizza', 'Restaurant', '55.15', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Expenses (date, description, category, amount, createdAt, updatedAt)
VALUES ('2018-08-08', 'Starbucks Coffee', 'Food and Groceries', '5.25', '2018/09/09 00:00', '2018/09/09 00:00');

INSERT INTO expensetracker_db.Expenses (date, description, category, amount, createdAt, updatedAt)
VALUES ('2018-08-02', 'Rent', 'Housing', '1800.00', '2018/09/09 00:00', '2018/09/09 00:00');

