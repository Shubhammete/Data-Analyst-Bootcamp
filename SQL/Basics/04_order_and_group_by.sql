-- Distinct only give unique values GROUP BY bundles all the stuff and returns count
SELECT Gender, COUNT(Gender) 
FROM employeeinfo
GROUP BY Gender
-- Female	2
-- Male 	4

-- Returns unique columns that have same age and gender with count
SELECT Gender, Age,COUNT(Gender) 
FROM employeeinfo
GROUP BY Gender, Age

-- ORDER BY aranges table in ascending and in descending order by using keywords ASC and DESC
-- By default it has ascending setting you can change it to descending
SELECT *
FROM employeeinfo
ORDER BY Age,Gender DESC -- here as f come first so we can sort like that also


-- we can use column no also to execute query btw col no starts from 1
SELECT *
FROM employeeinfo
ORDER BY 3 DESC, 4 DESC


-- Distinct only give unique values GROUP BY bundles all the stuff and returns count
SELECT Gender,COUNT(Gender) AS GenderCount
FROM employeeinfo
WHERE Age<30
GROUP BY Gender
ORDER BY GenderCount DESC 
-- Here we select Gender and aggregate columns GenderCount and we grouped data according to gender and order according to count
-- we have to select column only those who have Group by clause or should be in aggreagate function
-- like here Gender is in aggregate we put gender we cannot select Age here without putting it in aggregate function or in 