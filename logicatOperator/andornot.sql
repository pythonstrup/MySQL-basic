# AND &&
SELECT title, author_lname, released_year FROM books
WHERE author_lname="eggers";

SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010;

SELECT title, author_lname, released_year FROM books
WHERE author_lname="eggers" AND released_year > 2010;

SELECT title, author_lname, released_year FROM books
WHERE author_lname="eggers" 
AND released_year > 2010
AND title LIKE "%novel%";

SELECT 1 < 5 AND 7 = 9;
SELECT -5 < -2 AND 9 < 10;
SELECT 54 <= 54 AND 'A' = 'a';



# OR ||
SELECT title, author_lname, released_year FROM books
WHERE author_lname="eggers" OR released_year > 2010;

SELECT title, author_lname, released_year, stock_quantity FROM books
WHERE author_lname="eggers" 
OR released_year > 2010
OR stock_quantity > 100;

SELECT 40 <= 100 OR -2 > 0;
SELECT 'A' = 5 OR 3000 > 2000;










