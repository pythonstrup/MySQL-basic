SELECT title, released_year FROM books;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0, 5;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 2, 7;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 10, 1;

# 끝가지 검색하려면....
SELECT * FROM tbl LIMIT 95,18446744073709551615;

SELECT title FROM books LIMIT 5, 123219476457;