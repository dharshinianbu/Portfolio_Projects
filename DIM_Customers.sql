/****** Script for SelectTopNRows command from SSMS  ******/
--USED Dim_Customer table left join with Dim_Geography table
SELECT 
c.[CustomerKey] as CustomerKey
--,[GeographyKey]
--,[CustomerAlternateKey]
--,[Title]
,c.[FirstName] as [First Name]
--,[MiddleName]
,c.[LastName] as [Last Name]
c.firstname + ' ' + c.lastname as [Full Name]
--,[NameStyle]
--,[BirthDate]
--,[MaritalStatus]
--,[Suffix]
CASE  c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender 
,c.[Gender] as Test
--,[EmailAddress]
--,[YearlyIncome]
--,[TotalChildren]
--,[NumberChildrenAtHome]
--,[EnglishEducation]
--,[SpanishEducation]
--,[FrenchEducation]
--,[EnglishOccupation]
--,[SpanishOccupation]
--,[FrenchOccupation]
--,[HouseOwnerFlag]
--,[NumberCarsOwned]
--,[AddressLine1]
--,[AddressLine2]
--,[Phone]
,c.[DateFirstPurchase] as DateFirstPurchase
--,[CommuteDistance]
g.city as [Customer City] --joined customer city from geography table
  FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  left join [AdventureWorksDW2019].[dbo].[DimGeography] AS g
  on c.[GeographyKey]=g.[GeographyKey]
  ;