-- created table Employeeinfo and EmployeeSalary with following fields and data types
CREATE TABLE Employeeinfo(
employeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

CREATE TABLE EmployeeSalary(
employeeID int,
JobTitle varchar(50),
Salary int
)

-- insert data into table fields
INSERT INTO Employeeinfo VALUES
(1001,'John','Doe',48,'Male'),
(1002,'Kat','Pax',18,'Female'),
(1003,'Perry','Flat',20,'Female'),
(1004,'Shai','Sane',30,'Male'),
(1005,'Albert','Watson',28,'Male'),
(1006,'Ricky','Hales',36,'Male')
