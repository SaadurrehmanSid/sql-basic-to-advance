

select e.name ,e.city from Employee e join department d on e.dptId = d.id 

----left join-----
select e.name, city, d.name from Employee e 
left join department d  
on 
e.dptId =d.id

-------reight join-------


select e.name ,e.city ,d.name , d.HOD from Employee e right join department d on e.dptId = d.Id

---------full join--------

select e.name ,e.city ,d.name , d.HOD from Employee e full join department d on e.dptId = d.Id 

---------cross join----------


select e.name ,e.city ,d.name , d.HOD from Employee e cross join department d 


