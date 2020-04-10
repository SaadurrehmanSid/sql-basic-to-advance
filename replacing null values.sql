

select e.name as Employee, Isnull(m.name,'Super Manager') as Manager from  employee e
left join employee m on e.ManagerId = m.id

select e.name as employee , COALESCE(m.name,'Super user')  as manager from employee e left join employee m on e.ManagerId = m.Id


select e.name as employee , case when m.name is null then 'No manager' else m.name end as manager from employee e left join employee m on e.ManagerId = m.Id