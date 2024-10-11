DROP VIEW IF EXISTS dbo.v_SIMPSON_load;
GO

CREATE VIEW dbo.v_SIMPSON_load
AS
/************************************************************************************************************
NAME: EC_IT143_W4.2_SIMPSON_s4_EV.sql
PURPOSE: Create the SIMPSON - Load view

MODIFICATION LOG:
Ver     Date        Author       Description
-----  ----------   ------     ----------------------------------------------   
1.0    10/08/2024   EEVC       1. Built this script for EC IT143

RUNTIME:
1S

NOTES:
This script exists to help me learn step 4 of 8 in the Answer Focused Approach for T-SQL Data Manipulation

**************************************************************************************************************/
-- Q: WHAT IS THE JOB TITLE OF HOMERO?
-- A: Let's ask SQL Server and find out...
Select 'HOMERO' AS FNAME
		, Job_title from [dbo].[Family_Data]
			WHERE [dbo].[Family_Data].name = 'Homer Simpson'