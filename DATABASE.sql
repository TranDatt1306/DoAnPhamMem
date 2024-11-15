--drop database QuanLyNhanKhau
go
Create database QuanLyNhanKhau
go
use QuanLyNhanKhau
go 
CREATE FUNCTION auto_iddk_khaisinh()
RETURNS char(7)
AS
BEGIN
	DECLARE @id CHAR(7)
	IF (SELECT COUNT(maDangKyKhaiSinh) FROM DangKyKhaiSinh) = 0
		SET @id = '0'
	ELSE
		SELECT @id = MAX(RIGHT(maDangKyKhaiSinh, 3)) FROM DangKyKhaiSinh
		SELECT @id = CASE
			WHEN @id >= 0 and @id < 9 THEN 'DKKS00' + CONVERT(CHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 9 THEN 'DKKS0' + CONVERT(CHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 99 THEN 'DKKS' + CONVERT(CHAR, CONVERT(INT, @id) + 1)

		END
	RETURN @id
END
go
CREATE FUNCTION auto_iddk_khaitu()
RETURNS char(7)
AS
BEGIN
	DECLARE @id CHAR(7)
	IF (SELECT COUNT(maKhaiTu) FROM DangKyKhaiTu) = 0
		SET @id = '0'
	ELSE
		SELECT @id = MAX(RIGHT(maKhaiTu, 3)) FROM DangKyKhaiTu
		SELECT @id = CASE
			WHEN @id >= 0 and @id < 9 THEN 'DKKT00' + CONVERT(CHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 9 THEN 'DKKT0' + CONVERT(CHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 99 THEN 'DKKT' + CONVERT(CHAR, CONVERT(INT, @id) + 1)

		END
	RETURN @id
END
go
create table QuyenTruyCap(
	Ma_quyen char(3) primary key,
	Ten_quyen nvarchar(50)
);
go
create table TK_QuanTri(
	id_tkquantri char(5) primary key,
	MatKhau varchar(20),
	Ma_quyen char(3),
	FOREIGN KEY (Ma_quyen) REFERENCES QuyenTruyCap(Ma_quyen)
)
go
set dateformat dmy;
go

create table TK_NguoiDanChuHo(
	idHo char(7) primary key,
	MatKhau varchar(20),
	idChuHo char(10),
	--Foreign key (idChuHo) references  NhanKhau(maCongDan),
	HoTen nvarchar(100),
	Email varchar(100) CHECK (Email LIKE '%@%'),
	NgayCap date,
	Ma_quyen char(3),
	FOREIGN KEY (Ma_quyen) REFERENCES QuyenTruyCap(Ma_quyen),
	soLuongTV int
)
go

drop table DangKyKhaiSinh

create table DangKyKhaiSinh(
	maDangKyKhaiSinh char(7) default dbo.auto_iddk_khaisinh() primary key,
	idHo char(7),
	foreign key (idHo) references TK_NguoiDanChuHo(idHo),
	hoTen nvarchar(100),
	ngaySinh date,
	gioiTinh char(1) DEFAULT 'A' CHECK (gioiTinh IN ('A', 'N')),
	danToc nvarchar(20),
	quocTich nvarchar(20),
	noiSinh nvarchar(150),
	queQuan nvarchar(150),
	noiCuTru nvarchar(150),
	tenCha nvarchar(100),
	cccdCha char(12),
	tenMe nvarchar(100),
	cccdMe char(12),
	quanHe nvarchar(20),
	trangThaiDuyet char(1) DEFAULT '0' CHECK (trangThaiDuyet IN ('0','1', '2'))
);
go
create table NhanKhau(
	maCongDan char(10) primary key,
	idHo char(7),
	Foreign key (idHo) references TK_NguoiDanChuHo(idHo),
	tenCongDan nvarchar(100),
	cccd char(12),
	diaChi nvarchar(150),
	ngaySinh date,
	Email varchar(100) CHECK (Email LIKE '%@%'),
	gioiTinh char(1) DEFAULT 'A' CHECK (gioiTinh IN ('A', 'N')),
	sdt varchar(11),
	noiO nvarchar(150),
	noiSinh nvarchar(150),
	quanHe nvarchar(20),
	quocTich nvarchar(20),
	danToc nvarchar(20),
	ngheNghiep nvarchar(50),
	ghiChu nvarchar(200),
	maDangKyKhaiSinh char(7),
	foreign key (maDangKyKhaiSinh) references DangKyKhaiSinh(maDangKyKhaiSinh),
	trangthaiCuTru nvarchar(50)
)
go
create table DangKyTamTru(
	maTamTru char(7) primary key,
	idHo char(7),
	foreign key (idHo) references TK_NguoiDanChuHo(idHo),
	tenCongDan nvarchar(100),
	cccd char(12),
	diaChi nvarchar(100),
	ngaySinh date,
	Email varchar(100) CHECK (Email LIKE '%@%'),
	gioiTinh char(1) DEFAULT 'A' CHECK (gioiTinh IN ('A', 'N')),
	sdt varchar(11),
	noiO nvarchar(150),
	noiSinh nvarchar(150),
	noiDangKyTamTru nvarchar(150),
	quocTich nvarchar(20),
	danToc nvarchar(20),
	ngheNghiep nvarchar(50),
	ghiChu nvarchar(200),
	noiThuongTru nvarchar(150),
	ngayDangKy date,
	cccdMattruoc nvarchar(100),
	cccdMatSau nvarchar(100),
	trangThaiDuyet char(1) DEFAULT '1' CHECK (trangThaiDuyet IN ('1', '2'))
)
go
create table DangKyTamVang(
	maTamVang char(7) primary key,
	ngayDangKy date,
	noiDen nvarchar(150),
	lyDo nvarchar(100),
	maCongDan char(10),
	foreign key (maCongDan) references NhanKhau(maCongDan),
	ngayDi date,
    ngayVe date,
    CONSTRAINT check_ngayDi_ngayVe CHECK (ngayDi < ngayVe),
	trangThaiDuyet char(1) DEFAULT '1' CHECK (trangThaiDuyet IN ('1', '2'))
)
go
create table DangKyKhaiTu(
	maKhaiTu char(7) default dbo.auto_iddk_khaitu() primary key,
	idHo char(7),
	foreign key (idHo) references TK_NguoiDanChuHo(idHo),
	ngayMat date,
	ngayBaoTu date,
	CONSTRAINT check_ngayMat_ngayBaoTu CHECK (ngayMat <= ngayBaoTu),
	noiTu nvarchar(50),
	nguyenNhan nvarchar(100),
	maCongDan char(10),
	Foreign key (maCongDan) references NhanKhau(maCongDan),
	trangThaiDuyet char(1) DEFAULT '1' CHECK (trangThaiDuyet IN ('1', '2'))
)
go
create table ThongBao(
	id_tb char(10) primary key,
	TieuDe nvarchar(200),
	NoiDung nvarchar(500),
	ngayDang date,
	ngayHetHan date,
	CONSTRAINT check_NgayDangTB CHECK (ngayDang <= ngayHetHan),
	Anh varbinary,
	idNguoiDang char(5),
	Foreign key (idNguoiDang) references TK_QuanTri(id_tkquantri)
)
go
--Drop database QuanLyNhanKhau
--insert dữ liệu

INSERT INTO QuyenTruyCap (Ma_quyen, Ten_quyen) VALUES 
('Q01', N'admin'),
('Q02', N'Nhân viên phường'),
('Q03', N'Người dân chủ hộ');

go

INSERT INTO TK_QuanTri (id_tkquantri, MatKhau, Ma_quyen) VALUES 
('admin', 'admin01', 'Q01'),
('nvp01', 'nvp01', 'Q02'),
('nvp02', 'nvp02', 'Q02'),
('nvp03', 'nvp03', 'Q02'),
('nvp04', 'nvp04', 'Q02'),
('nvp05', 'nvp05', 'Q02');

go

INSERT INTO TK_NguoiDanChuHo (idHo, MatKhau, idChuHo, HoTen, Email, NgayCap, Ma_quyen) VALUES 
('HD001', 'HD001', 'CD101', N'Nguyễn Hải Long', 'nguyenhailong@email.com', '1992-01-01', 'Q03'),
('HD002', 'HD002', 'CD201', N'Mai Hà Trang', 'hatrang@email.com', '1997-10-02', 'Q03'),
('HD003', 'HD003', 'CD301', N'Nguyễn Hoàng Đức', 'hoangduc@email.com', '1998-01-01', 'Q03'),
('HD004', 'HD004', 'CD401', N'Bùi Tiến Dũng', 'dungbui@email.com', '1995-09-01', 'Q03'),
('HD005', 'HD005', 'CD501', N'Đỗ Duy Mạnh', 'manhgat@email.com', '1996-01-02', 'Q03'),
('HD006', 'HD006', 'CD601', N'Phạm Thị Hương', 'huongpham@email.com', '1990-05-15', 'Q03'),
('HD007', 'HD007', 'CD701', N'Ngô Văn Bình', 'binhngo@email.com', '1988-12-10', 'Q03'),
('HD008', 'HD008', 'CD801', N'Trần Thị Hằng', 'hangtran@email.com', '1993-03-25', 'Q03'),
('HD009', 'HD009', 'CD901', N'Lê Minh Khánh', 'khanhle@email.com', '1994-07-20', 'Q03'),
('HD010', 'HD010', 'CD1001', N'Vũ Thị Hà', 'havu@email.com', '1999-09-05', 'Q03');

go


-- Chèn dữ liệu vào bảng NhanKhau
INSERT INTO NhanKhau (maCongDan,idHo, tenCongDan, cccd, diaChi, ngaySinh, Email, gioiTinh, sdt, noiO, noiSinh, quanHe, quocTich, danToc, ngheNghiep, ghiChu, maDangKyKhaiSinh, trangthaiCuTru) VALUES 
('CD101', 'HD001',N'Nguyễn Hải Long', '123456789012', N'123 Cao Thắng', '1992-01-01', 'nguyenhailong@email.com', 'A', '0123456789', N'123 Cao Thắng', N'Hà Nội', N'Chủ hộ', N'Việt Nam', 'Kinh', N'Kinh doanh', '', null, N'Thường trú'),
('CD102', 'HD001',N'Nguyễn Kim Ngân', '987654321098', N'123 Cao Thắng', '1992-10-05', 'ngan@email.com', 'N', '0905305505', N'123 Cao Thắng', N'Hà Nội', N'Vợ', N'Việt Nam', N'Kinh', N'Kinh doanh', '', null, N'Thường trú'),
('CD201', 'HD002',N'Mai Hà Trang', '210000321890', N'05 Ông Ích Khiêm', '1997-10-02', 'hatrang@email.com', 'N', '0932202102', N'05 Ông Ích Khiêm', N'TP.Hồ Chí Minh', N'Chủ hộ', N'Việt Nam', 'Kinh', N'Giáo viên', '', null, N'Thường trú'),
('CD202', 'HD002',N'Nguyễn Văn Anh', '235665552110', N'05 Ông Ích Khiêm', '1996-04-02', 'vananh@email.com', 'N', '0935535635', N'05 Ông Ích Khiêm', N'TP.Hồ Chí Minh', N'Chồng', N'Việt Nam', 'Kinh', N'Cầu thủ', '', null, N'Thường trú'),
('CD203', 'HD002',N'Mai Ngọc Bảo', '211303420111', N'05 Ông Ích Khiêm', '1965-07-02', 'ngocbao@email.com', 'A', '0902102302', N'05 Ông Ích Khiêm', N'TP.Hồ Chí Minh', N'Cha', N'Việt Nam', 'Kinh', N'Nghỉ hưu', '', null, N'Thường trú'),
('CD301', 'HD003', N'Nguyễn Hoàng Đức', '345678901234', N'789 Lê Lai', '1998-01-01', 'hoangduc@email.com', 'A', '0987654321', N'789 Lê Lai', N'TP.Hồ Chí Minh', N'Chủ hộ', N'Việt Nam', 'Kinh', N'Sinh viên', '', null, N'Tạm trú'),
('CD401', 'HD004', N'Bùi Tiến Dũng', '456789012345', N'456 Nguyễn Huệ', '1995-09-01', 'dungbui@email.com', 'A', '0123456789', N'456 Nguyễn Huệ', N'Hà Nội', N'Chủ hộ', N'Việt Nam', 'Kinh', N'Lập trình viên', '', null, N'Thường trú'),
('CD501', 'HD005', N'Đỗ Duy Mạnh', '567890123456', N'789 Trần Hưng Đạo', '1996-01-02', 'manhgat@email.com', 'A', '0909090909', N'789 Trần Hưng Đạo', N'Đà Nẵng', N'Chủ hộ', N'Việt Nam', N'Kinh', N'Ca sĩ', '', null, N'Thường trú'),
('CD601', 'HD006', N'Phạm Thị Hương', '678901234567', N'123 Bà Triệu', '1990-05-15', 'huongpham@email.com', 'N', '0978097865', N'123 Bà Triệu', N'Hà Nội', N'Chủ hộ', N'Việt Nam', N'Kinh', N'Giáo viên', '', null, N'Thường trú'),
('CD701', 'HD007', N'Ngô Văn Bình', '789012345678', N'456 Nguyễn Văn Linh', '1988-12-10', 'binhngo@email.com', 'A', '0912345678', N'456 Nguyễn Văn Linh', N'TP.Hồ Chí Minh', N'Chủ hộ', N'Việt Nam', 'Kinh', N'Doanh nhân', '', null, N'Tạm trú');
go

-- Chèn dữ liệu vào bảng DangKyTamTru

INSERT INTO DangKyTamTru (maTamTru,idHo, tenCongDan, cccd, diaChi, ngaySinh, Email, gioiTinh, sdt, noiO, noiSinh, noiDangKyTamTru, quocTich, danToc, ngheNghiep, ghiChu, noiThuongTru,ngayDangKy,cccdMattruoc,cccdMatSau, trangThaiDuyet) VALUES 
('DKTT001','HD001', N'Đoàn Văn Hậu', '211155532525', N'123 Cao Thắng', '1999-03-01', 'vanhau@email.com', 'A', '0903523123', N'123 Cao Thắng', N'Thái Bình', N'06 Trần Cao Vân', N'Việt Nam', 'Kinh', N'Sinh viên', '', N'Phố Hàng Da, Hà Nội','2023-12-10',NULL,NULL, '1'),
('DKTT002','HD002', N'Nguyễn Tuấn Hải', '233355532202', N'05 Ông Ích Khiêm', '2000-05-10', 'tuanhai@email.com', 'A', '0903523321', N'05 Ông Ích Khiêm', N'TP.Hồ Chí Minh', N'05 Ông Ích Khiêm', N'Việt Nam', 'Kinh', N'Sinh viên', '', N' Hẻm 796 Sư Vạn Hạnh, Quận 10,TP.HCM','2024-11-01',NULL,NULL, '1'),
('DKTT003','HD001', N'Đoàn Văn Hậu', '211155532525', N'01 Nguyễn Tất Thành', '1999-03-01', 'vanhau@email.com', 'A', '0903523123', N'01 Nguyễn Tất Thành', N'Thái Bình', N'01 Nguyễn Tất Thành', N'Việt Nam', 'Kinh', N'Sinh viên', '', N'Phố Hàng Da, Hà Nội','2024-01-20',NULL,NULL, '1'),
('DKTT004', 'HD003', N'Nguyễn Thị Hằng', '234567890123', N'789 Lê Lai', '1998-02-15', 'hangnguyen@email.com', 'N', '0978123456', N'789 Lê Lai', N'Hồ Chí Minh', N'789 Lê Lai', N'Việt Nam', 'Kinh', N'Sinh viên', '', N'123 Trần Hưng Đạo, Quận 1, TP.Hồ Chí Minh', '2024-02-20',NULL,NULL, '1'),
('DKTT005', 'HD004', N'Nguyễn Thành Trung', '345678901234', N'456 Nguyễn Huệ', '1996-10-20', 'thanhtrung@email.com', 'A', '0905333222', N'456 Nguyễn Huệ', N'Hà Nội', N'456 Nguyễn Huệ', N'Việt Nam', 'Kinh', N'Giáo viên', '', N'56 Lê Lai, Quận 3, TP.Hồ Chí Minh', '2023-11-15',NULL,NULL, '1'),
('DKTT006', 'HD005', N'Phan Thị Thủy Tiên', '456789012345', N'789 Trần Hưng Đạo', '1996-03-25', 'thuytien@email.com', 'N', '0988222333', N'789 Trần Hưng Đạo', N'Đà Nẵng', N'789 Trần Hưng Đạo', N'Việt Nam', 'Kinh', N'Ca sĩ', '', N'12 Điện Biên Phủ, Quận 5, TP.Hồ Chí Minh', '2023-09-01',NULL,NULL, '1'),
('DKTT007', 'HD001', N'Đỗ Văn Quân', '567890123456', N'789 Lê Lai', '1992-05-12', 'quan@email.com', 'A', '0909876543', N'789 Lê Lai', N'Thái Bình', N'789 Lê Lai', N'Việt Nam', 'Kinh', N'Trình dược viên', '', N'20 Hải Bối, Hải Dương', '2024-03-10',NULL,NULL, '1'),
('DKTT008', 'HD002', N'Lê Thị Mỹ Linh', '678901234567', N'05 Ông Ích Khiêm', '1998-09-30', 'mylinh@email.com', 'N', '0905222111', N'05 Ông Ích Khiêm', N'TP.Hồ Chí Minh', N'05 Ông Ích Khiêm', N'Việt Nam', 'Kinh', N'Sinh viên', '', N'50 Lê Lai, Quận 1, TP.Hồ Chí Minh', '2024-04-05',NULL,NULL, '1'),
('DKTT009', 'HD003', N'Nguyễn Văn Nam', '789012345678', N'789 Lê Lai', '2001-12-05', 'vannam@email.com', 'A', '0905999888', N'789 Lê Lai', N'Hồ Chí Minh', N'789 Lê Lai', N'Việt Nam', 'Kinh', N'Học sinh', '', N'15 Huỳnh Thúc Kháng, Đà Nẵng', '2023-10-12',NULL,NULL, '1'),
('DKTT010', 'HD004', N'Lê Thị Hồng Nhung', '890123456789', N'456 Nguyễn Huệ', '1995-11-15', 'hongnhung@email.com', 'N', '0978123456', N'456 Nguyễn Huệ', N'Hà Nội', N'456 Nguyễn Huệ', N'Việt Nam', 'Kinh', N'Sinh viên', '', N'25 Bà Triệu, Quận 1, TP.Hồ Chí Minh', '2024-05-20',NULL,NULL, '1');


go


-- Chèn dữ liệu vào bảng ThongBao
INSERT INTO ThongBao (id_tb, TieuDe, NoiDung, ngayDang, ngayHetHan, Anh, idNguoiDang) VALUES 
('TB001', 'Thông báo quan trọng', 'Nội dung thông báo quan trọng...', '2024-01-20', '2024-01-27', NULL, 'admin'),
('TB002', 'Thông báo sự kiện', 'Nội dung thông báo sự kiện...', '2024-01-21', '2024-01-27', NULL, 'nvp01'),
('TB003', 'Thông báo quan trọng', 'Nội dung thông báo quan trọng...', '2024-01-22', '2024-01-27', NULL, 'admin'),
('TB004', 'Thông báo sự kiện', 'Nội dung thông báo sự kiện...', '2024-01-23', '2024-01-27', NULL, 'nvp01'),
('TB005', 'Thông báo quan trọng', 'Nội dung thông báo quan trọng...', '2024-01-24', '2024-01-27', NULL, 'admin'),
('TB006', 'Thông báo sự kiện', 'Nội dung thông báo sự kiện...', '2024-01-25', '2024-01-27', NULL, 'nvp01');

go

--Proc Lấy 5 Thông báo mới nhất
CREATE PROCEDURE LayThongBaoMoiNhat
AS
BEGIN
    SELECT TOP 5
        id_tb,
        TieuDe,
        NoiDung,
        ngayDang,
        ngayHetHan,
        Anh,
        idNguoiDang
    FROM ThongBao
    WHERE ngayHetHan >= GETDATE()  
    ORDER BY ngayDang DESC;
END;
EXEC LayThongBaoMoiNhat;
 
go 

--Tạo Proc lấy Thông tin Tạm trú ngày gần nhất
CREATE PROCEDURE GetThongTinThuongTru
    @cccd char(12)
AS
BEGIN
    DECLARE @cccdResult char(12)
    DECLARE @tenCongDanResult nvarchar(100)
    DECLARE @thongTinThuongTruResult nvarchar(150)

    SELECT TOP 1
        @cccdResult = cccd,
        @tenCongDanResult = tenCongDan,
        @thongTinThuongTruResult = noiO
    FROM DangKyTamTru
    WHERE cccd = @cccd
    ORDER BY ngayDangKy DESC;

    SELECT 
        @cccdResult AS cccd,
        @tenCongDanResult AS tenCongDan,
        @thongTinThuongTruResult AS ThongTinThuongTru;
END;

go

--Test proc lấy Thông tin Tạm trú ngày gần nhất
DECLARE @cccdInput char(12) = '211155532525';
EXEC GetThongTinThuongTru @cccd = @cccdInput;

go

--Trigger đổ dữ liệu từ Đăng ký khai sinh vô nhân khẩu khi Hộ đó mới khai sinh thành viên mới
CREATE TRIGGER tr_DangKyKhaiSinh
ON DangKyKhaiSinh
AFTER UPDATE, INSERT
AS
BEGIN
    SET NOCOUNT ON;

    IF UPDATE(trangThaiDuyet)
    BEGIN
        INSERT INTO NhanKhau (maCongDan, idHo, tenCongDan, cccd, diaChi, ngaySinh, Email, gioiTinh, sdt, noiO, noiSinh, quanHe, quocTich, danToc, ngheNghiep, ghiChu, maDangKyKhaiSinh, trangthaiCuTru)
        SELECT
           'CD'+ CAST((SELECT MAX(CAST(SUBSTRING(maCongDan, 3, LEN(maCongDan)-2) AS INT)) + 1
                  FROM NhanKhau
                  WHERE idHo = DangKyKhaiSinh.idHo) AS NVARCHAR(10)) AS maCongDan, 
            DangKyKhaiSinh.idHo,
            DangKyKhaiSinh.hoTen,
            NULL,
            DangKyKhaiSinh.noiCuTru,
            DangKyKhaiSinh.ngaySinh,
            NULL,
            DangKyKhaiSinh.gioiTinh,
            NULL,
            DangKyKhaiSinh.queQuan,
            DangKyKhaiSinh.noiSinh,
            DangKyKhaiSinh.quanHe, 
            DangKyKhaiSinh.quocTich,
            DangKyKhaiSinh.danToc,
            NULL,
            NULL,
            DangKyKhaiSinh.maDangKyKhaiSinh,
            'Thuong Tru'
        FROM
            INSERTED DangKyKhaiSinh
        WHERE
            DangKyKhaiSinh.trangThaiDuyet = '2';
    END
END;

go


--Insert dữ liệu Đăng ký khai sinh
INSERT INTO DangKyKhaiSinh (maDangKyKhaiSinh,idHo, hoTen, ngaySinh, gioiTinh, danToc, quocTich, noiSinh, queQuan, noiCuTru, tenCha, cccdCha, tenMe, cccdMe,quanHe,trangThaiDuyet) VALUES 
(default,'HD001', N'Nguyễn An Hải Đường', '2022-04-03', 'N', N'Kinh', N'Việt Nam', N'Đà Nẵng', N'Hà Nội', N'Đà Nẵng', N'Nguyễn Hải Long', '123456789012', N'Nguyễn Kim Ngân', '987654321098',N'Con','2'),
(default,'HD002', N'Nguyễn Anh Minh', '2022-04-03', 'N', N'Kinh', N'Việt Nam', N'Đà Nẵng', N'TP.Hồ Chí Minh', N'Đà Nẵng', N'Nguyễn Văn Anh', '235665552110', N'Mai Hà Trang', '210000321890',N'Con','2');


go

--Cập nhật trạng thái của cư trú của người đã được duyệt Khai tử 
CREATE TRIGGER UpdateTrangThaiCuTru_KhaiTu
ON DangKyKhaiTu
AFTER INSERT
AS
BEGIN
    UPDATE NhanKhau
    SET trangthaiCuTru = N'Đã mất'
    WHERE maCongDan IN (SELECT maCongDan FROM DangKyKhaiTu)
          AND EXISTS (SELECT 1 FROM DangKyKhaiTu WHERE trangThaiDuyet = '2');
END;

go

-- Chèn dữ liệu vào bảng DangKyKhaiTu
INSERT INTO DangKyKhaiTu (maKhaiTu,idHo, ngayMat, ngayBaoTu, noiTu, nguyenNhan, maCongDan, trangThaiDuyet) VALUES 
(default,'HD002', '2023-12-20', '2024-01-20', N'Bệnh viện X', N'Đột quỵ', 'CD203', '2');

go
--Kiểm tra trigger
select * from NhanKhau
where maCongDan='CD203'

go

--Chuyển đổi trang thái cư trú cho người đăng ký Tạm Vắng
CREATE TRIGGER UpdateTrangThaiCuTru_TamVang
ON DangKyTamVang
AFTER UPDATE,INSERT
AS
BEGIN
    DECLARE @CurrentDate date
    SET @CurrentDate = GETDATE()

    -- Print debugging information
    PRINT 'Trigger UpdateTrangThaiCuTru_TamVang is activated.'

    UPDATE NhanKhau
    SET trangthaiCuTru = 
        CASE 
            WHEN DangKyTamVang.trangThaiDuyet = '2' AND DangKyTamVang.ngayVe > @CurrentDate THEN N'Tạm vắng'
            WHEN DangKyTamVang.trangThaiDuyet = '2' AND DangKyTamVang.ngayVe = @CurrentDate THEN N'Thường trú'
            ELSE NhanKhau.trangthaiCuTru
        END
    FROM NhanKhau 
    INNER JOIN inserted DangKyTamVang ON NhanKhau.maCongDan = DangKyTamVang.maCongDan
    WHERE DangKyTamVang.trangThaiDuyet = '2';

END;

go

-- Chèn dữ liệu vào bảng DangKyTamVang
INSERT INTO DangKyTamVang (maTamVang, ngayDangKy, noiDen, lyDo, maCongDan, ngayDi, ngayVe, trangThaiDuyet) VALUES 
('DKTV001', '2023-01-06', 'Thành phố Hồ Chí Minh', 'Đi làm', 'CD202', '2023-02-01', '2025-02-01', '2');

go

select * from NhanKhau
where maCongDan='CD202'

go




---Update Số lượng vào bảng TK_NguoiDanChuHo
UPDATE TK_NguoiDanChuHo
SET soLuongTV = (
    SELECT COUNT(*)
    FROM NhanKhau
    WHERE NhanKhau.idHo = TK_NguoiDanChuHo.idHo
)
WHERE EXISTS (
    SELECT 1
    FROM NhanKhau
    WHERE NhanKhau.idHo = TK_NguoiDanChuHo.idHo
);


go



--Tăng số lượng Thành viên khi Đăng ký khai sinh
CREATE TRIGGER UpdateSoLuongTV_KhaiSinh
ON DangKyKhaiSinh
AFTER INSERT
AS
BEGIN
    DECLARE @idHo CHAR(7)

    SELECT @idHo = i.idHo
    FROM inserted i

    UPDATE TK_NguoiDanChuHo
    SET soLuongTV = soLuongTV + 1
    WHERE idHo = @idHo
      AND EXISTS (
          SELECT 1
          FROM inserted
          WHERE trangThaiDuyet = '2'
      )
END;

go

--Test trigger
select * from TK_NguoiDanChuHo

go
--Giảm số lượng Thành viên khi Đăng ký khai tử
CREATE TRIGGER UpdateSoLuongTV_KhaiTu
ON DangKyKhaiTu
AFTER INSERT
AS
BEGIN
    DECLARE @idHo CHAR(5)

    SELECT @idHo = DangKyKhaiTu.idHo
    FROM inserted DangKyKhaiTu

    UPDATE TK_NguoiDanChuHo
    SET soLuongTV = CASE
                        WHEN soLuongTV > 0 AND EXISTS (
                            SELECT 1
                            FROM inserted
                            WHERE trangThaiDuyet = '2' AND idHo = @idHo
                        ) THEN soLuongTV - 1
                        ELSE soLuongTV
                    END
    WHERE idHo = @idHo
END;

go


--Test
select * from DangKyKhaiSinh
select * from DangKyKhaiTu
Select idHo from NhanKhau where cccd='123456789012'
SET DATEFORMAT ymd;
INSERT INTO DangKyKhaiSinh (maDangKyKhaiSinh,idHo, hoTen, ngaySinh, gioiTinh, danToc, quocTich, noiSinh, queQuan, noiCuTru, tenCha, cccdCha, tenMe, cccdMe,quanHe,trangThaiDuyet) VALUES 
(default,'HD002', N'Nguyễn An Hải Đườndasg', '2022-04-03', 'N', N'Kinh', N'Việt Nam', N'Đà Nẵng', N'Hà Nội', N'Đà Nẵng', N'Nguyễn Hải Long', '123456789012', N'Nguyễn Kim Ngân', '987654321098',N'Con','2');
	
	select * from DangKyKhaiSinh where maDangKyKhaiSinh = 'DKKS002'
INSERT INTO DangKyKhaiTu (maKhaiTu,idHo, ngayMat, ngayBaoTu, noiTu, nguyenNhan, maCongDan, trangThaiDuyet) VALUES 
(default,'HD002', '2023-12-20', '2024-01-20', N'Bệnh viện X', N'Đột quỵ', 'CD203', '2');
UPDATE DangKyKhaiSinh 
SET 
    hoTen = N'Nguyễn Đyuwcs'
	Duc 
N
2022-04-03
Kinh
HaiChau
Vietnam
Nguyen
987654321098
Leng
123456789012
Hoa Khanh
HD001 
WHERE 
    maDangKyKhaiSinh = 'DKKS001';
	update DangKyKhaiSinh set hoten= N'	đức ',
							gioitinh='N',
							NgaySinh='2022-04-03',
							Dantoc='Kinh',
							noisinh='HaiChau',
							quoctich='Vietnam',
							tenme='Nguyen',
							cccdme='987654321098',
							tencha='Leng',
							cccdcha='123456789012',
							noicutru='Hoa Khanh',
							idHo='HD001'
							where maDangKyKhaiSinh='DKKS001'

select * from DangKyKhaiSinh where maKhaiTu = 'DKKT001'
UPDATE DangKyKhaiTu SET 
				maCongDan='CD203' ,
			    ngayMat = getdate() ,
			    ngayBaoTu = getdate() ,
			    noiTu = 'dsd',
			   nguyenNhan ='adsdad' 
			    WHERE maKhaiTu ='DKKT001'
				select * from nhankhau
				go
				DELETE FROM DangKyKhaiSinh WHERE maDangKyKhaiSinh = 'DKKS006';
				select * from DangKyKhaiSinh where maDangKyKhaiSinh = 'DKKS007'
				delete from DangKyKhaiSinh where maDangKyKhaiSinh='DKKS006'
				select * from nhankhau


				select * from TK_NguoiDanChuHo 
				idHo    MatKhau   idChuHo    HoTen       Email       NgayCap    Ma_quyen soLuongTV
				Select * from TK_NguoiDanChuHo where idHo='HD001' or HoTen='searchkey' or Email='searchkey'