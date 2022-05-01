CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);
SELECT * FROM groceries WHERE aisle > 5 ORDER BY aisle;



CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
SELECT * FROM movies;
SELECT name FROM movies where release_year=2000;


CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES (4, "dance", 15);
SELECT SUM(minutes) FROM  todo_list



UPDATE
 Customers
SET
 City = 'Oslo'
WHERE
 Country = 'Norway';



UPDATE
 Customers SET City = 'Oslo'
,Country= 'Norway'
WHERE CustomerID = 32;

DELETE FROM Customers WHERE City='Norvege'

SELECT MIN(PRICE) FROM Products;

SELECT MAX(Price) FROM Products;


SELECT 
COUNT (*)
FROM Products
WHERE
Price = 18;

SELECT 
AVG(Price)
FROM Products;

SELECT 
SUM(Price)
FROM Products;

SELECT * FROM Customers
WHERE City LIKE 'a%'
;

SELECT * FROM Customers
WHERE City Like '%a'
;

SELECT * FROM Customers
WHERE City LIKE '%a%'
;

SELECT * FROM Customers
WHERE City LIKE 'a%b'
;

SELECT * FROM Customers
WHERE City NOT LIKE 'a%'
;

SELECT * FROM Customers
WHERE City LIKE '
_a%';

SELECT * FROM Customers
WHERE City LIKE '
[acs]
%';


SELECT * FROM Customers
WHERE City LIKE '
[a-f]
%';

SELECT * FROM Customers
WHERE City LIKE '
[!abc]
%';


SELECT * FROM Customers
WHERE Country IN
 
('Norway',
 'France'
)
;

SELECT * FROM Customers
WHERE Country NOT IN
 ('Norway', 'France');

SELECT * FROM Products
WHERE Price 
BETWEEN 10 AND 20
;

SELECT * FROM Products
WHERE Price 
NOT BETWEEN 10 AND 20
;

SELECT * FROM Products
WHERE ProductName 
BETWEEN 'Geitost' AND 'Pavlova'
;

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

SELECT *
FROM Customers 
AS Consumers
;


SELECT *
FROM Orders
LEFT JOIN Customers
ON Orders.CustomerID
=
Customers.CustomerID
;


SELECT *
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

SELECT *
FROM Orders
RIGHT JOIN Customers

ON Orders.CustomerID=Customers.CustomerID;

SELECT 
COUNT
(CustomerID),
Country
FROM Customers
GROUP BY country
;

SELECT 
COUNT
(CustomerID),
Country
FROM Customers
GROUP BY Country
ORDER BY 
COUNT(CustomerID) DESC
;

CREATE DATABASE testBD
