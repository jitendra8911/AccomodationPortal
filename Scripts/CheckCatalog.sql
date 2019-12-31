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
create PROCEDURE CheckCatalog
	@loginId varchar(50), @roomId varchar(10),@flag bit out
AS
BEGIN
     
    select * from RoomCatalog where roomId=@roomId and loginId=@loginId
if @@rowcount>0
begin
set @flag=1
end
else
begin
set @flag=0
end
end
	

-- exec InsertIntoRoomCatalog 'jitendra8911' ,'r1','hai'