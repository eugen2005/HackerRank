select distinct f1.x, f1.y from
(select x, y, row_number() over(partition by x, y order by x) cnt from functions) f1 
join functions f2 on f2.x = f1.y and f2.y = f1.x and (f1.x <> f1.y or f1.cnt > 1) 
where f1.x <= f1.y 
order by f1.x;