USE [FirstDB]
GO
/****** Object:  StoredProcedure [dbo].[Tempo_Employee]    Script Date: 8/16/2022 9:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Tempo_Employee]
@JobTitle nvarchar(100)
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
where JobTitle = @JobTitle
group by JobTitle
select *
FROM #temp_employee