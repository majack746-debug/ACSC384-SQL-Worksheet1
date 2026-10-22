SELECT *
FROM Customers
WHERE country = 'USA';
SELECT Orders.*, Customers.first_name, Customers.last_name
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id;
SELECT Customers.first_name, Customers.last_name, SUM(Orders.amount) AS total
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
GROUP BY Customers.customer_id, Customers.first_name, Customers.last_name;
SELECT Orders.*, Customers.first_name
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
JOIN Shippings ON Customers.customer_id = Shippings.customer
WHERE Shippings.status = 'Pending';
SELECT country, AVG(age) AS average_age
FROM Customers
GROUP BY country;
SELECT DISTINCT Customers.*
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id;
SELECT Customers.first_name, Customers.last_name, Orders.amount
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
ORDER BY Orders.amount DESC
LIMIT 1;
SELECT Orders.*, Customers.first_name, Customers.last_name
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
JOIN Shippings ON Customers.customer_id = Shippings.customer
WHERE Shippings.status = 'Delivered';
SELECT Shippings.status, COUNT(Orders.order_id) AS total
FROM Shippings
JOIN Orders ON Shippings.customer = Orders.customer_id
WHERE Shippings.status IN ('Pending', 'Delivered')
GROUP BY Shippings.status;
SELECT Customers.*
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
WHERE Orders.order_id IS NULL;
