CREATE TABLE inventory(
	item_name varchar(100),
    price DECIMAL(10, 2),
    qauntity INT
);
SELECT CURTIME();
SELECT CURDATE();

SELECT NOW();
SELECT DAY(NOW());
SELECT DAYOFWEEK(NOW());
SELECT DAYNAME(NOW());

SELECT DATE_FORMAT(NOW(), "%m/%d/%Y");
SELECT DATE_FORMAT("2020-01-02 03:15:00", "%b %D at %k:%i");
SELECT DATE_FORMAT("2020-04-01 10:18:00", "%M %D at %k:%i");
SELECT DATE_FORMAT(NOW(), "%M %D at %k:%i");

CREATE TABLE tweet(
	content VARCHAR(140),
    username VARCHAR(20),
    created_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);