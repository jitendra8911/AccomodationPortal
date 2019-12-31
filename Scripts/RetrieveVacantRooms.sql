-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter PROCEDURE RetrieveVacantRooms 
	
AS
BEGIN
	select appartmentNo,address,imgUrl,rent,noOfbedrooms,noOfBathrooms,leaseLength from Images i, Room r where 
    i.imgId=r.ImgId and r.type='empty'

--select imgUrl from Images i, Room r where 
--i.imgId=r.ImgId and r.type='empty'

END
GO


-- exec RetrieveVacantRooms