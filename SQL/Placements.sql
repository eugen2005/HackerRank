select s.name from students s 
join packages p on p.id = s.id 
join friends f on f.id = s.id 
join packages p2 on p2.id = f.friend_id
where p2.salary > p.salary 
order by p2.salary;