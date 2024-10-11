-- Q: WHAT IS THE CURRENT DATA TIME?

-- A: Let's ask SQL Server and find out...

--1) RELOAD DATA	

TRUNCATE TABLE dbo.t_hello_world

INSERT INTO dbo.t_hello_world
	SELECT v.my_message
		 , v.current_date_time
		FROM dbo.v_hello_world_load AS v;

-- 2) REVIEW RESULTS

SELECT t.*
	FROM dbo.t_hello_world AS t;