# 01
SELECT title, rating
FROM series
JOIN reviews
	ON series.id = series_id;
    
# 02
SELECT title,
	avg(rating) AS avg_rating
FROM series
JOIN reviews
	ON series.id = series_id
GROUP BY series.id
ORDER BY avg_rating;
    
    
# 03
SELECT first_name, last_name, rating
FROM reviewers
JOIN reviews
	ON reviewers.id = reviewer_id;

 
# 04 내가 푼 풀이 _ 약간 오답
SELECT 
	DISTINCT CASE
		WHEN rating IS NULL THEN title
    END AS unreviewed_series
FROM series
LEFT JOIN reviews
	ON series.id = series_id;
    
# 04 모범답안
SELECT 
	title
FROM series
LEFT JOIN reviews
	ON series.id = series_id
WHERE rating IS NULL;
    
    
# 05
select genre,
	round(avg(rating), 2) as avg_rating
from series
join reviews
	on series.id = series_id
group by genre;


# 06
select first_name, last_name,
	ifnull(count(rating), 0) as count,
    ifnull(min(rating), 0) as MIN,
    ifnull(max(rating), 0) as MAX,
    round(
		ifnull(avg(rating), 0)
	, 2) as AVG,
    case
		when count(rating) >= 10 then "Power User"
		when rating is null then "INACTIVE"
        else 'ACTIVE'
    end as status
from reviewers
left join reviews
	on reviewers.id = reviewer_id
group by reviewers.id;

# 07
select title, rating, 
	concat(first_name, " ", last_name) as reviewer
from series
join reviews
	on series.id = series_id
join reviewers
	on reviewers.id = reviewer_id
order by title;















    