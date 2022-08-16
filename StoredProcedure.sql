CREATE PROCEDURE Tempo_Employee
AS
DROP TABLE IF EXISTS #temp_employee
Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)

Insert into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM FirstDB..EmployeeDemographics emp
JOIN FirstDB..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle
select *
FROM #temp_employee

EXEC Tempo_Employee @JobTitle = 'Salesman'
