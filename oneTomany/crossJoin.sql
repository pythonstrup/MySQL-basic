
SELECT * FROM customers WHERE last_name="George";

SELECT * FROM orders WHERE customer_id=1;

# Cross Join
SELECT * FROM orders WHERE customer_id = (
     SELECT id FROM customers
	 WHERE last_name="George"
);
# ==>  SELECT * FROM orders WHERE customer_id = 1 과 같다.

SELECT * FROM customers, orders;

