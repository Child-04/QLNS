CREATE DATABASE QuanLyNhanSu;
GO
USE QuanLyNhanSu;

GO
/****** Object:  Table [dbo].[CapNhatLuongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapNhatLuongs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongHienTai] [int] NOT NULL,
	[LuongSauCapNhat] [int] NOT NULL,
	[BHXH] [float] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[PhuCap] [float] NULL,
	[ThueThuNhap] [float] NULL,
	[NgayCapNhat] [datetime] NULL,
	[HeSoLuong] [float] NULL,
 CONSTRAINT [PK_CapNhatLuongs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapNhatTrinhDoHocVans]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapNhatTrinhDoHocVans](
	[MaCapNhat] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[MaTrinhDoTruoc] [varchar](30) NOT NULL,
	[MaTrinhDoCapNhat] [varchar](30) NOT NULL,
 CONSTRAINT [PK_CapNhatTrinhDoHocVans] PRIMARY KEY CLUSTERED 
(
	[MaCapNhat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietLuongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLuongs](
	[MaChiTietBangLuong] [varchar](30) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongCoBan] [float] NOT NULL,
	[BHXH] [float] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[PhuCap] [float] NULL,
	[ThueThuNhap] [float] NULL,
	[TienThuong] [int] NULL,
	[TienPhat] [int] NULL,
	[NgayNhanLuong] [datetime] NOT NULL,
	[TongTienLuong] [varchar](30) NULL,
 CONSTRAINT [PK_ChiTietLuongs] PRIMARY KEY CLUSTERED 
(
	[MaChiTietBangLuong] ASC,
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVuNhanViens]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVuNhanViens](
	[MaChucVuNV] [varchar](30) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
	[HSPC] [float] NULL,
 CONSTRAINT [PK_ChucVuNhanViens] PRIMARY KEY CLUSTERED 
(
	[MaChucVuNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenNganhs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenNganhs](
	[MaChuyenNganh] [varchar](30) NOT NULL,
	[TenChuyenNganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuyenNganhs] PRIMARY KEY CLUSTERED 
(
	[MaChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongs](
	[MaHopDong] [varchar](30) NOT NULL,
	[LoaiHopDong] [nvarchar](50) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_HopDongs] PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhenThuongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhenThuongs](
	[MaNhanVien] [varchar](30) NOT NULL,
	[ThangThuong] [datetime] NOT NULL,
	[LyDo] [nvarchar](max) NULL,
	[TienThuong] [int] NULL,
 CONSTRAINT [PK_KhenThuongs] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KyLuats]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyLuats](
	[MaNhanVien] [varchar](30) NOT NULL,
	[LyDo] [nvarchar](max) NULL,
	[ThangKiLuat] [datetime] NOT NULL,
	[TienKyLuat] [int] NULL,
 CONSTRAINT [PK_KyLuats] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuanChuyenNhanViens]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuanChuyenNhanViens](
	[MaNhanVien] [varchar](30) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NgayChuyen] [datetime] NOT NULL,
	[LyDoChuyen] [nvarchar](max) NULL,
	[PhongBanChuyen] [varchar](30) NULL,
	[PhongBanDen] [varchar](30) NULL,
 CONSTRAINT [PK_LuanChuyenNhanViens] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongA1GV]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongA1GV](
	[BacLuong] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_LuongA1GV] PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongA21PGS]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongA21PGS](
	[BacLuong] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_LuongA21PGS] PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongA31GS]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongA31GS](
	[BacLuong] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_LuongA31GS] PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luongs](
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongToiThieu] [int] NOT NULL,
	[HeSoLuong] [float] NULL,
	[BHXH] [float] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[PhuCap] [float] NULL,
	[ThueThuNhap] [float] NULL,
 CONSTRAINT [PK_Luongs] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] IDENTITY(100,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[contens] [nvarchar](max) NULL,
	[image] [nvarchar](128) NULL,
	[is_active] [bit] NULL,
	[reg_staff_id] [int] NULL,
	[update_staff_id] [int] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanViens]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanViens](
	[MaNhanVien] [varchar](30) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[QueQuan] [nvarchar](100) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[GioiTinh] [int] NULL,
	[DanToc] [nvarchar](10) NULL,
	[sdt_NhanVien] [varchar](11) NULL,
	[MaChucVuNV] [varchar](30) NULL,
	[TrangThai] [bit] NOT NULL,
	[MaPhongBan] [varchar](30) NULL,
	[MaHopDong] [varchar](30) NULL,
	[MaChuyenNganh] [varchar](30) NULL,
	[MaTrinhDoHocVan] [varchar](30) NULL,
	[CMND] [varchar](50) NULL,
 CONSTRAINT [PK_NhanViens] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBans]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBans](
	[MaPhongBan] [varchar](30) NOT NULL,
	[TenPhongBan] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[sdt_PhongBan] [varchar](11) NULL,
 CONSTRAINT [PK_PhongBans] PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlideImages]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlideImages](
	[id] [int] IDENTITY(100,1) NOT NULL,
	[src] [ntext] NOT NULL,
	[alt] [ntext] NULL,
	[title] [ntext] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[displayFlg] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
 CONSTRAINT [PK_sysdiagrams] PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiViecs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiViecs](
	[MaNhanVien] [varchar](30) NOT NULL,
	[Lydo] [nvarchar](max) NULL,
	[NgayThoiViec] [datetime] NOT NULL,
 CONSTRAINT [PK_ThoiViecs] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDoHocVans]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoHocVans](
	[MaTrinhDoHocVan] [varchar](30) NOT NULL,
	[TenTrinhDo] [nvarchar](max) NOT NULL,
	[HeSoBac] [float] NULL,
 CONSTRAINT [PK_TrinhDoHocVans] PRIMARY KEY CLUSTERED 
(
	[MaTrinhDoHocVan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[status] [varchar](1) NOT NULL,
	[description] [nvarchar](256) NOT NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news_is_active]  DEFAULT ((0)) FOR [is_active]
GO
ALTER TABLE [dbo].[SlideImages] ADD  CONSTRAINT [DF_SlideImages_displayFlg]  DEFAULT ((0)) FOR [displayFlg]
GO
ALTER TABLE [dbo].[CapNhatLuongs]  WITH CHECK ADD  CONSTRAINT [FK_CapNhatLuong_Luong] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[Luongs] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CapNhatLuongs] CHECK CONSTRAINT [FK_CapNhatLuong_Luong]
GO
ALTER TABLE [dbo].[CapNhatTrinhDoHocVans]  WITH CHECK ADD  CONSTRAINT [FK_CapNhatTrinhDoHocVan_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CapNhatTrinhDoHocVans] CHECK CONSTRAINT [FK_CapNhatTrinhDoHocVan_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietLuongs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLuong_Luong] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[Luongs] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietLuongs] CHECK CONSTRAINT [FK_ChiTietLuong_Luong]
GO
ALTER TABLE [dbo].[KhenThuongs]  WITH CHECK ADD  CONSTRAINT [FK__Thuong__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhenThuongs] CHECK CONSTRAINT [FK__Thuong__MaNhanVien]
GO
ALTER TABLE [dbo].[KyLuats]  WITH CHECK ADD  CONSTRAINT [FK_KyLuat_KyLuat] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KyLuats] CHECK CONSTRAINT [FK_KyLuat_KyLuat]
GO
ALTER TABLE [dbo].[LuanChuyenNhanViens]  WITH CHECK ADD  CONSTRAINT [FK__LuanChuyen__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LuanChuyenNhanViens] CHECK CONSTRAINT [FK__LuanChuyen__MaNhanVien]
GO
ALTER TABLE [dbo].[Luongs]  WITH CHECK ADD  CONSTRAINT [FK_Luong_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Luongs] CHECK CONSTRAINT [FK_Luong_NhanVien]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaChuyenNganh] FOREIGN KEY([MaChuyenNganh])
REFERENCES [dbo].[ChuyenNganhs] ([MaChuyenNganh])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK__NhanVien__MaChuyenNganh]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaHopDong] FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[HopDongs] ([MaHopDong])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK__NhanVien__MaHopDong]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaPhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBans] ([MaPhongBan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK__NhanVien__MaPhongBan]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVuNhanVien] FOREIGN KEY([MaChucVuNV])
REFERENCES [dbo].[ChucVuNhanViens] ([MaChucVuNV])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NhanVien_ChucVuNhanVien]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TrinhDoHocVan] FOREIGN KEY([MaTrinhDoHocVan])
REFERENCES [dbo].[TrinhDoHocVans] ([MaTrinhDoHocVan])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NhanVien_TrinhDoHocVan]
GO
ALTER TABLE [dbo].[ThoiViecs]  WITH CHECK ADD  CONSTRAINT [FK__ThoiViec__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ThoiViecs] CHECK CONSTRAINT [FK__ThoiViec__MaNhanVien]
GO


-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/11/2017 17:03:50
-- Generated from EDMX file: G:\HOC TAP\DO AN 3\CODE\QuanLyNhanSu\QuanLyNhanSu\Models\QuanLyNhanSuModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [QuanLyNhanSu];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__LuanChuyen__MaNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LuanChuyenNhanVien] DROP CONSTRAINT [FK__LuanChuyen__MaNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK__NhanVien__MaChuyenNganh]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK__NhanVien__MaChuyenNganh];
GO
IF OBJECT_ID(N'[dbo].[FK__NhanVien__MaHopDong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK__NhanVien__MaHopDong];
GO
IF OBJECT_ID(N'[dbo].[FK__NhanVien__MaPhongBan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK__NhanVien__MaPhongBan];
GO
IF OBJECT_ID(N'[dbo].[FK__ThoiViec__MaNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ThoiViec] DROP CONSTRAINT [FK__ThoiViec__MaNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK__Thuong__MaNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KhenThuong] DROP CONSTRAINT [FK__Thuong__MaNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_CapNhatLuong_Luong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CapNhatLuong] DROP CONSTRAINT [FK_CapNhatLuong_Luong];
GO
IF OBJECT_ID(N'[dbo].[FK_CapNhatTrinhDoHocVan_NhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CapNhatTrinhDoHocVan] DROP CONSTRAINT [FK_CapNhatTrinhDoHocVan_NhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_ChiTietLuong_Luong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChiTietLuong] DROP CONSTRAINT [FK_ChiTietLuong_Luong];
GO
IF OBJECT_ID(N'[dbo].[FK_KyLuat_KyLuat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KyLuat] DROP CONSTRAINT [FK_KyLuat_KyLuat];
GO
IF OBJECT_ID(N'[dbo].[FK_Luong_NhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Luong] DROP CONSTRAINT [FK_Luong_NhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_NhanVien_ChucVuNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_ChucVuNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_NhanVien_TrinhDoHocVan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_TrinhDoHocVan];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CapNhatLuong]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CapNhatLuong];
GO
IF OBJECT_ID(N'[dbo].[CapNhatTrinhDoHocVan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CapNhatTrinhDoHocVan];
GO
IF OBJECT_ID(N'[dbo].[ChiTietLuong]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ChiTietLuong];
GO
IF OBJECT_ID(N'[dbo].[ChucVuNhanVien]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ChucVuNhanVien];
GO
IF OBJECT_ID(N'[dbo].[ChuyenNganh]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ChuyenNganh];
GO
IF OBJECT_ID(N'[dbo].[HopDong]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HopDong];
GO
IF OBJECT_ID(N'[dbo].[KhenThuong]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KhenThuong];
GO
IF OBJECT_ID(N'[dbo].[KyLuat]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KyLuat];
GO
IF OBJECT_ID(N'[dbo].[LuanChuyenNhanVien]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LuanChuyenNhanVien];
GO
IF OBJECT_ID(N'[dbo].[Luong]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Luong];
GO
IF OBJECT_ID(N'[dbo].[LuongA1GV]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LuongA1GV];
GO
IF OBJECT_ID(N'[dbo].[LuongA21PGS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LuongA21PGS];
GO
IF OBJECT_ID(N'[dbo].[LuongA31GS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LuongA31GS];
GO
IF OBJECT_ID(N'[dbo].[NhanVien]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NhanVien];
GO
IF OBJECT_ID(N'[dbo].[PhongBan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhongBan];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[ThoiViec]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ThoiViec];
GO
IF OBJECT_ID(N'[dbo].[TrinhDoHocVan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrinhDoHocVan];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CapNhatLuongs'
CREATE TABLE [dbo].[CapNhatLuongs] (
    [id] int IDENTITY(1,1) NOT NULL,
    [MaNhanVien] varchar(30)  NOT NULL,
    [LuongHienTai] int  NOT NULL,
    [LuongSauCapNhat] int  NOT NULL,
    [BHXH] float  NULL,
    [BHYT] float  NULL,
    [BHTN] float  NULL,
    [PhuCap] float  NULL,
    [ThueThuNhap] float  NULL,
    [NgayCapNhat] datetime  NULL,
    [HeSoLuong] float  NULL
);
GO

-- Creating table 'CapNhatTrinhDoHocVans'
CREATE TABLE [dbo].[CapNhatTrinhDoHocVans] (
    [MaCapNhat] int IDENTITY(1,1) NOT NULL,
    [MaNhanVien] varchar(30)  NOT NULL,
    [NgayCapNhat] datetime  NOT NULL,
    [MaTrinhDoTruoc] varchar(30)  NOT NULL,
    [MaTrinhDoCapNhat] varchar(30)  NOT NULL
);
GO

-- Creating table 'ChiTietLuongs'
CREATE TABLE [dbo].[ChiTietLuongs] (
    [MaChiTietBangLuong] varchar(30)  NOT NULL,
    [MaNhanVien] varchar(30)  NOT NULL,
    [LuongCoBan] float  NOT NULL,
    [BHXH] float  NULL,
    [BHYT] float  NULL,
    [BHTN] float  NULL,
    [PhuCap] float  NULL,
    [ThueThuNhap] float  NULL,
    [TienThuong] int  NULL,
    [TienPhat] int  NULL,
    [NgayNhanLuong] datetime  NOT NULL,
    [TongTienLuong] varchar(30)  NULL
);
GO

-- Creating table 'ChucVuNhanViens'
CREATE TABLE [dbo].[ChucVuNhanViens] (
    [MaChucVuNV] varchar(30)  NOT NULL,
    [TenChucVu] nvarchar(50)  NOT NULL,
    [HSPC] float  NULL
);
GO

-- Creating table 'ChuyenNganhs'
CREATE TABLE [dbo].[ChuyenNganhs] (
    [MaChuyenNganh] varchar(30)  NOT NULL,
    [TenChuyenNganh] nvarchar(50)  NULL
);
GO

-- Creating table 'HopDongs'
CREATE TABLE [dbo].[HopDongs] (
    [MaHopDong] varchar(30)  NOT NULL,
    [LoaiHopDong] nvarchar(50)  NULL,
    [NgayBatDau] datetime  NULL,
    [NgayKetThuc] datetime  NULL,
    [GhiChu] nvarchar(max)  NULL
);
GO

-- Creating table 'KhenThuongs'
CREATE TABLE [dbo].[KhenThuongs] (
    [MaNhanVien] varchar(30)  NOT NULL,
    [ThangThuong] datetime  NOT NULL,
    [LyDo] nvarchar(max)  NULL,
    [TienThuong] int  NULL
);
GO

-- Creating table 'KyLuats'
CREATE TABLE [dbo].[KyLuats] (
    [MaNhanVien] varchar(30)  NOT NULL,
    [LyDo] nvarchar(max)  NULL,
    [ThangKiLuat] datetime  NOT NULL,
    [TienKyLuat] int  NULL
);
GO

-- Creating table 'LuanChuyenNhanViens'
CREATE TABLE [dbo].[LuanChuyenNhanViens] (
    [MaNhanVien] varchar(30)  NOT NULL,
    [id] int IDENTITY(1,1) NOT NULL,
    [NgayChuyen] datetime  NOT NULL,
    [LyDoChuyen] nvarchar(max)  NULL,
    [PhongBanChuyen] varchar(30)  NULL,
    [PhongBanDen] varchar(30)  NULL
);
GO

-- Creating table 'Luongs'
CREATE TABLE [dbo].[Luongs] (
    [MaNhanVien] varchar(30)  NOT NULL,
    [LuongToiThieu] int  NOT NULL,
    [HeSoLuong] float  NULL,
    [BHXH] float  NULL,
    [BHYT] float  NULL,
    [BHTN] float  NULL,
    [PhuCap] float  NULL,
    [ThueThuNhap] float  NULL
);
GO

-- Creating table 'NhanViens'
CREATE TABLE [dbo].[NhanViens] (
    [MaNhanVien] varchar(30)  NOT NULL,
    [MatKhau] nvarchar(100)  NOT NULL,
    [HoTen] nvarchar(50)  NULL,
    [NgaySinh] datetime  NULL,
    [QueQuan] nvarchar(100)  NULL,
    [HinhAnh] nvarchar(max)  NULL,
    [GioiTinh] int  NULL,
    [DanToc] nvarchar(10)  NULL,
    [sdt_NhanVien] varchar(11)  NULL,
    [MaChucVuNV] varchar(30)  NULL,
    [TrangThai] bit  NOT NULL,
    [MaPhongBan] varchar(30)  NULL,
    [MaHopDong] varchar(30)  NULL,
    [MaChuyenNganh] varchar(30)  NULL,
    [MaTrinhDoHocVan] varchar(30)  NULL,
    [CMND] varchar(50)  NULL
);
GO

-- Creating table 'PhongBans'
CREATE TABLE [dbo].[PhongBans] (
    [MaPhongBan] varchar(30)  NOT NULL,
    [TenPhongBan] nvarchar(50)  NOT NULL,
    [DiaChi] nvarchar(50)  NULL,
    [sdt_PhongBan] varchar(11)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'ThoiViecs'
CREATE TABLE [dbo].[ThoiViecs] (
    [MaNhanVien] varchar(30)  NOT NULL,
    [Lydo] nvarchar(max)  NULL,
    [NgayThoiViec] datetime  NOT NULL
);
GO

-- Creating table 'TrinhDoHocVans'
CREATE TABLE [dbo].[TrinhDoHocVans] (
    [MaTrinhDoHocVan] varchar(30)  NOT NULL,
    [TenTrinhDo] nvarchar(max)  NOT NULL,
    [HeSoBac] float  NULL
);
GO

-- Creating table 'LuongA1GV'
CREATE TABLE [dbo].[LuongA1GV] (
    [BacLuong] int IDENTITY(1,1) NOT NULL,
    [HeSo] float  NULL
);
GO

-- Creating table 'LuongA21PGS'
CREATE TABLE [dbo].[LuongA21PGS] (
    [BacLuong] int IDENTITY(1,1) NOT NULL,
    [HeSo] float  NULL
);
GO

-- Creating table 'LuongA31GS'
CREATE TABLE [dbo].[LuongA31GS] (
    [BacLuong] int IDENTITY(1,1) NOT NULL,
    [HeSo] float  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'CapNhatLuongs'
ALTER TABLE [dbo].[CapNhatLuongs]
ADD CONSTRAINT [PK_CapNhatLuongs]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [MaCapNhat] in table 'CapNhatTrinhDoHocVans'
ALTER TABLE [dbo].[CapNhatTrinhDoHocVans]
ADD CONSTRAINT [PK_CapNhatTrinhDoHocVans]
    PRIMARY KEY CLUSTERED ([MaCapNhat] ASC);
GO

-- Creating primary key on [MaChiTietBangLuong], [MaNhanVien] in table 'ChiTietLuongs'
ALTER TABLE [dbo].[ChiTietLuongs]
ADD CONSTRAINT [PK_ChiTietLuongs]
    PRIMARY KEY CLUSTERED ([MaChiTietBangLuong], [MaNhanVien] ASC);
GO

-- Creating primary key on [MaChucVuNV] in table 'ChucVuNhanViens'
ALTER TABLE [dbo].[ChucVuNhanViens]
ADD CONSTRAINT [PK_ChucVuNhanViens]
    PRIMARY KEY CLUSTERED ([MaChucVuNV] ASC);
GO

-- Creating primary key on [MaChuyenNganh] in table 'ChuyenNganhs'
ALTER TABLE [dbo].[ChuyenNganhs]
ADD CONSTRAINT [PK_ChuyenNganhs]
    PRIMARY KEY CLUSTERED ([MaChuyenNganh] ASC);
GO

-- Creating primary key on [MaHopDong] in table 'HopDongs'
ALTER TABLE [dbo].[HopDongs]
ADD CONSTRAINT [PK_HopDongs]
    PRIMARY KEY CLUSTERED ([MaHopDong] ASC);
GO

-- Creating primary key on [MaNhanVien] in table 'KhenThuongs'
ALTER TABLE [dbo].[KhenThuongs]
ADD CONSTRAINT [PK_KhenThuongs]
    PRIMARY KEY CLUSTERED ([MaNhanVien] ASC);
GO

-- Creating primary key on [MaNhanVien] in table 'KyLuats'
ALTER TABLE [dbo].[KyLuats]
ADD CONSTRAINT [PK_KyLuats]
    PRIMARY KEY CLUSTERED ([MaNhanVien] ASC);
GO

-- Creating primary key on [MaNhanVien], [id] in table 'LuanChuyenNhanViens'
ALTER TABLE [dbo].[LuanChuyenNhanViens]
ADD CONSTRAINT [PK_LuanChuyenNhanViens]
    PRIMARY KEY CLUSTERED ([MaNhanVien], [id] ASC);
GO

-- Creating primary key on [MaNhanVien] in table 'Luongs'
ALTER TABLE [dbo].[Luongs]
ADD CONSTRAINT [PK_Luongs]
    PRIMARY KEY CLUSTERED ([MaNhanVien] ASC);
GO

-- Creating primary key on [MaNhanVien] in table 'NhanViens'
ALTER TABLE [dbo].[NhanViens]
ADD CONSTRAINT [PK_NhanViens]
    PRIMARY KEY CLUSTERED ([MaNhanVien] ASC);
GO

-- Creating primary key on [MaPhongBan] in table 'PhongBans'
ALTER TABLE [dbo].[PhongBans]
ADD CONSTRAINT [PK_PhongBans]
    PRIMARY KEY CLUSTERED ([MaPhongBan] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [MaNhanVien] in table 'ThoiViecs'
ALTER TABLE [dbo].[ThoiViecs]
ADD CONSTRAINT [PK_ThoiViecs]
    PRIMARY KEY CLUSTERED ([MaNhanVien] ASC);
GO

-- Creating primary key on [MaTrinhDoHocVan] in table 'TrinhDoHocVans'
ALTER TABLE [dbo].[TrinhDoHocVans]
ADD CONSTRAINT [PK_TrinhDoHocVans]
    PRIMARY KEY CLUSTERED ([MaTrinhDoHocVan] ASC);
GO

-- Creating primary key on [BacLuong] in table 'LuongA1GV'
ALTER TABLE [dbo].[LuongA1GV]
ADD CONSTRAINT [PK_LuongA1GV]
    PRIMARY KEY CLUSTERED ([BacLuong] ASC);
GO

-- Creating primary key on [BacLuong] in table 'LuongA21PGS'
ALTER TABLE [dbo].[LuongA21PGS]
ADD CONSTRAINT [PK_LuongA21PGS]
    PRIMARY KEY CLUSTERED ([BacLuong] ASC);
GO

-- Creating primary key on [BacLuong] in table 'LuongA31GS'
ALTER TABLE [dbo].[LuongA31GS]
ADD CONSTRAINT [PK_LuongA31GS]
    PRIMARY KEY CLUSTERED ([BacLuong] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [MaNhanVien] in table 'CapNhatLuongs'
ALTER TABLE [dbo].[CapNhatLuongs]
ADD CONSTRAINT [FK_CapNhatLuong_Luong]
    FOREIGN KEY ([MaNhanVien])
    REFERENCES [dbo].[Luongs]
        ([MaNhanVien])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CapNhatLuong_Luong'
CREATE INDEX [IX_FK_CapNhatLuong_Luong]
ON [dbo].[CapNhatLuongs]
    ([MaNhanVien]);
GO

-- Creating foreign key on [MaNhanVien] in table 'CapNhatTrinhDoHocVans'
ALTER TABLE [dbo].[CapNhatTrinhDoHocVans]
ADD CONSTRAINT [FK_CapNhatTrinhDoHocVan_NhanVien]
    FOREIGN KEY ([MaNhanVien])
    REFERENCES [dbo].[NhanViens]
        ([MaNhanVien])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CapNhatTrinhDoHocVan_NhanVien'
CREATE INDEX [IX_FK_CapNhatTrinhDoHocVan_NhanVien]
ON [dbo].[CapNhatTrinhDoHocVans]
    ([MaNhanVien]);
GO

-- Creating foreign key on [MaNhanVien] in table 'ChiTietLuongs'
ALTER TABLE [dbo].[ChiTietLuongs]
ADD CONSTRAINT [FK_ChiTietLuong_Luong]
    FOREIGN KEY ([MaNhanVien])
    REFERENCES [dbo].[Luongs]
        ([MaNhanVien])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ChiTietLuong_Luong'
CREATE INDEX [IX_FK_ChiTietLuong_Luong]
ON [dbo].[ChiTietLuongs]
    ([MaNhanVien]);
GO

-- Creating foreign key on [MaChucVuNV] in table 'NhanViens'
ALTER TABLE [dbo].[NhanViens]
ADD CONSTRAINT [FK_NhanVien_ChucVuNhanVien]
    FOREIGN KEY ([MaChucVuNV])
    REFERENCES [dbo].[ChucVuNhanViens]
        ([MaChucVuNV])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NhanVien_ChucVuNhanVien'
CREATE INDEX [IX_FK_NhanVien_ChucVuNhanVien]
ON [dbo].[NhanViens]
    ([MaChucVuNV]);
GO

-- Creating foreign key on [MaChuyenNganh] in table 'NhanViens'
ALTER TABLE [dbo].[NhanViens]
ADD CONSTRAINT [FK__NhanVien__MaChuyenNganh]
    FOREIGN KEY ([MaChuyenNganh])
    REFERENCES [dbo].[ChuyenNganhs]
        ([MaChuyenNganh])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__NhanVien__MaChuyenNganh'
CREATE INDEX [IX_FK__NhanVien__MaChuyenNganh]
ON [dbo].[NhanViens]
    ([MaChuyenNganh]);
GO

-- Creating foreign key on [MaHopDong] in table 'NhanViens'
ALTER TABLE [dbo].[NhanViens]
ADD CONSTRAINT [FK__NhanVien__MaHopDong]
    FOREIGN KEY ([MaHopDong])
    REFERENCES [dbo].[HopDongs]
        ([MaHopDong])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__NhanVien__MaHopDong'
CREATE INDEX [IX_FK__NhanVien__MaHopDong]
ON [dbo].[NhanViens]
    ([MaHopDong]);
GO

-- Creating foreign key on [MaNhanVien] in table 'KhenThuongs'
ALTER TABLE [dbo].[KhenThuongs]
ADD CONSTRAINT [FK__Thuong__MaNhanVien]
    FOREIGN KEY ([MaNhanVien])
    REFERENCES [dbo].[NhanViens]
        ([MaNhanVien])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MaNhanVien] in table 'KyLuats'
ALTER TABLE [dbo].[KyLuats]
ADD CONSTRAINT [FK_KyLuat_KyLuat]
    FOREIGN KEY ([MaNhanVien])
    REFERENCES [dbo].[NhanViens]
        ([MaNhanVien])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MaNhanVien] in table 'LuanChuyenNhanViens'
ALTER TABLE [dbo].[LuanChuyenNhanViens]
ADD CONSTRAINT [FK__LuanChuyen__MaNhanVien]
    FOREIGN KEY ([MaNhanVien])
    REFERENCES [dbo].[NhanViens]
        ([MaNhanVien])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MaNhanVien] in table 'Luongs'
ALTER TABLE [dbo].[Luongs]
ADD CONSTRAINT [FK_Luong_NhanVien]
    FOREIGN KEY ([MaNhanVien])
    REFERENCES [dbo].[NhanViens]
        ([MaNhanVien])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MaPhongBan] in table 'NhanViens'
ALTER TABLE [dbo].[NhanViens]
ADD CONSTRAINT [FK__NhanVien__MaPhongBan]
    FOREIGN KEY ([MaPhongBan])
    REFERENCES [dbo].[PhongBans]
        ([MaPhongBan])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__NhanVien__MaPhongBan'
CREATE INDEX [IX_FK__NhanVien__MaPhongBan]
ON [dbo].[NhanViens]
    ([MaPhongBan]);
GO

-- Creating foreign key on [MaNhanVien] in table 'ThoiViecs'
ALTER TABLE [dbo].[ThoiViecs]
ADD CONSTRAINT [FK__ThoiViec__MaNhanVien]
    FOREIGN KEY ([MaNhanVien])
    REFERENCES [dbo].[NhanViens]
        ([MaNhanVien])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MaTrinhDoHocVan] in table 'NhanViens'
ALTER TABLE [dbo].[NhanViens]
ADD CONSTRAINT [FK_NhanVien_TrinhDoHocVan]
    FOREIGN KEY ([MaTrinhDoHocVan])
    REFERENCES [dbo].[TrinhDoHocVans]
        ([MaTrinhDoHocVan])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NhanVien_TrinhDoHocVan'
CREATE INDEX [IX_FK_NhanVien_TrinhDoHocVan]
ON [dbo].[NhanViens]
    ([MaTrinhDoHocVan]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

insert into ChucVuNhanViens(machucvunv, tenchucvu,HSPC) values
('tp',N'Trưởng phòng, Trưởng khoa',0.45),
('pp',N'Phó phòng, Phó khoa',0.35),
('tbm',N'Trưởng bộ môn',0.25),
('nv',N'Nhân viên',0.0);

insert into ChuyenNganhs(MaChuyenNganh,TenChuyenNganh) values
('cntt',N'Công nghệ thông tin'),
('toan',N'Toán'),
('hoahoc',N'Hóa học'),
('tth',N'Chính trị học'),
('kt',N'Kế toán'),
('ck',N'Cơ khí'),
('dientu',N'Điện tử'),
('sinhhoc',N'Sinh học'),
('nl',N'Nhiệt lạnh');

insert into PhongBans(MaPhongBan,TenPhongBan,DiaChi,sdt_PhongBan) values
('daotao',N'Đào tạo',N'Lầu 2 nhà A','029348472'),
('ketoan',N'Kế toán',N'Lầu 3 nhà D','089372732'),
('cntt',N'Công nghệ thông tin',N'Lầu 1 nhà H','083283223'),
('xaydung',N'Xây dựng',N'phòng A1.1 nhà A','08329834');

insert into TrinhDoHocVans(MaTrinhDoHocVan,TenTrinhDo,HeSoBac) values
('gs',N'Giáo sư',6.2),
('pgs',N'Phó giáo sư',4.4),
('ts',N'Tiến sỹ',3.0),
('ths',N'Thạc sỹ',2.67),
('ks',N'Kỹ sư',2.34);

insert into LuongA1GV values
('2.34'),
('2.67'),
('3'),
('3.33'),
('3.66'),
('3.99'),
('4.32'),
('4.65'),
('4.98');

insert into LuongA31GS values
('6.2'),
('6.56'),
('6.92'),
('7.28'),
('7.64'),
('8');
insert into LuongA21PGS values
('4.4'),
('4.74'),
('5.08'),
('5.42'),
('5.76'),
('6.1'),
('6.44'),
('6.78');
insert into NhanViens(MaNhanVien,MatKhau,TrangThai)values(
'admin','admin',1
);

INSERT INTO HopDongs (MaHopDong, LoaiHopDong, NgayBatDau, NgayKetThuc, GhiChu) VALUES
('HD001', N'Hợp đồng dài hạn', '2023-01-01', '2025-12-31', N'Hợp đồng 3 năm'),
('HD002', N'Hợp đồng ngắn hạn', '2024-01-01', '2024-12-31', N'Hợp đồng 1 năm'),
('HD003', N'Hợp đồng thử việc', '2024-06-01', '2024-08-31', N'Thử việc 3 tháng');

-- Insert employees into NhanViens
INSERT INTO NhanViens (MaNhanVien, MatKhau, HoTen, NgaySinh, QueQuan, HinhAnh, GioiTinh, DanToc, sdt_NhanVien, MaChucVuNV, TrangThai, MaPhongBan, MaHopDong, MaChuyenNganh, MaTrinhDoHocVan, CMND) VALUES
('NV001', 'password123', N'Nguyễn Văn A', '1990-05-15', N'Hà Nội', NULL, 1, N'Kinh', '0987654321', 'tp', 1, 'cntt', 'HD001', 'cntt', 'ts', '123456789'),
('NV002', 'password456', N'Trần Thị B', '1985-08-20', N'TP.HCM', NULL, 0, N'Kinh', '0912345678', 'pp', 1, 'ketoan', 'HD002', 'kt', 'ths', '987654321'),
('NV003', 'password789', N'Lê Văn C', '1995-03-10', N'Đà Nẵng', NULL, 1, N'Kinh', '0935123456', 'nv', 1, 'xaydung', 'HD003', 'ck', 'ks', '456789123');

-- Insert salary data into Luongs
INSERT INTO Luongs (MaNhanVien, LuongToiThieu, HeSoLuong, BHXH, BHYT, BHTN, PhuCap, ThueThuNhap) VALUES
('NV001', 5000000, 3.0, 8.0, 1.5, 1.0, 1000000, 10.0),
('NV002', 4500000, 2.67, 8.0, 1.5, 1.0, 800000, 8.0),
('NV003', 4000000, 2.34, 8.0, 1.5, 1.0, 500000, 5.0);

-- Insert salary update history into CapNhatLuongs
INSERT INTO CapNhatLuongs (MaNhanVien, LuongHienTai, LuongSauCapNhat, BHXH, BHYT, BHTN, PhuCap, ThueThuNhap, NgayCapNhat, HeSoLuong) VALUES
('NV001', 5000000, 5500000, 8.0, 1.5, 1.0, 1000000, 10.0, '2024-07-01', 3.33),
('NV002', 4500000, 4800000, 8.0, 1.5, 1.0, 800000, 8.0, '2024-08-01', 2.67);

-- Insert detailed salary records into ChiTietLuongs
INSERT INTO ChiTietLuongs (MaChiTietBangLuong, MaNhanVien, LuongCoBan, BHXH, BHYT, BHTN, PhuCap, ThueThuNhap, TienThuong, TienPhat, NgayNhanLuong, TongTienLuong) VALUES
('CT001', 'NV001', 5000000, 8.0, 1.5, 1.0, 1000000, 10.0, 500000, 0, '2024-05-01', '6000000'),
('CT002', 'NV002', 4500000, 8.0, 1.5, 1.0, 800000, 8.0, 300000, 100000, '2024-05-01', '5100000');

-- Insert reward records into KhenThuongs
INSERT INTO KhenThuongs (MaNhanVien, ThangThuong, LyDo, TienThuong) VALUES
('NV001', '2024-05-01', N'Hoàn thành xuất sắc dự án', 1000000),
('NV002', '2024-05-01', N'Đóng góp tích cực cho phòng ban', 500000);

-- Insert disciplinary records into KyLuats
INSERT INTO KyLuats (MaNhanVien, LyDo, ThangKiLuat, TienKyLuat) VALUES
('NV003', N'Đi làm muộn nhiều lần', '2024-05-01', 200000);

-- Insert transfer records into LuanChuyenNhanViens
INSERT INTO LuanChuyenNhanViens (MaNhanVien, NgayChuyen, LyDoChuyen, PhongBanChuyen, PhongBanDen) VALUES
('NV001', '2024-06-01', N'Điều chuyển theo nhu cầu công việc', 'cntt', 'daotao');

-- Insert termination records into ThoiViecs (optional, for testing termination)
INSERT INTO ThoiViecs (MaNhanVien, Lydo, NgayThoiViec) VALUES
('NV003', N'Xin nghỉ tự nguyện', '2024-09-01');

-- Insert qualification update records into CapNhatTrinhDoHocVans
INSERT INTO CapNhatTrinhDoHocVans (MaNhanVien, NgayCapNhat, MaTrinhDoTruoc, MaTrinhDoCapNhat) VALUES
('NV002', '2024-07-01', 'ks', 'ths');

SELECT * FROM NhanViens;