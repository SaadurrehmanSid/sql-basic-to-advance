

create function mstvf_getEmployeesDetails()
returns @Table Table (Id int,name varchar(25),salary int) 
as
begin
      insert into  @Table
	  select Id ,name ,salary from employee where dptId =3 
return 
end


select * from mstvf_getEmployeesDetails()


create function  mstvf_GetDepartments()
returns @Table Table (Id int,name varchar(20))
as
begin

insert into @Table 
select id,name from department

return 
end

select * from mstvf_GetDepartments()