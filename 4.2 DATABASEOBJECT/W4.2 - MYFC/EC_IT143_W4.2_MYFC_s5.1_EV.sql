-- Q: HOW MANY PLAYERS PLAY IN THE GOALKEEPER POSITION?
-- A: Let's ask SQL Server and find out...

SELECT v.POSITION
	, v.QUANTITY
	INTO dbo.t_MYFC
FROM dbo.v_MYFC_load AS v;