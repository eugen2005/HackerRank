select city.name from city 
join COUNTRY on COUNTRY.Code = CITY.CountryCode 
where CONTINENT = 'Africa';