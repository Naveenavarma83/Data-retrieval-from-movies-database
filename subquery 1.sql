use moviesdb;
select * 
from movies
where imdb_rating = (select max(imdb_rating) from movies);

select * from movies 
where imdb_rating in ((select min(imdb_rating) from movies),(select max(imdb_rating) from movies));

select * from actors;


select * from
(SELECT 
name,  
YEAR(CURRENT_DATE) - birth_year AS age 
FROM actors) as actors_age
where age > 70 and age < 85;