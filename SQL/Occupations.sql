select doctor, professor, singer, actor 
from (
select * from
(
select name, occupation, row_number() over(partition by occupation order by name) n 
from occupations
)
pivot
(
min(name) for occupation in ('Doctor' as Doctor, 'Professor' as Professor, 'Singer' as singer, 'Actor' as actor)
)
order by n);