CREATE TABLE Tt_Hang(
	MaHang VARCHAR(10) PRIMARY KEY ,
	TenHang nVARCHAR(255) not null ,
	DiaChi VARCHAR(100) not null ,
	SoDT varchar(20) not null,
);
drop table Tt_Hang;
CREATE TABLE Tt_SanPham(
	MaSP VARCHAR(10) PRIMARY KEY,
	MaHang varchar(10) not null foreign key references Tt_Hang(MaHang),
	TenSP nVARCHAR(255) not null,
	MoTa VARCHAR(100) not null ,
	Gia varchar (20) not null,
	Donvi varchar (20) not null,
	SL varchar(20) not null ,
);
drop table Tt_SanPham;
insert into Tt_Hang(MaHang,TenHang,DiaChi,SoDT)
values ('003',N'DELL',N'USA','05113999888'),
		('004',N'ACER',N'China','05113979888'),
		('005',N'Lenovo',N'VN','05113999888'),
		('006',N'Apple',N'Br','05113999888');

select * from Tt_Hang;

insert into Tt_SanPham(MaSP,MaHang,TenSP,MoTa,Gia,Donvi,SL)
values ('3',N'001',N'Dien thoai Nokia',N'Da cu','50',N'Chiec','5');

select * from Tt_SanPham;


--
Select TenHang from Tt_Hang;
Select TenSP from Tt_SanPham;
--
select TenHang from Tt_Hang order by TenHang desc;
select * from Tt_SanPham order by Gia desc;
select * from Tt_Hang Where TenHang like'%ASUS%';
Select TenSP from Tt_SanPham where MaHang = 001;
--