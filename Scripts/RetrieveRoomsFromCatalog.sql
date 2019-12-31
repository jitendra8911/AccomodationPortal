USE [AccommodationPortal]
GO
/****** Object:  StoredProcedure [dbo].[RetrieveRoomsFromCatalog]    Script Date: 03/22/2014 06:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[RetrieveRoomsFromCatalog] 
	@loginId varchar(50)
AS
BEGIN
	select imgUrl,address,appartmentNo,rent,noOfbedrooms,noOfBathrooms,leaseLength from Images i, Room r where 
    i.imgId=r.ImgId and r.type='empty' and roomId in (select roomId from roomcatalog where loginId=@loginId)

--select imgUrl from Images i, Room r where 
--i.imgId=r.ImgId and r.type='empty'

END
