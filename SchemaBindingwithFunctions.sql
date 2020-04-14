create function tblEploye(@Id int)
returns varchar(25)
with schemaBinding
as
begin
return (select name from dbo.employee where id = @Id)
end

drop table employee


select dbo.tblEploye(5)