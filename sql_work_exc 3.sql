use moviesdb;


select * from movies 
order by release_year desc;

select title from movies where release_year = 2022;

select title from movies where release_year > 2020;

select title from movies where release_year > 2020 and imdb_rating > 8;

select title from movies where studio = "marvel studios" or "hombale films";

select title, release_year from movies where title like '%thor%';

select title from movies where studio <> "marvel studios";