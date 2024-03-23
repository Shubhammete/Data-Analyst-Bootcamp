Select JobTitle, count(JobTitle)
From Employeeinfo
join EmployeeSalary on Employeeinfo.employeeID = EmployeeSalary.employeeID
Group by JobTitle
having count(JobTitle) > 1

-- Here we use having clause to filter according to condition 
-- we cannot use where as it is aggregate columns