Select 'GOALKEEPER' AS POSITION
		, COUNT(P_ID) AS QUANTITY from [dbo].[tblPlayerDim]
			WHERE [dbo].[tblPlayerDim].p_id = '1'