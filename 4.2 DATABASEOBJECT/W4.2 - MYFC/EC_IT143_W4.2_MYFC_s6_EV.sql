-- Q: HOW MANY PLAYERS PLAY IN THE GOALKEEPER POSITION?

-- A: Let's ask SQL Server and find out...

--1) RELOAD DATA	

TRUNCATE TABLE dbo.t_MYFC

INSERT INTO dbo.t_MYFC
	SELECT v.POSITION
		 , v.QUANTITY
		FROM dbo.v_MYFC_load AS v;

-- 2) REVIEW RESULTS

SELECT t.*
	FROM dbo.t_MYFC AS t;