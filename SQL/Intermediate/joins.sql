-- Inner join which is default join
-- joins two table common fields present
SELECT * FROM Employeeinfo
INNER JOIN EmployeeSalary  -- JOIN EmployeeSalary
ON Employeeinfo.employeeID = EmployeeSalary.employeeID

-- Full outer join 
-- shows all rows if not present in another table fills NULL 
SELECT * FROM Employeeinfo
Full OUTER JOIN EmployeeSalary
ON Employeeinfo.employeeID = EmployeeSalary.employeeID

-- Left outer join
-- shows all the rows and columns present in first table and NUll if not in second table

SELECT * FROM Employeeinfo
left OUTER JOIN EmployeeSalary
ON Employeeinfo.employeeID = EmployeeSalary.employeeID


-- right outer join
-- shows all the rows and columns present in second table and NUll if not in first table

SELECT * FROM Employeeinfo
right OUTER JOIN EmployeeSalary
ON Employeeinfo.employeeID = EmployeeSalary.employeeID

-- If the both table has same column then explicity add from which field to select
SELECT Employeeinfo.employeeID, FirstName, LastName,Salary
FROM Employeeinfo
LEFT OUTER JOIN EmployeeSalary
ON Employeeinfo.employeeID = EmployeeSalary.employeeID