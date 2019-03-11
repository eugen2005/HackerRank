select sum(city.population) from CITY 
join COUNTRY on COUNTRY.Code = CITY.CountryCode 
where CONTINENT = 'Asia';