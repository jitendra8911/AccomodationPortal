USE [AccommodationPortal]
GO
/****** Object:  StoredProcedure [dbo].[AuthenticateUser]    Script Date: 03/06/2014 10:35:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[AuthenticateUser]
@username varchar(50),@pwd varchar(50),@flag bit out
as
begin 
select * from Login where loginId=@username and password=@pwd
if @@rowcount>0
begin
set @flag=1
end
else
begin
set @flag=0
end
end
