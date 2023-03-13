/****** Script for SelectTopNRows command from SSMS  ******/
--USED Dim_Date table to get past 2 year details
SELECT
[DateKey]
,[FullDateAlternateKey] as Date
,[DayNumberOfWeek] as Day
--,[EnglishDayNameOfWeek]
--,[SpanishDayNameOfWeek]
--,[FrenchDayNameOfWeek]
--,[DayNumberOfMonth]
--,[DayNumberOfYear] 
,[WeekNumberOfYear] as WeekNr
,[EnglishMonthName] as Month,
left([EnglishMonthName],3) as Monthshort
--,[SpanishMonthName]
--,[FrenchMonthName]
,[MonthNumberOfYear] as MonthNo
,[CalendarQuarter] as Quater
,[CalendarYear] as Year
--,[CalendarSemester]
--,[FiscalQuarter]
--,[FiscalYear]
--,[FiscalSemester]
  FROM
  [AdventureWorksDW2019].[dbo].[DimDate]
  where 
  [CalendarYear]>=2020;