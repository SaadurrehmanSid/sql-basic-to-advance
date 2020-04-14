
----indexes in sql server------------

create Index IX_Employee_salary
on employee (salary asc)

sp_helpindex  'Employee'

drop index employee.IX_Employee_salary

