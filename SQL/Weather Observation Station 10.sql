select distinct city 
from station 
where substr(city,length(city)) not in ('a','e','u','i','o');