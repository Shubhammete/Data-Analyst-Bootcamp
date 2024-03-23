-- Where statements --> <>, <, >, =, AND, OR, Like, null, not null, in

-- <> means not equal to here show all columns that are not equal to John btw case does not matter it can John or john
SELECT * FROM employeeinfo WHERE FirstName <> 'John'

-- here < is operator selects age less than 30
SELECT * FROM employeeinfo WHERE Age < 30

-- here >= is operator selects age more than or equal to 30
SELECT * FROM employeeinfo WHERE Age >= 30

-- here AND checks if both conditions are true or not
SELECT * FROM employeeinfo WHERE Age < 30 AND Gender = 'Female'

-- here OR checks if one of the conditions are true 
SELECT * FROM employeeinfo WHERE Age < 30 OR Gender = 'Female'

-- LIKE here is use to select specific string with filters like string format
-- lastname includes s in any position 
SELECT * FROM employeeinfo WHERE LastName LIKE '%S%'

-- lastname includes s in starting position 
SELECT * FROM employeeinfo WHERE LastName LIKE 'S%'

-- lastname includes s,a,n in starting position 
-- here order is important if a is at position of n then it will not work
SELECT * FROM employeeinfo WHERE LastName LIKE 'S%h%am%'  -- returns shubham but not if S%am%H

-- NULL and NOT NULL 
-- Returns all null fields in first case and not null in second
SELECT * FROM employeeinfo WHERE LastName IS NULL
SELECT * FROM employeeinfo WHERE LastName IS NOT NULL

-- Here we are using multiple = statement we can avoid it using IN statement 
SELECT * FROM employeeinfo WHERE LastName = 'Doe' AND LastName = 'Pax'
-- instead write this
SELECT * FROM employeeinfo WHERE LastName IN ('Doe','Pax')