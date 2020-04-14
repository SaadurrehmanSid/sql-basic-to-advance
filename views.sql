
select * from employee 


select * from department

create view vwGeneralEmployeeInfo as
select e.name, gender ,city, d.name as Dpt from employee e join department d on e.dptId = d.Id

select * from vwGeneralEmployeeInfo

create view vWDptHead
as
select e.name ,gender ,d.name as dept ,hod from employee e join department d on e.dptId = d.Id

select * from vWDptHead