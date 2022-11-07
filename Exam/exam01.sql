create table Categories (
CateID char(6) primary key,
CateName nvarchar(100) not null,
Description nvarchar(200)
);
create table Parts(
PartID int primary key identity(1,1),
PartName nvarchar(100) not null,
CateID char(6) foreign key references Categories(CateID),
Description nvarchar(1000),
Price decimal(12,0) not null default 0,
Quantity int default 0,
Warranty int default 1,
Photo nvarchar(200) Default 'photo/nophoto.png'
);
------------------------------------------------
Insert into Categories (CateID,CateName,Description)
values (N'006',N'CPU',N'13th'),
(N'003',N'ROM',N'512G'),
(N'004',N'RAM',N'1T');
select * from Categories
SET IDENTITY_INSERT Parts ON
Insert into Parts(PartID,PartName,CateID,Description,Price,Quantity,Warranty,Photo)
values ('002','AA2','002','512G','200','5','12','photo'),
('003','AA3','003','Rambus3200','225','10','6','photo'),
('004','AA4','004','Rambus3200','125','15','8','photo'),
('006','AA6','006','512G','200','5','12','photo');


-------------------------------------------------
-- List all parts in the store with price > 100$

select * from Parts where Price>100;

-- List all parts of the category ‘CPU’

select * from Parts where CateID in (select CateID from Categories where CateName like 'CPU');

-- Create a view v_Parts contains the following information (PartID, PartName, CateName,Price, Quantity) from table Parts and Categories.

CREATE VIEW v_Parts AS
select a.PartID,a.PartName,b.CateName,a.Price,a.Quantity from Parts a 
left join Categories b on a.CateID = b.CateID;

select * from v_Parts;

-- Create a view v_TopParts about 5 parts with the most expensive price


create view v_TopParts as
select top 5 PartName from Parts order by Price desc;

select * from v_TopParts;