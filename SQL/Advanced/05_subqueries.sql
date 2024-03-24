-- query within query

-- select within select
Select employeeID, FirstName, LastName,(Select AVG(Salary) from EmployeeSalary) as allAvgSalary
from EmployeeSalary

-- same
Select employeeID, FirstName, LastName, AVG(Salary) over() as allAvgSalary
from EmployeeSalary

-- Group by doesnt work
Select employeeID, FirstName, LastName, AVG(Salary) as allAvgSalary
from EmployeeSalary
Group By employeeID, Salary
Order by 1,2
-- shows different avg salary as group by calculates the average salary for each individual employee.

-- subquery in From use instead CTE or temp table
Select * 
from (Select employeeID, FirstName, LastName, AVG(Salary) over() as allAvgSalary
from EmployeeSalary)

-- subquery in Where
Select employeeID, FirstName, LastName
from EmployeeSalary
Where employeeID in (Select employeeID from EmployeeInfo where age>30)
-- we cannot use multiple columns in where clause like from
-- here we can join table to check age from another database

-- it is not recommended to use correlated subqueries because they can cause performance issues and make your queries harder to understand. 