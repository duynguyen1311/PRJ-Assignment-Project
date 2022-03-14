
--select MaLop,TenLop,MaKhoa,MaHeDT,TenHeDT,MaKhoaHoc from Lop l JOIN HeDT h ON l.MaHeDT = h.MaHeDT


Create table Account(
	Id int identity(1,1),
	username nvarchar(50),
	password nvarchar(50),
	displayName nvarchar(150),
	email varchar(150),
	phone varchar(50)
);


Update Lop
Set TenLop='Kinh teeee', MaKhoa='A2', MaHeDT = 'C01',MaKhoaHoc = 'K2'
Where MaLop = 'KT1'

select * from HeDT
select MaLop,TenLop,MaHeDT,MaKhoa,MaKhoaHoc from Lop where MaLop = 'KT1'
select * from khoa where MaKhoa = ?


select * from Account where username = ? and password = ?

delete from Account
where Id = 3

insert into Account
values('mra','123','MRA','mra@gmail.com','0980998761','USER')

select * from KhoaHoc 
select * from Lop
select * from Khoa

Delete from Khoa where MaKhoa ='SA'
Delete from KhoaHoc where MaKhoaHoc = 'K10'
Delete from Khoa where MaKhoa = 'A2'
Delete from MonHoc where id = '32'
Delete from SinhVien where MaSV = '0241060158'
Delete from Lop where MaLop = 'TK2'
Delete from Diem where MaMH = 'H6'

select * from Diem

select top(3) MaSV, SUM(DiemLan1) as sumdiem
from Diem
group by MaSV
order by sumdiem desc

select * from Account where role = 'USER'
select * from MonHoc 
Select * from SinhVien

select COUNT(*) from Khoa
select COUNT(*) from Lop
select COUNT(*) from SinhVien
select COUNT(*) from MonHoc


Update SinhVien	
Set TenSV = ?, GioiTinh=?, NgaySinh=?, QueQuan = ?, MaLop = ?, SDT = ?, Email = ?
Where MaSV=?

select * from Diem where MaSV ='111111' and MaMH = 'A1'
select MaKhoa, TenKhoa from khoa
select MaKhoaHoc,TenKhoaHoc from KhoaHoc
select MaHeDT,TenHeDT from HeDT
select MaMH from MonHoc
select MaSV from SinhVien
select MaLop from Lop

select COUNT(*) from Diem where MaSV LIKE '%a%' or MaMH LIKE '%S%' 
select COUNT(*) from Khoa where MaKhoa LIKE '%K%' or TenKhoa LIKE '%nh%' 
select COUNT(*) from MonHoc where MaMH LIKE '%H%' or TenMH LIKE '%nh%' 

(SELECT lop.MaLop,lop.TenLop,HeDT.TenHeDT,Khoa.MaKhoa,khoa.TenKhoa,KhoaHoc.MaKhoaHoc,KhoaHoc.TenKhoaHoc, HeDT.MaHeDT
FROM dbo.HeDT INNER JOIN
dbo.Lop ON dbo.HeDT.MaHeDT = dbo.Lop.MaHeDT INNER JOIN
dbo.Khoa ON dbo.Lop.MaKhoa = dbo.Khoa.MaKhoa INNER JOIN
dbo.KhoaHoc ON dbo.Lop.MaKhoaHoc = dbo.KhoaHoc.MaKhoaHoc)

select * from r

select * from rs where rs.MaLop = 'KT5'


with x as(select ROW_NUMBER() over (order by MaLop ASC) as r
,lop.MaLop,lop.TenLop,HeDT.TenHeDT,Khoa.MaKhoa,khoa.TenKhoa,KhoaHoc.MaKhoaHoc,KhoaHoc.TenKhoaHoc, HeDT.MaHeDT
from dbo.HeDT INNER JOIN
dbo.Lop ON dbo.HeDT.MaHeDT = dbo.Lop.MaHeDT INNER JOIN
dbo.Khoa ON dbo.Lop.MaKhoa = dbo.Khoa.MaKhoa INNER JOIN
dbo.KhoaHoc ON dbo.Lop.MaKhoaHoc = dbo.KhoaHoc.MaKhoaHoc
 where lop.MaLop LIKE '%M%' or lop.TenLop LIKE 'Kh' or HeDT.TenHeDT LIKE 'Kh' or Khoa.TenKhoa LIKE 'Kh')
