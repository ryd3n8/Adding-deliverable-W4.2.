-- Q: WHAT IS THE JOB TITLE OF HOMERO?

-- A: Let's ask SQL Server and find out...

--1) RELOAD DATA	

TRUNCATE TABLE dbo.t_SIMPSON

INSERT INTO dbo.t_SIMPSON
	SELECT v.FNAME
		 , v.JOB_TITLE
		FROM dbo.v_SIMPSON_load AS v;

-- 2) REVIEW RESULTS

SELECT t.*
	FROM dbo.t_SIMPSON AS t;