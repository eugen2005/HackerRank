with tmp_table as (
  select id, age, w.code, coins_needed, power, is_evil 
  from wands w 
  join wands_property p on p.code = w.code
)
select id, age, coins_needed, power 
from tmp_table t 
where is_evil = 0 
and coins_needed = (select min(coins_needed) from tmp_table where power = t.power and age = t.age) 
order by power desc, age desc;