USE NorthWind;

-- Question 1
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = (SELECT MAX(UnitPrice)
					FROM products);
                    
-- Questin 2
SELECT ShipVia, ShipName, ShipAddress
FROM orders
WHERE ShipVia IN (SELECT ShipperID
				FROM shippers
                WHERE ShipperID = 3);
                
-- Question 3
SELECT OrderID
FROM `order details`
WHERE ProductID = (SELECT ProductID
                   FROM products
                   WHERE ProductName LIKE "%Sasquatch Ale%");
                
-- Question 4
SELECT FirstName, LastName
FROM employees
WHERE EmployeeID = (SELECT EmployeeID
					FROM orders
                    WHERE OrderID = 10266);

-- Question 5
SELECT CompanyName
FROM customers
WHERE CustomerID = (SELECT CustomerID
					FROM orders
                    WHERE OrderID = 10266);