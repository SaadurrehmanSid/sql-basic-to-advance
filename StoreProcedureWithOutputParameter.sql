
create proc spEmployeeCounnt 
@Gender varchar(15),
@EmployeeCount int output
as 
begin
select @EmployeeCount = COUNT(*) from Employee where gender =@Gender
end

declare @TotalEmployees int ;
exec spEmployeeCounnt 'female', @TotalEmployees out
print @TotalEmployees


