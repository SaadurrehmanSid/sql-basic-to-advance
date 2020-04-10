select * from Employee

alter table employee add ManagerId int null


update Employee 
set [ManagerId] =2 where Id =3


select e.name ,e.gender ,e.salary ,  m.name from Employee e inner join Employee m on e.ManagerId = m.Id


select e.name ,e.gender ,e.salary ,  m.name from Employee e left join Employee m on e.ManagerId = m.Id


select e.name ,e.gender ,e.salary ,  m.name from Employee e right join Employee m on e.ManagerId = m.Id


select e.name ,e.gender ,e.salary ,  m.name from Employee e full join Employee m on e.ManagerId = m.Id


select e.name ,e.gender ,e.salary ,  m.name from Employee e cross join Employee m 
 