
# Inner Join
SELECT * FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id;

# Right Join
# 일대다 관계라서 RIGHT JOIN이 의미가 없는 예시
# 외래키 제약이 있기 때문에... NULL이 생기지 않는다.
SELECT * FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id;



SELECT first_name, last_name, order_date, amount
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
ORDER BY first_name;

SELECT first_name, last_name, order_date, SUM(amount)
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
GROUP BY customer_id;


# On Delete Cascade
# 원래 외래키 제약으로 인해 orders의 내용을 먼저 삭제하지 않으면
# 겹치는 customers의 정보를 삭제할 수가 없었다.
# CASCADE를 사용하면 삭제를 customers의 정보를 자유롭게 할 수 있다.(대신 연관된 orders 정보도 삭제됨)
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) 
        REFERENCES customers(id)
        ON DELETE CASCADE
);



####
SELECT * FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id;

SELECT * FROM orders
RIGHT JOIN customers
ON customers.id = orders.customer_id;

SELECT * FROM orders
LEFT JOIN customers
ON customers.id = orders.customer_id;

SELECT * FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;










