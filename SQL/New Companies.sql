select c.company_code, c.founder, count(distinct lm.lead_manager_code), count(distinct sm.senior_manager_code), count(distinct m.manager_code), count(distinct e.employee_code)     
from company c 
left join lead_manager lm on lm.company_code = c.company_code 
left join senior_manager sm on sm.company_code = c.company_code 
left join manager m on m.company_code = c.company_code 
left join employee e on e.company_code = c.company_code 
group by c.company_code, c.founder
order by 1;