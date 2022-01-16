# IN
SELECT title, author_lname FROM books
WHERE author_lname='Carver' OR
      author_lname='Lahiri' OR
      author_lname='Smith';
      
# IN 으로 쉽게 하기!!
SELECT title, author_lname FROM books
WHERE author_lname IN("carver", "lahiri", "smith");

SELECT title, author_lname FROM books
WHERE released_year IN(2017, 1985);



# NOT IN
SELECT title, released_year FROM books
WHERE released_year NOT IN
(2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);

SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN
(2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);


# % 사용해서 홀수만 구하기
SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year % 2 = 1;











