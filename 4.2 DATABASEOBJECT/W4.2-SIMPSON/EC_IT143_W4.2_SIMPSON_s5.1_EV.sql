-- Q: WHAT IS THE JOB TITLE OF HOMERO?
-- A: Let's ask SQL Server and find out...

SELECT v.FNAME
	, v.Job_title
	INTO dbo.t_SIMPSON
FROM dbo.v_SIMPSON_load AS v;