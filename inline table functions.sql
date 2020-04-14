

create function fn_AllEmployees(@gender varchar(10))
returns table 
as
 return (select * from employee where gender = @gender)

  
  --create function functionName(function parameters)
  --returns table 
  --as

  --return (select condition)