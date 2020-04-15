

alter view vwEmployeDetail 
with schemabinding
as
select e.name ,salary, d.name as Department from dbo.employee e join dbo.department d on e.dptId = d.id

select * from vwEmployeDetail 

create unique clustered index  ix_vwEmployeDetail_salary on vwEmployeDetail(salary)

sp_helpindex  vwEmployeDetail 