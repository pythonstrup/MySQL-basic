USE myvelopdb;

-- CREATE TABLE selling(
-- 	sequence INT AUTO_INCREMENT PRIMARY KEY,
-- 	product VARCHAR(20),
-- 	price INT,
-- 	customer VARCHAR(20),
-- 	numOfSales INT
-- );

-- INSERT INTO selling(product, price, customer, numOfSales)
-- VALUES("연필", 500, "짱구", 5),
-- ("필통", 3000, "짱구", 1),
-- ("과자", 1500, "짱구", 2),
-- ("과자", 1500, "민아", 1),
-- ("과자", 1500, "철수", 3),
-- ("연필", 500, "철수", 7),
-- ("가방", 15000, "민수", 1);

-- SELECT * FROM selling; 

-- SELECT DISTINCT product, price
-- FROM selling;

-- SELECT DISTINCT customer, COUNT(*) AS "구매건수"
-- FROM selling
-- GROUP BY customer;


SELECT DISTINCT customer, SUM(price) AS "총 결제금액"
FROM selling
GROUP BY customer;





