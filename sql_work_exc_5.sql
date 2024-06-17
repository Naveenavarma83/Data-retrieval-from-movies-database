use moviesdb;

SELECT * FROM financials;

select distinct unit from financials;

select *, profit_in_million,
case
when currency = 'USD' then profit_in_million * 83
else profit_in_million
end as profit_in_million_rupees
from 
(
select
case 
when unit = 'billions' then (revenue - budget) *1000
when unit = 'thousands' then (revenue - budget) /1000
else (revenue - budget)
end as profit_in_million,
currency
from financials
) as subquery;