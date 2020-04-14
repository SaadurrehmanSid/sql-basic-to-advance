

--------local temp table-----
create table #Employee(Id int , name varchar(20))

select * from #Employee

insert into #Employee values(1,'saad ur rehman')


-------Globl temp table ----------

create table ##GlobalTempTable(Id int,name varchar(20))

insert into ##GlobalTempTable values(1,'sami ur rehman')

select * from ##GlobalTempTable


