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
alter PROCEDURE PasswordRecovery
	@loginId varchar(50),@securityQuestion varchar(200),@securityAnswer varchar(100),@flag bit out
AS
BEGIN
	select l.loginId from login l,personalinfo p where l.loginId=@loginId and securityQuestion_Id in (select securityQuestion_Id from SecurityInfo where securityQuestion=@securityQuestion) and securityAnswer=@securityAnswer
     if @@rowcount>0
begin
set @flag=1
end
else
begin
set @flag=0
END
end
GO


-- exec PasswordRecovery 'jitendra8911', 'What is your mothers maiden name?','gunnam'