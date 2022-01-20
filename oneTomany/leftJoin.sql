## Inner Join - more desirable
SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id
ORDER BY amount;

SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY orders.customer_id;


SELECT first_name, last_name, order_date, 
	SUM(amount) AS total_spent
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;


## LEFT JOIN  ##
SELECT * FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;


SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;


SELECT first_name, last_name, order_date, 
	IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;




















