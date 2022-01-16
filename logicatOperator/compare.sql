# Greater Than
SELECT * FROM books
WHERE released_year > 2000;

SELECT * FROM books
WHERE released_year > 2001
ORDER BY released_year;

SELECT * FROM books
WHERE released_year >= 2001
ORDER BY released_year;

SELECT title, stock_quantity FROM books
WHERE stock_quantity >= 100;

SELECT 99 > 1;   # True = 1
SELECT 1 > 99;   # False = 0
SELECT 1 > 1;
SELECT 'b' > 'a';
SELECT 'A' > 'a';
SELECT 'A' = 'a';  # True

SELECT title, author_lname FROM books WHERE author_lname = "eggers";


# Less Than
SELECT title, released_year FROM books
WHERE released_year < 2000
ORDER BY released_year;

SELECT 3 < -10;
SELECT 42 <= 42;
SELECT 'Q' <= 'q';
SELECT 'h' < 'p';















