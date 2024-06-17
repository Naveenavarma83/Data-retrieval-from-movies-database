
getting a table where profit percent id  > 500% and less than the average rating.

select 
x.movie_id, x.pct_profit,
y.title, y.imdb_rating
from (
select *, (revenue - budget)*100/budget as pct_profit from financials
) as x
join (
select * from movies where imdb_rating < (
select avg(imdb_rating) from movies)) as y
on x.movie_id = y.movie_id
where pct_profit > 500;

USING CTE

with 
x as ( select * , (revenue - budget)*100/budget as pct_profit from financials),
y as ( select * from movies where imdb_rating < (select avg(imdb_rating) from movies))
select
     x.movie_id, x.pct_profit,
	y.title, y.imdb_rating
    from x
    join y 
    on x.movie_id = y.movie_id
    where pct_profit > 500;
     