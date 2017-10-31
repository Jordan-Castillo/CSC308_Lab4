/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : BAKERY-info.sql

* Purpose :

* Creation Date : 30-10-2017

* Last Modified : Mon 30 Oct 2017 06:52:04 PM PDT

* Created By : Jordan Castillo

* Email: jtcastil@calpoly.edu 

_._._._._._._._._._._._._._._._._._._._._.*/
USE bakery;
-- Q 1) flavor, food type, and price, of items that are chocolate and under $5
SELECT Flavor, Food, PRICE
FROM goods
WHERE (Flavor = 'Chocolate') AND (PRICE <= 5)
ORDER BY PRICE DESC; 
-- Q 2) Flavor, food type, PRICE, of: cookie > $1.1; lemon flavor; apple flavor except for pie
SELECT Flavor, Food, PRICE
FROM goods
WHERE (Food = 'Cookie' AND PRICE > 1.1)
OR (Flavor = 'Lemon')
OR (Flavor = 'Apple' AND Food != 'Pie')
ORDER BY Flavor, Food;
-- Q 3) first and lastname of customers who ordered on October 3, 2007
-- using the literal date worked, rather than using a function
SELECT DISTINCT c.FirstName, c.LastName
FROM customers c, receipts r
WHERE (c.CId = r.Customer) AND (r.SaleDate = '2007-10-03')
ORDER BY c.LastName;
-- Q 4) Flavor, Food type, of every cake ordered on October 4, 2007
SELECT DISTINCT g.Flavor, g.Food
FROM goods g, items i, receipts r
WHERE (g.GId = i.Item)
AND (i.Receipt = r.RNumber)
AND (r.SaleDate = '2007-10-04')
ORDER BY g.Flavor;
-- Q 5) Flavor, Food, PRICE of: purchased by 'ARIANE CRUZEN' on October 25, 2007
SELECT g.Flavor, g.Food, g.PRICE
FROM goods g, items i, receipts r, customers c
WHERE (g.GId = i.Item)
AND (i.Receipt = r.RNumber)
AND (r.Customer = c.CId)
AND (c.LastName = 'CRUZEN' AND c.FirstName = 'ARIANE')
AND (r.SaleDate = '2007-10-25');
-- Q 6) Flavor, Food, of all cookies purchased by 'KIP ARNN' during October 2007
SELECT g.Flavor, g.Food
FROM goods g, items i, receipts r, customers c
WHERE (g.GId = i.Item)
AND (i.Receipt = r.RNumber)
AND (r.Customer = c.CId)
AND (c.LastName = 'ARNN' AND c.FirstName = 'KIP')
AND (MONTHNAME(r.SaleDate) = 'October' AND YEAR(r.SaleDate) = 2007)
AND (g.Food = 'Cookie')
ORDER BY g.Flavor;



