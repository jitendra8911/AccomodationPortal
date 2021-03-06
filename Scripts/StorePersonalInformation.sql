USE [AccommodationPortal]
GO
/****** Object:  StoredProcedure [dbo].[StorePersonalInformation]    Script Date: 03/04/2014 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--

ALTER PROCEDURE [dbo].[StorePersonalInformation] 
	
@LoginId varchar(50),@Password varchar(50),@FirstName varchar(100),@LastName varchar(100),@DOB datetime,@State varchar(100),@City varchar(100),@Zipcode varchar(20),@Address1 varchar(500),@Address2 varchar(500),@EmailId varchar(50),@Qualification varchar(100),@SecurityQuestion varchar(200),@SecurityAnswer varchar(100)

AS
BEGIN
    declare @SecurityQuestion_Id varchar(10);
	insert into Login values(@LoginId,@Password)
    insert into Student values(@LoginId,@FirstName,@LastName)
    select @SecurityQuestion_Id=SecurityQuestion_Id from SecurityInfo where SecurityQuestion=@SecurityQuestion
    insert into PersonalInfo (loginId,dOB,state,city,zipCode,address1,address2,emailId,qualification,securityQuestion_Id,securityAnswer)
    values(@LoginId,@DOB,@State,@City,@Zipcode,@Address1,@Address2,@EmailId,@Qualification,@SecurityQuestion_Id,@SecurityAnswer);

END
