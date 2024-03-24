-- It allows you to perform calculations or aggregate functions separately within each partition, rather than across the entire result set.


Select FirstName, LastName, Gender, Salary, 
count(Gender) OVER (partition by (Gender)) as TotalGender -- here the count result will refelect to all rows with specific gender
Avg(Salary) OVer(partition by Gender) as Avg Salary  -- here avg is shown to each row depending on their gender
-- no  name        avg sal
-- 1  Shubham Male  2300
-- 2 Kunal Male     2300
-- 3 Pooja Female   4567
-- 4 Amruta Female  4567
From employeeID 
JOIN EmployeeSalary 
on Employeeinfo.employeeID = EmployeeSalary.employeeID

-- Returns output to each row