
select e.name , gender , salary , d.name ,hod from Employee e full join department d on e.dptId = d.id
where e.dptId is null or d.Id is null

select  e.name , gender , salary , d.name ,hod from Employee e left join department d on e.dptId = d.Id where e.dptId is null


select  e.name , gender , salary , d.name ,hod from Employee e right join department d on e.dptId = d.Id where e.dptId is null