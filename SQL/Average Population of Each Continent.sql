select COUNTRY.Continent, floor(avg(CITY.Population)) 
from city 
join country on country.code = city.countrycode 
group by COUNTRY.Continent;