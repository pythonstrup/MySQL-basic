SELECT REPLACE('Hello World', 'Hell', '%$#@');
SELECT REPLACE('Hello World', 'l', '7');
SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');
SELECT REPLACE(title, 'e ', '3') FROM books;

SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10)
FROM books;