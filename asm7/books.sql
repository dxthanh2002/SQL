create table B_Publishers(
id varchar(20) primary key,
Name nvarchar(255),
Address nvarchar(255),
);
create table B_Categories(
id varchar(20) primary key,
Name nvarchar(255),
);
create table B_Authors(
id varchar(20) primary key,
Name nvarchar(255),
Address nvarchar(255),
);
create table B_Books(
Code varchar(20) primary key,
Name nvarchar(255),
Description ntext,
PublishYear int,
NumberofPublish int,
Price decimal(12,4),
Qty int,
Categoryid varchar(20) foreign key references B_Categories(id),
Publisherid varchar(20) foreign key references B_Publishers(id),
);
create table B_BookAuthors(
Code varchar(20) foreign key references B_Books(Code) ,
Id varchar(20) foreign key references B_Authors(id),
);
------------------------------------------------------------------
--1--
--2--
--3--
--4--
--5--
--6--
--7--
--8