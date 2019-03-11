select case when marks >= 70 then name else null end name, grade, marks  
from students 
join grades on grades.min_mark <= students.marks and grades.max_mark >= students.marks 
order by grade desc, name;