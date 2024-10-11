CREATE PROCEDURE dbo.usp_SIMPSON_load
AS

/*****************************************************************************************************************
NAME:   EC_IT143_W4.2_SIMPSON_s7_EV.sql
PURPOSE: SIMPSON - Load user stored procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/08/2024   EEVC       1. Built this script for EC IT143

RUNTIME: 
1s

NOTES: 
This script exists to help me learn step 7 for 8 in the answer Focused Approach for T-SQL Data Manipulation

******************************************************************************************************************/

	BEGIN
		--1) RELOAD DATA	

			TRUNCATE TABLE dbo.t_SIMPSON

				INSERT INTO dbo.t_SIMPSON
						SELECT v.FNAME
							, v.JOB_TITLE
							FROM dbo.v_SIMPSON_load AS v;

		-- 2) REVIEW RESULTS

				SELECT t.*
					FROM dbo.t_SIMPSON AS t;
	END;
GO