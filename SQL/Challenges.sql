with tmp_table as (
select h.hacker_id, h.name, count(challenge_id) cnt
from hackers h 
join challenges c on c.hacker_id = h.hacker_id 
group by h.hacker_id, h.name 
)
select hacker_id, name, cnt 
from tmp_table 
where cnt not in (
  select cnt 
  from tmp_table 
  where cnt < (select max(cnt) from tmp_table) 
  group by cnt 
  having count(cnt) > 1
) 
order by cnt desc, hacker_id asc;