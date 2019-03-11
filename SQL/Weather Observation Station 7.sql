select distinct city 
from station 
where substr(city,length(city)) in ('a','e','i','o','u');