select *
FROM #temp_Employee

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

insert into #temp_Employee values ('1001', 'HR' , '45000')

INSERT INTO #temp_Employee
SELECT * 
FROM FirstDB..EmployeeSalary


Create table #temp_employee2 (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

Select * From #temp_employee2

INSERT INTO #Temp_Employee2
SELECT JobTitle, Count(Jobtitle), Avg(Age), Avg(Salary)
FROM FirstDB..EmployeeDemographics emp
JOIN FirstDB..EmployeeSalary sal 
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

