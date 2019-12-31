
--drop table Login
--drop table SecurityInfo
--drop table PersonalInfo
--drop table student

create table Login
( loginId varchar(50),password varchar(50),primary key(loginId));

-- drop table SecurityInfo

create table SecurityInfo
(securityQuestion_Id varchar(10),securityQuestion varchar(200),primary key(securityQuestion_Id));

create table Student
(loginId varchar(50),firstName varchar(100),lastName varchar(100),primary key(loginId));

--drop table Images
create table Images
(imgId varchar(5),imgUrl varchar(500),type varchar(20),name varchar(100),primary key(imgId));

--drop table Room

create table Room
(roomId varchar(10),type varchar(10),appartmentNo varchar(10),address varchar(100),imgId varchar(5),rent float,noOfBedrooms int,noOfBathrooms int,leaseLength varchar(30),primary key(roomId),foreign key(imgId) references Images(imgid));

create table Utilities
(uId varchar(5),roomId varchar(10),name varchar(100),imgId varchar(5),foreign key(imgId) references Images(imgId),foreign key(roomId) references Room(roomId));

--drop table PersonalInfo
-- drop table ReviewsAndRatings
-- drop table Utilities
-- drop table Room
create table PersonalInfo
(loginId varchar(50),dOB datetime,state varchar(100),city varchar(100),zipCode varchar(20),address1 varchar(500),address2 varchar(500),emailId varchar(100),qualification varchar(100),securityQuestion_Id varchar(10),securityAnswer varchar(100),roomId varchar(10),primary key(loginId),foreign key(loginId) references Student(loginId),foreign key(securityQuestion_Id) references SecurityInfo(securityQuestion_Id),foreign key(roomId) references Room(roomId));

create table Items
(itemId varchar(10),loginId varchar(50),name varchar(50),price float,imgId varchar(5),purchaseDate date,primary key(itemId),foreign key(loginId) references Student(loginId));

create table Messages
(msgId varchar(10),content varchar(500),loginId varchar(50),msgDate date,primary key(msgId),foreign key(loginId) references Student(loginId));

create table ReviewsAndRatings
(reviewId varchar(10),rating float,reviewMsg varchar(1000),roomId varchar(10),loginId varchar(50),reviewDate date,primary key(reviewId),foreign key(roomId) references Room(roomId),foreign key(loginId) references Student(loginId));


insert into SecurityInfo
values('1','What is your mothers maiden name?');

insert into SecurityInfo
values('2','What is the name of your best friend?');

insert into SecurityInfo
values('3','What is the name of your best dish');

--select * from images
insert into images values('i1','Images/Rooms/9509.jpg','room','9509 Apartment Overview');
insert into images values('i2','Images/Rooms/9523.jpg','room','9523 Apartment Overview');
insert into images values('i3','Images/Rooms/9544.jpg','room','9544 Apartment Overview');


insert into room
values('r1','empty','K','9509 University Terrace Drive Charlotte,NC 28262','i1',350,4,2,'6 months lease');
insert into room
values('r2','empty','A','9523 University Terrace Drive Charlotte,NC 28262','i2',300,4,2,'6 months lease');
insert into room
values('r3','empty','K','9544 University Terrace Drive Charlotte,NC 28262','i3',310,4,2,'6 months lease');

select * from room

delete from room
delete from images


-- create table RoomCatalog

create table RoomCatalog (loginId varchar(50),roomId varchar(10),primary key(loginId,roomId),foreign key(loginId) references Student(loginId),foreign key(roomId) references Room(roomId));
