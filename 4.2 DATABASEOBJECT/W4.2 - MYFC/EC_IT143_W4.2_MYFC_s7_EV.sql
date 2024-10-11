CREATE PROCEDURE dbo.usp_MYFC_load
AS

/*****************************************************************************************************************
NAME:   EC_IT143_W4.2_MYFC_s7_EV.sql
PURPOSE: MYFC - Load user stored procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/09/2024   EEVC       1. Built this script for EC IT143

RUNTIME: 
1s

NOTES: 
This script exists to help me learn step 7 for 8 in the answer Focused Approach for T-SQL Data Manipulation

******************************************************************************************************************/

	BEGIN
		--1) RELOAD DATA	

				TRUNCATE TABLE dbo.t_MYFC

					INSERT INTO dbo.t_MYFC
						SELECT v.POSITION
							 , v.QUANTITY
						FROM dbo.v_MYFC_load AS v;

		-- 2) REVIEW RESULTS

						SELECT t.*
							FROM dbo.t_MYFC AS t;

	END;
GO