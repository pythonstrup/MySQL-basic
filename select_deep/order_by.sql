SELECT author_lname FROM books ORDER BY author_lname;

SELECT title FROM books ORDER BY title;

SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT released_year FROM books ORDER BY released_year DESC;
 
SELECT released_year FROM books ORDER BY released_year ASC;

SELECT title, pages FROM books ORDER BY released_year;

SELECT title, author_fname, author_lname 
FROM books ORDER BY 2;

SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;