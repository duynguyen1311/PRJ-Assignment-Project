
--select MaLop,TenLop,MaKhoa,MaHeDT,TenHeDT,MaKhoaHoc from Lop l JOIN HeDT h ON l.MaHeDT = h.MaHeDT

SELECT lop.MaLop,lop.TenLop,HeDT.TenHeDT,Khoa.MaKhoa,khoa.TenKhoa,KhoaHoc.MaKhoaHoc,KhoaHoc.TenKhoaHoc, HeDT.MaHeDT
FROM dbo.HeDT INNER JOIN
dbo.Lop ON dbo.HeDT.MaHeDT = dbo.Lop.MaHeDT INNER JOIN
dbo.Khoa ON dbo.Lop.MaKhoa = dbo.Khoa.MaKhoa INNER JOIN
dbo.KhoaHoc ON dbo.Lop.MaKhoaHoc = dbo.KhoaHoc.MaKhoaHoc
where MaLop = 'KT1'

Update Lop
Set TenLop='Kinh teeee', MaKhoa='A2', MaHeDT = 'C01',MaKhoaHoc = 'K2'
Where MaLop = 'KT1'

select * from HeDT
select MaLop,TenLop,MaHeDT,MaKhoa,MaKhoaHoc from Lop where MaLop = 'KT1'
select * from khoa where MaKhoa = ?
select * from KhoaHoc 
select * from MonHoc 
Select * from SinhVien

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

select * from SinhVien LIMIT 5 OFFSET 5;

select COUNT(*) from SinhVien where MaSV LIKE ? or TenSV LIKE ? or QueQuan LIKE ?

with x as(select ROW_NUMBER() over (order by MaSV ASC) as r
,* from SinhVien where MaSV LIKE '%02%')
select * from x where r between 1 and 3

select id,MaMH,TenMH,SoTrinh from MonHoc

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