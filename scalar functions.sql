alter function GPA(@TotalPoints float, @TotalHours float)
returns float
as
begin

Declare @gpa float

 set @gpa = @TotalPoints/@TotalPoints

 return @gpa

end




