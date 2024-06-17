use moviesdb;

with cte as 
(
select m.movie_id ,m.title, m.industry, m.release_year, f.budget, f.revenue, f.unit, f.revenue - budget as profit
from movies m
join financials f
on m.movie_id = f.movie_id
where industry = "Hollywood" and release_year > 2000
) 
select * from cte where profit > 500;


