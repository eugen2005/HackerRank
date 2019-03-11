select distinct city 
from station 
where substr(city,1,1) not in ('A','E','U','I','O') 
or substr(city,length(city)) not in ('a','e','u','i','o');