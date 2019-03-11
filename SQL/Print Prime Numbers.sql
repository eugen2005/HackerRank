select listagg(L1,'&') within group(order by L1) prime_numbers from
(select level L1 from dual connect by level <= 1000 
minus
select distinct L1
from (select level L1 from dual connect by level <= 1000) a
join (select level L2 from dual connect by level <= 1000) b on a.L1 > b.L2
where L1 != 1 and L2 != 1 and mod(L1,L2) = 0)
where L1 != 1;