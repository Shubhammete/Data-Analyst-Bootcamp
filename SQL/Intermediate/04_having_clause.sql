Select JobTitle, count(JobTitle)
From Employeeinfo
join EmployeeSalary on Employeeinfo.employeeID = EmployeeSalary.employeeID
Group by JobTitle
having count(JobTitle) > 1

-- Here we use having clause to filter according to condition 
-- we cannot use where as it is aggregate columns and real one from table
-- we use having below group by as it is dependent on it