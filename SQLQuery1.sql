select year, species_id, weight/1000 
from surveys
order by weight DESC;


select month,day, year, species_id, 
round(weight/1000, 2 )
from  surveys
where year=1999 order by species_id;

select sum(weight), avg(weight), min(weight)
from survey 

select count(*) from survey
group by year;

select year, species_id, avg(weight) 
from survey  group by year,species_id;

select  species_id,year,count(species_id) 
from survey group by year, species_Id
order by year DESC, count(species_id) DESC