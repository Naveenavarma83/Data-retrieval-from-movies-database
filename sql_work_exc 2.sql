SELECT * FROM moviesdb.movies;

select title, release_year from movies where studio = "marvel studios";

select count(title) from movies where title like '%Avenger%';

select release_year from movies where title = "The Godfather";

select distinct studio from movies where industry = "Bollywood";