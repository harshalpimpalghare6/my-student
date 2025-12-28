use mystudents;
select*from courses;
select*from students;
select s.name, c.course_name
from students s
inner join courses c on s.course_id=c.course_id;
select s.name as student, c.course_name as course, c.faculty as faculty
from students s
inner join courses c on s.course_id=c.course_id;
select s.name, c.course_name
from students s
join courses c on s.course_id=c.course_id
where s.gender='male';
select s.name
from students s
join courses c on s.course_id=c.course_id
where c.course_name='python';
select c.course_name,count(s.student_id) as totalstudents
from students s
join courses c on s.course_id=c.course_id
group by c.course_name;
select c.course_name,count(*) as total
from students s
join courses c on s.course_id=c.course_id
group by c.course_name
having count(*)>3;
select s.name
from students s
join courses c on s.course_id=c.course_id
where c.course_name='ai';
select s.name, c.course_name
from students s
left join courses c on s.course_id=c.course_id;
select s.name
from students s
left join courses c on s.course_id=c.course_id
where c.course_id is null;
select s.name, ifnull(c.course_name,'not assigned')as course
from students s
left join courses c on s.course_id=c.course_id;
select count(*) as unassignedstudents
from students s
left join courses c on s.course_id=c.course_id
where c.course_id is null;
select s.name, c.course_name
from students s
right join courses c on s.course_id=c.course_id;
select c.course_name
from students s
right join courses c on s.course_id=c.course_id
where s.student_id is null;
select c.faculty,count(s.student_id) as totalstudents
from students s
join courses c on s.course_id=c.course_id
group by c.faculty;
select c.faculty,count(s.student_id) as totalstudents
from students s
join courses c on s.course_id=c.course_id
group by c.faculty
having count(s.student_id)>4;
select c.course_name,s.gender,count(*)as total
from students s
join courses c on s.course_id=c.course_id
group by c.course_name,s.gender;
select s.name, c.course_name
from students s
join courses c on s.course_id=c.course_id
order by c.course_name;
select s.name, c.course_name
from students s
join courses c on s.course_id=c.course_id
where c.faculty='aparna bhajbhuje';
select c.course_name,s.gender,count(*) as total
from students s
join courses c on s.course_id=c.course_id
group by c.course_name,s.gender
order by c.course_name,s.gender;
select s.name, c.course_name
from students s
join courses c on s.course_id=c.course_id
where c.course_id in (103,104);



