-- It allows you to perform calculations or aggregate functions separately within each partition, rather than across the entire result set.


Select FirstName, LastName, Gender, Salary, count(Gender) OVER (partition by (Gender)) as TotalGender
From employeeID JOIN EmployeeSalary on Employeeinfo.employeeID = EmployeeSalary.employeeID

-- Returns output to each row