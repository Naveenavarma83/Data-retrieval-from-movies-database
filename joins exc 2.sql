SELECT * FROM moviesdb.financials;

select m.title, budget,revenue,unit,currency
from movies m
inner join financials f
on m.movie_id = f.movie_id;

select m.title,budget,revenue,unit,currency
from movies m
left join financials f
on m.movie_id = f.movie_id;

select m.title,budget,revenue,unit,currency
from movies m 
right join financials f 
on m.movie_id = f.movie_id;

select m.title,budget,revenue,unit,currency
from movies m
left join financials f
on m.movie_id = f.movie_id
union
select m.title,budget,revenue,unit,currency
from movies m 
right join financials f 
on m.movie_id = f.movie_id;

select m.movie_id,title,revenue
from movies m 
left join financials f 
on m.movie_id = f.movie_id;

select m.movie_id,title,revenue
from financials f 
left join movies m 
on m.movie_id = f.movie_id;

