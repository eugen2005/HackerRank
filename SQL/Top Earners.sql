select months * salary as earnings, count(*) count 
from employee 
where (months * salary) = (select max(months * salary) from employee) 
group by months * salary;    