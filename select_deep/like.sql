SELECT title, author_fname FROM books WHERE author_fname LIKE "%da%";

# 위와의 차이 wildcard(와일드카드 %)
SELECT title, author_fname FROM books WHERE author_fname LIKE "da%";

SELECT title FROM books WHERE title LIKE "the";
SELECT title FROM books WHERE title LIKE "%the";
SELECT title FROM books WHERE title LIKE "the%";
SELECT title FROM books WHERE title LIKE "%the%";

SELECT title, stock_quantity FROM books WHERE stock_quantity Like "%";

# 와일드카드 '____' 밑줄4개(underscore)
SELECT title, stock_quantity FROM books WHERE stock_quantity Like "____";

# 밑줄 2개
SELECT title, stock_quantity FROM books WHERE stock_quantity Like "__";

# 미국 전화번호 양식: (235)234-0986 
# 찾는 방법: LIKE "(___)___-_____"

# %의 좌우를 찾아내는법
SELECT title FROM books WHERE title LIKE "%\%%";

# _의 좌우를 찾아내는법
SELECT title FROM books WHERE title LIKE "%\_%";