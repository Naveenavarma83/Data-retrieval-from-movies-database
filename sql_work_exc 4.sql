SELECT * FROM movies;

select count(title)  from movies 
where release_year between 2015 and 2022 ;

select max(release_year) as latest, min(release_year) as oldest from movies;


select release_year, count(title) as movies_count from movies group by release_year order by release_year desc; 
