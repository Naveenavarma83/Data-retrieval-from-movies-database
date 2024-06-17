use moviesdb;

select actor_id,movie_id,name
from movie_actor
join actors using(actor_id)
where movie_id in (101,110,121);

select * from actors where actor_id = ANY(
select actor_id from movie_actor
where movie_id in (101,110,121));

select * from movies where imdb_rating = ANY (
select imdb_rating from movies 
where studio = "Marvel Studios") and studio <> "Marvel Studios";

select * from movies where imdb_rating = ANY (
select imdb_rating from movies 
where studio = "Marvel Studios") and studio <> "Marvel Studios";

select * from movies where imdb_rating > ANY (
select min(imdb_rating) from movies 
where studio = "Marvel Studios") and studio <> "Marvel Studios";

select * from movies where imdb_rating > (
select max(imdb_rating) from movies 
where studio = "Marvel Studios");
