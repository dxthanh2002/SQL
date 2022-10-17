create table Asm4_NHACUNGCAP(
MaNhaCC int primary key identity(1,1),
TenNhaCC nvarchar(255) not null,
DiaChi nvarchar(255) not null,
SoDT varchar(15) not null unique check(SoDT like '0%'),
MaSoThue varchar(255) not null
);
create table Asm4_LOAIDICHVU(
MaLoaiDV int primary key identity(1,1),
TenLoaiDV nvarchar(255) not null,
);
create table Asm4_MUCPHI(
MaMP int primary key identity(1,1),
DonGia nvarchar(255) not null,
MoTa nvarchar(255) not null,
);
create table Asm4_DONGXE(
DongXe int primary key identity(1,1),
HangXe nvarchar(255) not null,
SoChoNgoi nvarchar(255) not null
);
create table Asm4_DANGKYCUNGCAP(
MaDKCC int primary key identity(1,1),
MaNhaCC int not null foreign key references Asm4_NHACUNGCAP(MaNhaCC),
MaLoaiDV int not null foreign key references Asm4_LOAIDICHVU(MaLoaiDV),
DongXe int not null foreign key references Asm4_DONGXE(DongXe),
MaMP int not null foreign key references Asm4_MUCPHI(MaMP),
NgayBatDauCungCap date not null,
NgayKetThucCungCap date not null,
SoLuongXeDangKy date not null,
);
