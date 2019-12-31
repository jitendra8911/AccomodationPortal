create table Login(Uname varchar(50),Password varchar(50))

insert into  Login
values('abc','123')

insert into  Login
values('cde','123')

drop proc Authenticate
create proc AuthenticateUser
@username varchar(50),@pwd varchar(50),@flag bit out
as
begin 
select * from Login where uname=@username and password=@pwd
if @@rowcount>0
begin
set @flag=1
end
else
begin
set @flag=0
end
end

execute 

 