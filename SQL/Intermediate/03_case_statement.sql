-- Its like If else here we created new aggregate column to show incremented salary

SELECT FirstName, JobTitle, Salary,
CASE 
    WHEN JobTitle = 'Salesman' THEN Salary = (Salary * .10)
    WHEN JobTitle = 'Engineer' THEN Salary = (Salary * .03)
    WHEN JobTitle = 'CEO' THEN Salary = (Salary * .007)
END AS IncrementedSalary
From Employeeinfo
    Join EmployeeSalary ON Employeeinfo.employeeID = EmployeeSalary.employeeID

Order by salary
