SELECT name, birthdate FROM people;

SELECT name, birthdate, DAY(birthdate) FROM people;
SELECT name, birthdate, DAYNAME(birthdate) FROM people;
SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;


SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;
SELECT name, birthdt, MONTH(birthdt) FROM people;
SELECT name, birthdt, MONTHNAME(birthdt) FROM people;
SELECT name, birthdt, HOUR(birthdt) FROM people;
SELECT name, birthdt, MINUTE(birthdt) FROM people;

SELECT CONCAT(MONTHNAME(birthdate), " ", DAY(birthdate), " ", YEAR(birthdate))
FROM people;

SELECT DATE_FORMAT(birthdt, "%W-%M-%Y")
FROM people;

SELECT DATE_FORMAT(birthdt, "was Born on A %W")
FROM people;

SELECT DATE_FORMAT(birthdt, "%m/%d/%Y")
FROM people;

SELECT DATE_FORMAT(birthdt, "%m/%d/%Y at %h:%i")
FROM people;

SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;

SELECT birthdt, birthdt + INTERVAL 3 MONTH FROM people;
SELECT birthdt, birthdt - INTERVAL 3 MONTH FROM people;
SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;




