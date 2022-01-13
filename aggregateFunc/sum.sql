SELECT SUM(pages) FROM books;

SELECT SUM(released_year) FROM books;

SELECT author_fname, author_fname, SUM(pages)
FROM books
GROUP BY author_lname, author_fname;