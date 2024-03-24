-- CTE (Comman Table Expression) is scoped to query and does not get stored
-- CTE is used for  reusability of common expressions or subqueries 

WITH CTE_Employee AS 
( 
    SELECT employeeID, FirstName, LastName, Gender, Salary
    count(Gender) OVER(partition by Gender) as TotalGender 
    Avg(Salary) OVer(partition by Gender) as Avg Salary
    From employeeID JOIN EmployeeSalary on Employeeinfo.employeeID = EmployeeSalary.employeeID
)

Select * FROM CTE_Employee
Select FirstName from CTE_Employee  -- This will not work as it applies to query just below