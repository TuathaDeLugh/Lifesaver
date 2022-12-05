In SSMS:-
use lifesaver;
create table weblogin (id int identity(1,1),username varchar(255),name varchar(255),password varchar(255),email varchar(255),address varchar(255),pincode varchar(255),mno varchar(255),question varchar(255),answer varchar(255),time varchar(255));
create table tipofday(id int identity(1,1),tip varchar(255));
create table users (id int identity(1,1),username varchar(255),donername varchar(255),gender varchar(255),bdate varchar(255) ,email varchar(255),password varchar(255),address varchar(255),pincode varchar(255),mno varchar(255),points varchar(255),certificate varchar(255),candonate varchar(255),question varchar(255),answer varchar(255));
create table campaign (id int identity(1,1),username varchar(255),name varchar(255),address varchar(255),pincode varchar(255),mno varchar(255),tagline varchar(255),date varchar(255),time varchar(255),approve varchar(255));
create table organ (id int identity(1,1),username varchar(255),donername varchar(255),bdate varchar(255) ,address varchar(255),pincode varchar(255),mno varchar(255),email varchar(255),organname varchar(255));
create table feedback (id int identity(1,1),name varchar(255),email varchar(255),type varchar(255),subject varchar(255) ,maindata varchar(255));
create table blooddata(id int identity(1,1),username varchar(255),Name varchar(255),opve int,onve int,apve int,anve int,bpve int,bnve int,abpve int,abnve int);
go
create view appdoner AS SELECT * FROM users WHERE candonate='yes';
go
create view notdoner AS SELECT * FROM users WHERE candonate='no';
go 
create view appfeedback AS SELECT * FROM feedback WHERE type='feedback';
go 
create view bbrequest AS SELECT * FROM feedback WHERE type='bbhelp';

insert into tipofday values('tip'); //run this 12 time



How to run??

Just create database name- lifesaver
Then fire above mentioned queries.
Also insert admin in table weblogin .
Username- admin

In SSMS:-
Use lifesaver;
Insert into weblogin values(‘admin’,‘admin’,‘admin’,’not applicable’,’not applicable’,’not applicable’,’not applicable’,’not applicable’,’not applicable’,’not applicable’) ;


Open project in vs
Change connection string in web.config file.
& f5


Live website Demo available here
https://umangsailor.bsite.net/login.aspx

admin panel
id admin
pass admin

blood bank
id LifeLine
pass 123

