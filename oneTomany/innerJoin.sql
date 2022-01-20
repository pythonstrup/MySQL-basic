# Implicit Inner Join
SELECT * FROM customers, orders 
WHERE customers.id=customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers, orders 
WHERE customers.id=customer_id;

# same above
# Explicit Inner Join
SELECT * FROM customers
JOIN orders
ON customers.id = orders.customer_id;

SELECT * FROM orders
JOIN customers
ON customers.id = orders.customer_id;

#####
SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM orders
JOIN customers
ON customers.id = orders.customer_id;


# 이렇게 하지 마세요.... 데이터베이스의 의미가 사라진다..
# Arbitrary Join
SELECT * FROM customers
JOIN orders ON customers.id = orders.id;