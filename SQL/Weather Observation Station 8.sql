select distinct city 
from station 
where substr(city,1,1) in ('A','E','I','O','U') 
and substr(city,length(city)) in ('a','e','i','o','u');