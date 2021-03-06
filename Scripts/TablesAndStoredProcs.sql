USE [AccommodationPortal]
GO
/****** Object:  StoredProcedure [dbo].[proc1]    Script Date: 03/22/2014 20:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc1]
	-- Add the parameters for the stored procedure here
	@uname varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from samp where uname=@uname
END
GO
/****** Object:  Table [dbo].[Login]    Script Date: 03/22/2014 20:07:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[loginId] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[loginId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SecurityInfo]    Script Date: 03/22/2014 20:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SecurityInfo](
	[securityQuestion_Id] [varchar](10) NOT NULL,
	[securityQuestion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[securityQuestion_Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 03/22/2014 20:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[loginId] [varchar](50) NOT NULL,
	[firstName] [varchar](100) NULL,
	[lastName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[loginId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Images]    Script Date: 03/22/2014 20:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Images](
	[imgId] [varchar](5) NOT NULL,
	[imgUrl] [varchar](500) NULL,
	[type] [varchar](20) NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[imgId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonalInfo]    Script Date: 03/22/2014 20:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PersonalInfo](
	[loginId] [varchar](50) NOT NULL,
	[dOB] [datetime] NULL,
	[state] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[zipCode] [varchar](20) NULL,
	[address1] [varchar](500) NULL,
	[address2] [varchar](500) NULL,
	[emailId] [varchar](100) NULL,
	[qualification] [varchar](100) NULL,
	[securityQuestion_Id] [varchar](10) NULL,
	[securityAnswer] [varchar](100) NULL,
	[roomId] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[loginId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 03/22/2014 20:07:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[itemId] [varchar](10) NOT NULL,
	[loginId] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[price] [float] NULL,
	[imgId] [varchar](5) NULL,
	[purchaseDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 03/22/2014 20:07:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Messages](
	[msgId] [varchar](10) NOT NULL,
	[content] [varchar](500) NULL,
	[loginId] [varchar](50) NULL,
	[msgDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[msgId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReviewsAndRatings]    Script Date: 03/22/2014 20:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReviewsAndRatings](
	[reviewId] [varchar](10) NOT NULL,
	[rating] [float] NULL,
	[reviewMsg] [varchar](1000) NULL,
	[roomId] [varchar](10) NULL,
	[loginId] [varchar](50) NULL,
	[reviewDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[reviewId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoomCatalog]    Script Date: 03/22/2014 20:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoomCatalog](
	[loginId] [varchar](50) NOT NULL,
	[roomId] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loginId] ASC,
	[roomId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 03/22/2014 20:07:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room](
	[roomId] [varchar](10) NOT NULL,
	[type] [varchar](10) NULL,
	[appartmentNo] [varchar](10) NULL,
	[address] [varchar](100) NULL,
	[imgId] [varchar](5) NULL,
	[rent] [float] NULL,
	[noOfBedrooms] [int] NULL,
	[noOfBathrooms] [int] NULL,
	[leaseLength] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[roomId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Utilities]    Script Date: 03/22/2014 20:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Utilities](
	[uId] [varchar](5) NULL,
	[roomId] [varchar](10) NULL,
	[name] [varchar](100) NULL,
	[imgId] [varchar](5) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SearchIfRoomIsAlreadyAddedToCatalog]    Script Date: 03/22/2014 20:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchIfRoomIsAlreadyAddedToCatalog]
	@roomId varchar(10),@loginId varchar(50),@flag bit out
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
GO
/****** Object:  StoredProcedure [dbo].[InsertIntoRoomCatalog]    Script Date: 03/22/2014 20:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertIntoRoomCatalog]
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
insert into RoomCatalog values(@loginId,@roomId)
end
end
	

-- exec InsertIntoRoomCatalog 'jitendra8911' ,'r1','hai'
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromRoomCatalog]    Script Date: 03/22/2014 20:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[DeleteFromRoomCatalog]
	@loginId varchar(50), @roomId varchar(10),@flag bit out
AS
BEGIN
     
    select * from RoomCatalog where roomId=@roomId and loginId=@loginId
if @@rowcount>0
begin
set @flag=1
delete from RoomCatalog where roomId=@roomId and loginId=@loginId
end
else
begin
set @flag=0
end
end
	

-- exec InsertIntoRoomCatalog 'jitendra8911' ,'r1','hai'
GO
/****** Object:  StoredProcedure [dbo].[CheckCatalog]    Script Date: 03/22/2014 20:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[CheckCatalog]
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
GO
/****** Object:  StoredProcedure [dbo].[RetrieveRoomsFromCatalog]    Script Date: 03/22/2014 20:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RetrieveRoomsFromCatalog] 
	@loginId varchar(50)
AS
BEGIN
	select imgUrl,address,appartmentNo,rent,noOfbedrooms,noOfBathrooms,leaseLength from Images i, Room r where 
    i.imgId=r.ImgId and r.type='empty' and roomId in (select roomId from roomcatalog where loginId=@loginId)

--select imgUrl from Images i, Room r where 
--i.imgId=r.ImgId and r.type='empty'

END
GO
/****** Object:  StoredProcedure [dbo].[ChangePassword]    Script Date: 03/22/2014 20:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ChangePassword]
	@loginId varchar(50),@newPassword varchar(50),@flag bit out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	update login set password=@newPassword where loginId=@loginId
if @@rowcount>0
begin
set @flag=1
end
else
begin
set @flag=0
end
end
GO
/****** Object:  StoredProcedure [dbo].[StorePersonalInformation]    Script Date: 03/22/2014 20:07:11 ******/
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

