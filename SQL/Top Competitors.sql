select h.hacker_id, h.name 
from hackers h 
join submissions s on s.hacker_id = h.hacker_id 
join challenges c on c.challenge_id = s.challenge_id 
where s.score = (select score from difficulty where difficulty_level = c.difficulty_level)
group by h.hacker_id, h.name
having count(h.hacker_id) > 1 
order by count(s.challenge_id) desc, h.hacker_id asc;