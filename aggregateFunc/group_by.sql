# 유용하지 못함...
SELECT title, author_lname FROM books
GROUP BY author_lname;

# 이렇게 사용 권장 group by 는 count() 와 함께 쓰자.
SELECT author_lname, COUNT(*)
FROM books GROUP BY author_lname;


SELECT author_fname, author_lname, COUNT(*)
FROM books GROUP BY author_lname, author_fname;


SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT CONCAT(
	"In ", released_year, " ", COUNT(*), " book(s) released"
    ) AS year
 FROM books GROUP BY released_year;