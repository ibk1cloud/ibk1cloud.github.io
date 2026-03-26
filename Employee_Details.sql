
  CREATE TABLE [dbo].[Employee_Details](
	[EmpId] [int] NULL,
	[FullName] [varchar](99) NULL,
	[ManagerId] [int] NULL,
	[DateOfJoining] [date] NULL,
	[City] [varchar](99) NULL
) ON [PRIMARY]
GO
  
  INSERT INTO [dbo].[Employee_Details] (
EmpId,FullName,ManagerId,DateOfJoining,City)
VALUES
('577','Chris George','487','2021-04-02','Machester'),
('421','Kuldeep Rana','876','2021-11-27','New Delhi'),
('655','Alex Brown','955','2020-02-28','London'),
('121','John Snow','321','2019-03-01','Toronto'),
('321','Walter White','986','2020-02-01','Califonia')


CREATE TABLE Employee_Salary (
EmpId INT,
Project VARCHAR(99),
Salary DECIMAL(6,2),
Variable Decimal(6,2)
)    

ALTER TABLE [dbo].[Employee_Salary]
ALTER COLUMN [Variable] DECIMAL(12,2)
    
----Rquest 1
SELECT EmpId,FullName
FROM Employee_Details
WHERE ManagerId='986'

----Request 2
SELECT Project FROM Employee_Salary

----Request 3
SELECT COUNT(EmpId) FROM Employee_Salary
WHERE Project='P1'

---Request 4
SELECT MAX(Salary) AS MAXIMUM_SALARY,MIN(Salary) AS MINIMU_SALARY,
AVG(Salary) AS AVERAGE
FROM Employee_Salary

---Request 5
SELECT EmpId FROM [dbo].[Employee_Salary]
WHERE Salary BETWEEN 9000 AND 15000

---Request 6
SELECT * FROM [dbo].[Employee_Details]
WHERE City='Toronto' AND ManagerId='321'

---Request 7
SELECT * FROM [dbo].[Employee_Details]
WHERE City='Califonia' OR ManagerId = '321'

---Request 8
SELECT * FROM [dbo].[Employee_Salary]
WHERE Project!='P1'

---Request 9   xxxx
SELECT SUM([Salary]+[Variable]) AS TOTAL SALARY
FROM [dbo].[Employee_Salary]
GROUP BY Project
ORDER BY EmpId

---Request 10
SELECT * FROM Employee_Details
WHERE FullName LIKE '__hn%'
ORDER BY FullName

---Request 11
SELECT [dbo].[Employee_Details].EmpId AS Employee_Details_ID,
[dbo].[Employee_Salary].[EmpId] AS Employee_Salary_ID
FROM [dbo].[Employee_Details]
JOIN [dbo].[Employee_Salary]
ON [dbo].[Employee_Details].[EmpId]= [dbo].[Employee_Salary].[EmpId]FROM [dbo].[Employee_Details],[dbo].[Employee_Salary]

