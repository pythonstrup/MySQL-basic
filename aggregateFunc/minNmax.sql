SELECT MIN(released_year)FROM books;
SELECT MIN(pages) FROM books;

SELECT MAX(pages) FROM books;
SELECT MAX(released_year) FROM books;

# 문제 발생... 페이지수와 다른 제목의 책이 나와버림.. 그냥 첫 번째 책을 출력해줌..
SELECT MAX(pages), title FROM books;
# 확인
SELECT title, pages FROM books;


SELECT MAX(pages) FROM books;

SELECT * FROM books WHERE pages=634;

SELECT title, pages FROM books WHERE pages=(SELECT MAX(pages) FROM books);
SELECT title, pages FROM books WHERE pages=(SELECT MIN(pages) FROM books);

SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

SELECT title, pages FROM books
ORDER BY pages ASC LIMIT 1;


SELECT author_fname, author_lname, MIN(released_year) 
FROM books
GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname, MAX(pages) 
FROM books
GROUP BY author_lname, author_fname;

SELECT
	CONCAT(author_fname, " ", author_lname) AS author,
	MAX(pages) AS "longest book"
FROM books
GROUP BY author_lname, author_fname;

