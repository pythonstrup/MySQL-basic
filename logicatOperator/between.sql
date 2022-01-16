
SELECT title, released_year FROM books
WHERE released_year >= 2004
AND released_year <= 2015;

# between으로 편리하게 하는 방법
SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2015;

SELECT title, released_year FROM books
WHERE released_year NOT BETWEEN 2004 AND 2015
ORDER BY released_year;


# CAST() 사용
SELECT CAST('2017-05-02' AS DATETIME);

SELECT name, birthdt FROM people
WHERE birthdt BETWEEN CAST('1980-01-01' AS DATETIME) 
				AND CAST('2000-01-01' AS DATETIME);