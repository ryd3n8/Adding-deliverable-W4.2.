DROP VIEW IF EXISTS dbo.v_MYFC_load;
GO

CREATE VIEW dbo.v_MYFC_load
AS
/************************************************************************************************************
NAME: EC_IT143_W4.2_MYFC_s4_EV.sql
PURPOSE: Create the MYFC - Load view

MODIFICATION LOG:
Ver     Date        Author       Description
-----  ----------   ------     ----------------------------------------------   
1.0    10/09/2024   EEVC       1. Built this script for EC IT143

RUNTIME:
1S

NOTES:
This script exists to help me learn step 4 of 8 in the Answer Focused Approach for T-SQL Data Manipulation

**************************************************************************************************************/
-- Q: HOW MANY PLAYERS PLAY IN THE GOALKEEPER POSITION?
-- A: Let's ask SQL Server and find out...
Select 'GOALKEEPER' AS POSITION
		, COUNT(P_ID) AS QUANTITY from [dbo].[tblPlayerDim]
			WHERE [dbo].[tblPlayerDim].p_id = '1'