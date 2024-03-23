-- Aliasing is giving name to aggregrated column or normal column to represent it

SELECT FirstName + ' ' + LastName as fullName
From Employeeinfo

Select employeeID as EMPID
From employeeID as EMPTABLE

-- OR you can directly do that

Select employeeID EMPID
From employeeID m 