


update  Employee set Dateof= Getdate() where id =4


select dateof,count(*) as total from employee  group by dateof

select dateof, CAST(dateof as nvarchar(20)) as convertedDate from employee


select dateof, convert(nvarchar,dateof) as convertedDate from employee



