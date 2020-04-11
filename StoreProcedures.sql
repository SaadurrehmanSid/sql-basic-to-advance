select * from Employee

create proc spGetEmployees
As
Begin
select * from Employee
end


alter proc spGetEmployees 
as
begin
select name,gender,salary, isnull(dptId,0) from employee
end


create proc spGetEmployeesByGenderAndDepartmentID
@Gender varchar(20),
@DptId int

AS
begin

select name ,gender, salary from employee where gender = @Gender and dptId = @DptId

end


spGetEmployeesByGenderAndDepartmentID 'male',3


create proc spGetEmpByCity
@City varchar(25)
As
begin
select * from employee where city = @City
end


spGetEmpByCity 'daska'