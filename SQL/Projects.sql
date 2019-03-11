select start_date, end_date 
from 
(select start_date, rank() over(order by start_date) N from projects where start_date not in (select end_date from projects)) sd 
join (select end_date, rank() over(order by end_date) N from projects where end_date not in (select start_date from projects)) ed on sd.N = ed.N 
order by (end_date - start_date), start_date;