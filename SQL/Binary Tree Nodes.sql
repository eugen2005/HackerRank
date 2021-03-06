select n, 
       case when p is null then 'Root' 
            when (select count(*) from bst where p = b.n) > 0 then 'Inner'
            else 'Leaf'
            end name
from bst b
order by 1;