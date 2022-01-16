
# 01
SELECT * FROM books
WHERE released_year < 1980;

#02
SELECT * FROM books
WHERE author_lname="eggers"
OR author_lname="chabon";

#03
SELECT * FROM books
WHERE author_lname="Lahiri"
AND released_year >= 2000;

#04
SELECT * FROM books
WHERE pages BETWEEN 100 AND 200;

#05
SELECT * FROM books
WHERE author_lname LIKE "C%"
OR author_lname LIKE "S%";

#05 - 내가 생각하지 못했던 풀이
SELECT * FROM books
WHERE SUBSTR(author_lname, 1, 1)="C"
OR SUBSTR(author_lname, 1, 1)="S";

#06
SELECT title, author_lname, 
	CASE
		WHEN title LIKE "%Stories%" THEN "Short Stories"
        WHEN title="Just kids" OR title="A Heartbreaking Work of Staggering Genius" THEN "Memoir"
        ELSE "Novel"
    END AS TYPE
FROM books;

# Bonus 
SELECT title, author_lname, 
	CASE
		WHEN COUNT(title) = 1 THEN "1 book"
        ELSE CONCAT(COUNT(title), " books")
	END AS COUNT
FROM books
GROUP BY author_lname, author_fname;