select * from x where r between 1 and 2

with x as(select ROW_NUMBER() over (order by id ASC) as r
,* from MonHoc where MaMH LIKE '%%' or TenMH LIKE '%%')
select * from x where r between 1 and 3


with x as(select ROW_NUMBER() over (order by MaSV ASC) as r
,* from SinhVien where MaSV LIKE '%%')
select * from x where r between 1 and 3

select id,MaMH,TenMH,SoTrinh from MonHoc where id = 1

Update MonHoc
Set MaMH = ?, TenMH=?, SoTrinh=?
Where id=?

Update Diem
Set MaMH = ?, HocKy=?, DiemLan1=?, DiemLan2 = ?
Where MaSV=?

select id,MaMH,TenMH,SoTrinh from MonHoc order by id ASC

insert into MonHoc(MaMH,TenMH,SoTrinh)
values ('H2','Mon hoc moi',2)

insert into Diem(MaSV,MaMH,HocKy,DiemLan1,DiemLan2)
values ('0241060218','SQL',1,1,1)

delete from Diem where MaSV IS NULL

insert into Lop(MaLop,TenLop,MaKhoa,MaHeDT,MaKhoaHoc)
values ('KT2','Kinh tế 2','KT','B01','K10')

insert into Khoa
values('HA',N'HÌnh ảnh',N'Tầng 5 nhà B',043768890)

insert into SinhVien
values('HA',N'HÌnh ảnh',N'Tầng 5 nhà B',043768890)


select * from SinhVien where MaSV = ?
select * from Diem
select id,MaMH,TenMH,SoTrinh from MonHoc

select * from Lop l JOIN Khoa k 
on l.MaKhoa = k.MaKhoa JOIN KhoaHoc kh 
on l.MaKhoaHoc = kh.MaKhoaHoc

select MaLop,TenLop,MaHeDT,TenKhoa,TenKhoaHoc from Lop l JOIN Khoa k 
on l.MaKhoa = k.MaKhoa JOIN KhoaHoc kh 
on l.MaKhoaHoc = kh.MaKhoaHoc

INSERT INTO Lop(MaLop,TenLop,MaKhoa,MaHeDT,MaKhoaHoc)
VALUES ('MT5','MÁy Tính 5','CNTT','A01','K2');

--Lop
Alter table Lop drop constraint FK__Lop__MaKhoa__117F9D94
Alter table Lop drop constraint FK__Lop__MaHeDT__1273C1CD
Alter table Lop drop constraint FK__Lop__MaKhoaHoc__1367E606
--SinhVien
Alter table SinhVien drop constraint FK__SinhVien__MaLop__182C9B23
--Diem
Alter table Diem drop constraint FK__Diem__MaMH__1B0907CE
Alter table Diem drop constraint FK__Diem__MaSV__1A14E395


--Lop
Alter table Lop
add constraint FK__Lop__MaKhoa__Cascade__Delete
foreign key (MaKhoa) references Khoa(MaKhoa) on delete cascade 

Alter table Lop
add constraint FK__Lop__MaHeDT__Cascade__Delete
foreign key (MaHeDT) references HeDT(MaHeDT) on delete cascade 

Alter table Lop
add constraint FK__Lop__MaKhoaHoc__Cascade__Delete
foreign key (MaKhoaHoc) references KhoaHoc(MaKhoaHoc) on delete cascade 

--SinhVien
Alter table SinhVien
add constraint FK__SinhVien__MaLop__Cascade__Delete
foreign key (MaLop) references Lop(MaLop) on delete cascade 

--Diem
Alter table Diem
add constraint FK__Diem__MaMH__Cascade__Delete
foreign key (MaMH) references MonHoc(MaMH) on delete cascade 

Alter table Diem
add constraint FK__Diem__MaSV__Cascade__Delete
foreign key (MaSV) references SinhVien(MaSV) on delete cascade 




