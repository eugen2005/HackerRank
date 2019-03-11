select h.hacker_id, name, sum(score) score 
from hackers h 
join (select hacker_id, challenge_id, max(score) score 
from submissions 
group by hacker_id, challenge_id) s on s.hacker_id = h.hacker_id 
group by h.hacker_id, name 
having sum(score) > 0
order by 3 desc, 1;