CREATE PROCEDURE [dbo].[StorePersonalInformation] 
	
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
GO
/****** Object:  StoredProcedure [dbo].[CheckLoginIdAvailability]    Script Date: 03/22/2014 20:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckLoginIdAvailability]
@loginId varchar(50),@flag bit out	
AS

BEGIN
	select * from Login where loginid=@loginId
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
/****** Object:  StoredProcedure [dbo].[PasswordRecovery]    Script Date: 03/22/2014 20:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PasswordRecovery]
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
/****** Object:  StoredProcedure [dbo].[AuthenticateUser]    Script Date: 03/22/2014 20:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AuthenticateUser]
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
GO
/****** Object:  StoredProcedure [dbo].[RetrieveVacantRoomsBasedOnPriceRange]    Script Date: 03/22/2014 20:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RetrieveVacantRoomsBasedOnPriceRange] 
	@minValue float,@maxValue float
AS
BEGIN
	select appartmentNo,address,imgUrl,rent,noOfbedrooms,noOfBathrooms,leaseLength from Images i, Room r where 
    i.imgId=r.ImgId and r.type='empty' and rent >= @minValue and rent <= @maxValue
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveVacantRoomDetails]    Script Date: 03/22/2014 20:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RetrieveVacantRoomDetails] 
	@roomId varchar(10)
AS
BEGIN
	select imgUrl,address,appartmentNo,rent,noOfBedrooms,noOfBathrooms,leaseLength from Images i, Room r where 
    i.imgId=r.ImgId and r.roomId=@roomId
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveVacantRooms]    Script Date: 03/22/2014 20:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RetrieveVacantRooms] 
	
AS
BEGIN
	select appartmentNo,address,imgUrl,rent,noOfbedrooms,noOfBathrooms,leaseLength from Images i, Room r where 
    i.imgId=r.ImgId and r.type='empty'

--select imgUrl from Images i, Room r where 
--i.imgId=r.ImgId and r.type='empty'

END
GO
/****** Object:  ForeignKey [FK__Items__loginId__5BE2A6F2]    Script Date: 03/22/2014 20:07:13 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([loginId])
REFERENCES [dbo].[Student] ([loginId])
GO
/****** Object:  ForeignKey [FK__Messages__loginI__60A75C0F]    Script Date: 03/22/2014 20:07:14 ******/
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([loginId])
REFERENCES [dbo].[Student] ([loginId])
GO
/****** Object:  ForeignKey [FK__PersonalI__login__72C60C4A]    Script Date: 03/22/2014 20:07:16 ******/
ALTER TABLE [dbo].[PersonalInfo]  WITH CHECK ADD FOREIGN KEY([loginId])
REFERENCES [dbo].[Student] ([loginId])
GO
/****** Object:  ForeignKey [FK__PersonalI__roomI__74AE54BC]    Script Date: 03/22/2014 20:07:16 ******/
ALTER TABLE [dbo].[PersonalInfo]  WITH CHECK ADD FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([roomId])
GO
/****** Object:  ForeignKey [FK__PersonalI__secur__73BA3083]    Script Date: 03/22/2014 20:07:16 ******/
ALTER TABLE [dbo].[PersonalInfo]  WITH CHECK ADD FOREIGN KEY([securityQuestion_Id])
REFERENCES [dbo].[SecurityInfo] ([securityQuestion_Id])
GO
/****** Object:  ForeignKey [FK__ReviewsAn__login__7A672E12]    Script Date: 03/22/2014 20:07:17 ******/
ALTER TABLE [dbo].[ReviewsAndRatings]  WITH CHECK ADD FOREIGN KEY([loginId])
REFERENCES [dbo].[Student] ([loginId])
GO
/****** Object:  ForeignKey [FK__ReviewsAn__roomI__797309D9]    Script Date: 03/22/2014 20:07:17 ******/
ALTER TABLE [dbo].[ReviewsAndRatings]  WITH CHECK ADD FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([roomId])
GO
/****** Object:  ForeignKey [FK__Room__imgId__6B24EA82]    Script Date: 03/22/2014 20:07:19 ******/
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([imgId])
REFERENCES [dbo].[Images] ([imgId])
GO
/****** Object:  ForeignKey [FK__RoomCatal__login__07C12930]    Script Date: 03/22/2014 20:07:19 ******/
ALTER TABLE [dbo].[RoomCatalog]  WITH CHECK ADD FOREIGN KEY([loginId])
REFERENCES [dbo].[Student] ([loginId])
GO
/****** Object:  ForeignKey [FK__RoomCatal__roomI__08B54D69]    Script Date: 03/22/2014 20:07:20 ******/
ALTER TABLE [dbo].[RoomCatalog]  WITH CHECK ADD FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([roomId])
GO
/****** Object:  ForeignKey [FK__Utilities__imgId__6D0D32F4]    Script Date: 03/22/2014 20:07:21 ******/
ALTER TABLE [dbo].[Utilities]  WITH CHECK ADD FOREIGN KEY([imgId])
REFERENCES [dbo].[Images] ([imgId])
GO
/****** Object:  ForeignKey [FK__Utilities__roomI__6E01572D]    Script Date: 03/22/2014 20:07:21 ******/
ALTER TABLE [dbo].[Utilities]  WITH CHECK ADD FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([roomId])
GO
