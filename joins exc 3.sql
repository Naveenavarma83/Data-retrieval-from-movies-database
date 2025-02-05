use moviesdb;

select title, group_concat( a.name separator " | ") as actors
from movies m 
join movie_actor ma on ma.movie_id = m.movie_id
join actors a on a.actor_id = ma.actor_id
group by m.movie_id;

select
a.name, group_concat(m.title separator " | ") as movies,
count(m.title) as movie_count
from actors a
join movie_actor ma on ma.actor_id = a.actor_id
join movies m on m.movie_id = ma.movie_id
group by a.actor_id
order by movie_count desc;



