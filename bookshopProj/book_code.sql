set sql_mode='';

SELECT CONCAT(
	SUBSTR(title, 1, 10),
    '...'
	) AS 'short title'
FROM books;


SELECT SUBSTR(
	REPLACE(title, 'e', 3),
    1, 10
) AS 'weird string'
FROM books;


SELECT CONCAT(
	author_fname, REVERSE(author_fname)
    ) AS 'reverse name' 
FROM books;


SELECT CONCAT(
	author_lname, " is ", CHAR_LENGTH(author_lname), " characters long"
) AS 'last name' 
FROM books;


SELECT CONCAT(
	"MY FAVORITE BOOK IS THE ",
    UPPER(title)
    ) AS 'favorite book'
FROM books;