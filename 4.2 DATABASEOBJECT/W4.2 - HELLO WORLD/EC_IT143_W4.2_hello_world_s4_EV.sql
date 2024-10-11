DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO

CREATE VIEW dbo.v_hello_world_load
AS
/************************************************************************************************************
NAME: EC_IT143_W4.2_hello_world_s4_EV.sql
PURPOSE: Create the Hello World - Load view

MODIFICATION LOG:
Ver     Date        Author       Description
-----  ----------   ------     ----------------------------------------------   
1.0    10/08/2024   EEVC       1. Built this script for EC IT143

RUNTIME:
1S

NOTES:
This script exists to help me learn step 4 of 8 in the Answer Focused Approach for T-SQL Data Manipulation

**************************************************************************************************************/
-- Q: WHAT IS THE CURRENT DATA TIME?
-- A: Let's ask SQL Server and find out...
SELECT 'HELLO WORLD' AS my_message
	, GETDATE() AS current_date_time