select city, length(city) from (
select min(city) city from station where length(city) = (select min(length(city)) from station) 
union 
select max(city) city from station where length(city) = (select max(length(city)) from station)
);