USE [master]
GO
/****** Object:  Database [QuanLyNhaHang]    Script Date: 06/02/2020 23:35:08 ******/
CREATE DATABASE [QuanLyNhaHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNhaHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\QuanLyNhaHang.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyNhaHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\QuanLyNhaHang_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyNhaHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNhaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyNhaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyNhaHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhaHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyNhaHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyNhaHang] SET QUERY_STORE = OFF
GO
USE [QuanLyNhaHang]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [QuanLyNhaHang]
GO
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 06/02/2020 23:35:08 ******/
CREATE USER [IIS APPPOOL\DefaultAppPool] FOR LOGIN [IIS APPPOOL\DefaultAppPool] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [IIS APPPOOL\DefaultAppPool]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  Table [dbo].[00_BanAn]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[00_BanAn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenBanAn] [nvarchar](64) NULL,
	[SoBanAn] [int] NULL,
	[SoGhe] [int] NULL,
	[IdLoaiBan] [int] NULL,
	[IdLoaiKhuVuc] [int] NULL,
	[IdTrangThai] [int] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_00_BanAn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[00_KhuVucAn]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[00_KhuVucAn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiKhuVuc] [nvarchar](128) NULL,
	[NgayTao] [datetime] NULL,
	[IdTrangThai] [int] NULL,
 CONSTRAINT [PK_00_LoaiKhuVuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[00_LoaiBan]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[00_LoaiBan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiBan] [nvarchar](128) NULL,
	[NgayTao] [datetime] NULL,
	[IdTrangThai] [int] NULL,
 CONSTRAINT [PK_00_LoaiBan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[00_NhaHang]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[00_NhaHang](
	[Id] [int] NOT NULL,
	[TenNhaHang] [nvarchar](128) NULL,
	[DiaChi] [nvarchar](256) NULL,
 CONSTRAINT [PK_00_NhaHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[01_CongThuc]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[01_CongThuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GioiThieu] [nvarchar](500) NULL,
	[ChiTietMon] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[SuaLanCuoi] [datetime] NULL,
	[IdMon] [int] NULL,
 CONSTRAINT [PK_01_CongThuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[01_LoaiThucDon]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[01_LoaiThucDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](128) NULL,
 CONSTRAINT [PK_01_LoaiThucDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[01_Menu]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[01_Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenMenu] [nvarchar](128) NULL,
	[SoLuongMon] [int] NULL,
	[NgayTao] [datetime] NULL,
	[SuaLanCuoi] [datetime] NULL,
	[IdLoaiThucDon] [int] NULL,
 CONSTRAINT [PK_01_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[01_Mon]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[01_Mon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](128) NULL,
	[IdTrangThai] [int] NULL,
	[DonVi] [nvarchar](16) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[GhiChu] [nvarchar](255) NULL,
	[HinhAnh] [nvarchar](255) NULL,
 CONSTRAINT [PK_01_Mon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[01_NhomMon]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[01_NhomMon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomMon] [nvarchar](128) NULL,
 CONSTRAINT [PK_01_NhomMon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[01_SapXepMenu]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[01_SapXepMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMenu] [int] NULL,
	[IdMon] [int] NULL,
 CONSTRAINT [PK_01_SapXepMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[01_SapXepNhom]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[01_SapXepNhom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNhomMon] [int] NULL,
	[IdMon] [int] NULL,
	[ThongTinThem] [nvarchar](max) NULL,
 CONSTRAINT [PK_01_SapXepNhom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[02_ChiTietHoaDon]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[02_ChiTietHoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NULL,
	[IdMonAn] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
	[DonVi] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_02_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[02_HoaDon]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[02_HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [nvarchar](50) NULL,
	[IdLichSuBan] [int] NULL,
	[PhaiThu] [decimal](18, 0) NULL,
	[ThucThu] [decimal](18, 0) NULL,
	[ChoNo] [decimal](18, 0) NULL,
	[TrietKhau] [decimal](18, 0) NULL,
	[MaVoucher] [int] NULL,
 CONSTRAINT [PK_02_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[02_LichSuDungBanAn]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[02_LichSuDungBanAn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdBanAn] [int] NULL,
	[NgayTao] [datetime] NULL,
	[IsSuDung] [bit] NULL,
 CONSTRAINT [PK_02_LichSuDungBanAn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[02_PhucVu]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[02_PhucVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMon] [int] NULL,
	[IdLichSuDungBanAn] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[ThanhToan] [bit] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_02_PhucVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[C02_Voucher]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C02_Voucher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaGiamGia] [nvarchar](25) NULL,
	[NgayHieuLuc] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
	[SoLuongKichHoat] [int] NULL,
	[SoLuongToiDa] [int] NULL,
	[KhauTru] [decimal](18, 0) NULL,
	[PhanTramKhauTru] [decimal](18, 0) NULL,
 CONSTRAINT [PK_C02_Voucher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[C03_CustomerReview]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C03_CustomerReview](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Review] [nvarchar](255) NULL,
	[Rating] [int] NULL,
	[IdMon] [int] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_C03_CustomerReview] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Root_DonVi]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Root_DonVi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDonVi] [nvarchar](64) NULL,
 CONSTRAINT [PK_Root_DonVi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Root_NhomQuyen]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Root_NhomQuyen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nchar](10) NULL,
 CONSTRAINT [PK_Root_NhomTrangThai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Root_NhomTrangThai]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Root_NhomTrangThai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](128) NULL,
 CONSTRAINT [PK_Root_NhomTrangThai_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Root_QuanLyTrangThai]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Root_QuanLyTrangThai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTrangThai] [int] NULL,
	[IdNhomTrangThai] [int] NULL,
 CONSTRAINT [PK_Root_QuanLyTrangThai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Root_Quyen]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Root_Quyen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](128) NULL,
 CONSTRAINT [PK_Root_Quyen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Root_TrangThai]    Script Date: 06/02/2020 23:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Root_TrangThai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](128) NULL,
 CONSTRAINT [PK_Root_TrangThai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[00_BanAn] ON 

INSERT [dbo].[00_BanAn] ([Id], [TenBanAn], [SoBanAn], [SoGhe], [IdLoaiBan], [IdLoaiKhuVuc], [IdTrangThai], [NgayTao]) VALUES (1010, N'Bàn vip 1', 123, 3, 11, 1, 4, CAST(N'2020-05-05T21:45:21.887' AS DateTime))
INSERT [dbo].[00_BanAn] ([Id], [TenBanAn], [SoBanAn], [SoGhe], [IdLoaiBan], [IdLoaiKhuVuc], [IdTrangThai], [NgayTao]) VALUES (1011, N'Bàn vip2', 1234, 15, 11, 1, 4, CAST(N'2020-05-19T20:16:37.537' AS DateTime))
INSERT [dbo].[00_BanAn] ([Id], [TenBanAn], [SoBanAn], [SoGhe], [IdLoaiBan], [IdLoaiKhuVuc], [IdTrangThai], [NgayTao]) VALUES (1012, N'Bàn thường 1', 1, 10, 13, 2, 4, CAST(N'2020-05-19T20:17:06.393' AS DateTime))
INSERT [dbo].[00_BanAn] ([Id], [TenBanAn], [SoBanAn], [SoGhe], [IdLoaiBan], [IdLoaiKhuVuc], [IdTrangThai], [NgayTao]) VALUES (1013, N'bàn thường 2', 12, 10, 12, 3, 4, CAST(N'2020-05-19T20:17:30.590' AS DateTime))
INSERT [dbo].[00_BanAn] ([Id], [TenBanAn], [SoBanAn], [SoGhe], [IdLoaiBan], [IdLoaiKhuVuc], [IdTrangThai], [NgayTao]) VALUES (1014, N'Bàn vip 3', 1, 5, 13, 4, 4, CAST(N'2020-05-19T20:18:01.120' AS DateTime))
INSERT [dbo].[00_BanAn] ([Id], [TenBanAn], [SoBanAn], [SoGhe], [IdLoaiBan], [IdLoaiKhuVuc], [IdTrangThai], [NgayTao]) VALUES (1015, N'Bàn thường 3', 2, 10, 12, 4, 4, CAST(N'2020-05-19T20:18:24.080' AS DateTime))
SET IDENTITY_INSERT [dbo].[00_BanAn] OFF
GO
SET IDENTITY_INSERT [dbo].[00_KhuVucAn] ON 

INSERT [dbo].[00_KhuVucAn] ([Id], [TenLoaiKhuVuc], [NgayTao], [IdTrangThai]) VALUES (1, N'Trong nhà', CAST(N'2020-04-20T23:07:55.657' AS DateTime), 2)
INSERT [dbo].[00_KhuVucAn] ([Id], [TenLoaiKhuVuc], [NgayTao], [IdTrangThai]) VALUES (2, N'Ban công', CAST(N'2020-04-20T23:07:45.530' AS DateTime), 2)
INSERT [dbo].[00_KhuVucAn] ([Id], [TenLoaiKhuVuc], [NgayTao], [IdTrangThai]) VALUES (3, N'Nhìn ra ngoài', CAST(N'2020-04-21T00:38:29.843' AS DateTime), 3)
INSERT [dbo].[00_KhuVucAn] ([Id], [TenLoaiKhuVuc], [NgayTao], [IdTrangThai]) VALUES (4, N'Ngoài sân', CAST(N'2020-04-20T23:10:07.447' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[00_KhuVucAn] OFF
GO
SET IDENTITY_INSERT [dbo].[00_LoaiBan] ON 

INSERT [dbo].[00_LoaiBan] ([Id], [TenLoaiBan], [NgayTao], [IdTrangThai]) VALUES (11, N'Lẩu + Nướng', CAST(N'2020-04-21T00:33:05.560' AS DateTime), 2)
INSERT [dbo].[00_LoaiBan] ([Id], [TenLoaiBan], [NgayTao], [IdTrangThai]) VALUES (12, N'Lẩu', CAST(N'2020-04-21T00:33:31.737' AS DateTime), 1)
INSERT [dbo].[00_LoaiBan] ([Id], [TenLoaiBan], [NgayTao], [IdTrangThai]) VALUES (13, N'Lẩu + Nướng + Buffe', CAST(N'2020-04-21T00:36:25.470' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[00_LoaiBan] OFF
GO
INSERT [dbo].[00_NhaHang] ([Id], [TenNhaHang], [DiaChi]) VALUES (0, N'Nhà Hàng TOKYO Nhật Bản', N'')
GO
SET IDENTITY_INSERT [dbo].[01_CongThuc] ON 

INSERT [dbo].[01_CongThuc] ([Id], [GioiThieu], [ChiTietMon], [NgayTao], [SuaLanCuoi], [IdMon]) VALUES (8, N'sadf', N'asdf', CAST(N'2020-04-27T21:57:42.957' AS DateTime), CAST(N'2020-04-27T21:57:42.957' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[01_CongThuc] OFF
GO
SET IDENTITY_INSERT [dbo].[01_LoaiThucDon] ON 

INSERT [dbo].[01_LoaiThucDon] ([Id], [TenLoai]) VALUES (1, N'Lẩu + Nướng')
SET IDENTITY_INSERT [dbo].[01_LoaiThucDon] OFF
GO
SET IDENTITY_INSERT [dbo].[01_Menu] ON 

INSERT [dbo].[01_Menu] ([Id], [TenMenu], [SoLuongMon], [NgayTao], [SuaLanCuoi], [IdLoaiThucDon]) VALUES (2, N'Sushi', NULL, NULL, CAST(N'2020-05-20T21:32:06.703' AS DateTime), 1)
INSERT [dbo].[01_Menu] ([Id], [TenMenu], [SoLuongMon], [NgayTao], [SuaLanCuoi], [IdLoaiThucDon]) VALUES (3, N'Lẩu', NULL, NULL, CAST(N'2020-05-20T21:32:15.713' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[01_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[01_Mon] ON 

INSERT [dbo].[01_Mon] ([Id], [TenMon], [IdTrangThai], [DonVi], [DonGia], [GhiChu], [HinhAnh]) VALUES (1, N'Bánh quốc', 1, N'đĩa', CAST(10000 AS Decimal(18, 0)), N'Ghi chú', NULL)
INSERT [dbo].[01_Mon] ([Id], [TenMon], [IdTrangThai], [DonVi], [DonGia], [GhiChu], [HinhAnh]) VALUES (2, N'Tempura', 1, N'đĩa', CAST(150000 AS Decimal(18, 0)), N'Ghi chú', NULL)
INSERT [dbo].[01_Mon] ([Id], [TenMon], [IdTrangThai], [DonVi], [DonGia], [GhiChu], [HinhAnh]) VALUES (3, N'Sukiyaki', 1, N'Nồi', CAST(250000 AS Decimal(18, 0)), N'Ghi chú', NULL)
INSERT [dbo].[01_Mon] ([Id], [TenMon], [IdTrangThai], [DonVi], [DonGia], [GhiChu], [HinhAnh]) VALUES (4, N'Sushi cá hồi', 1, N'Đĩa', CAST(45000 AS Decimal(18, 0)), N'Ghi chú', NULL)
INSERT [dbo].[01_Mon] ([Id], [TenMon], [IdTrangThai], [DonVi], [DonGia], [GhiChu], [HinhAnh]) VALUES (5, N'Sushi cá cháp', 1, N'Đĩa', CAST(150000 AS Decimal(18, 0)), N'Ghi chú', NULL)
INSERT [dbo].[01_Mon] ([Id], [TenMon], [IdTrangThai], [DonVi], [DonGia], [GhiChu], [HinhAnh]) VALUES (6, N'Sushi tôm', 1, N'Đĩa', CAST(30000 AS Decimal(18, 0)), N'Ghi chú', NULL)
INSERT [dbo].[01_Mon] ([Id], [TenMon], [IdTrangThai], [DonVi], [DonGia], [GhiChu], [HinhAnh]) VALUES (7, N'Sashimi', 1, N'Phần', CAST(45000 AS Decimal(18, 0)), N'Ghi chú', NULL)
INSERT [dbo].[01_Mon] ([Id], [TenMon], [IdTrangThai], [DonVi], [DonGia], [GhiChu], [HinhAnh]) VALUES (8, N'Kaiseki Ryori', 1, N'Phần', CAST(175000 AS Decimal(18, 0)), N'Ghi chú', NULL)
SET IDENTITY_INSERT [dbo].[01_Mon] OFF
GO
SET IDENTITY_INSERT [dbo].[01_SapXepMenu] ON 

INSERT [dbo].[01_SapXepMenu] ([Id], [IdMenu], [IdMon]) VALUES (1, 2, 1)
INSERT [dbo].[01_SapXepMenu] ([Id], [IdMenu], [IdMon]) VALUES (2, 2, 3)
INSERT [dbo].[01_SapXepMenu] ([Id], [IdMenu], [IdMon]) VALUES (3, 2, 5)
SET IDENTITY_INSERT [dbo].[01_SapXepMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[02_ChiTietHoaDon] ON 

INSERT [dbo].[02_ChiTietHoaDon] ([Id], [IdHoaDon], [IdMonAn], [DonGia], [SoLuong], [DonVi], [GhiChu]) VALUES (73, 98, 1, CAST(10000 AS Decimal(18, 0)), 2, N'đĩa', N'')
INSERT [dbo].[02_ChiTietHoaDon] ([Id], [IdHoaDon], [IdMonAn], [DonGia], [SoLuong], [DonVi], [GhiChu]) VALUES (74, 98, 3, CAST(250000 AS Decimal(18, 0)), 3, N'Nồi', N'')
INSERT [dbo].[02_ChiTietHoaDon] ([Id], [IdHoaDon], [IdMonAn], [DonGia], [SoLuong], [DonVi], [GhiChu]) VALUES (75, 98, 5, CAST(150000 AS Decimal(18, 0)), 3, N'Đĩa', N'')
INSERT [dbo].[02_ChiTietHoaDon] ([Id], [IdHoaDon], [IdMonAn], [DonGia], [SoLuong], [DonVi], [GhiChu]) VALUES (76, 102, 1, CAST(10000 AS Decimal(18, 0)), 1, N'đĩa', N'')
INSERT [dbo].[02_ChiTietHoaDon] ([Id], [IdHoaDon], [IdMonAn], [DonGia], [SoLuong], [DonVi], [GhiChu]) VALUES (77, 102, 3, CAST(250000 AS Decimal(18, 0)), 1, N'Nồi', N'')
INSERT [dbo].[02_ChiTietHoaDon] ([Id], [IdHoaDon], [IdMonAn], [DonGia], [SoLuong], [DonVi], [GhiChu]) VALUES (78, 102, 5, CAST(150000 AS Decimal(18, 0)), 1, N'Đĩa', N'')
SET IDENTITY_INSERT [dbo].[02_ChiTietHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[02_HoaDon] ON 

INSERT [dbo].[02_HoaDon] ([Id], [MaHoaDon], [IdLichSuBan], [PhaiThu], [ThucThu], [ChoNo], [TrietKhau], [MaVoucher]) VALUES (98, N'200602100719', 91, CAST(1220000 AS Decimal(18, 0)), CAST(998000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(222000 AS Decimal(18, 0)), 1)
INSERT [dbo].[02_HoaDon] ([Id], [MaHoaDon], [IdLichSuBan], [PhaiThu], [ThucThu], [ChoNo], [TrietKhau], [MaVoucher]) VALUES (99, N'200602110122', 93, CAST(10000 AS Decimal(18, 0)), CAST(10000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[02_HoaDon] ([Id], [MaHoaDon], [IdLichSuBan], [PhaiThu], [ThucThu], [ChoNo], [TrietKhau], [MaVoucher]) VALUES (100, N'200602110124', 93, CAST(250000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[02_HoaDon] ([Id], [MaHoaDon], [IdLichSuBan], [PhaiThu], [ThucThu], [ChoNo], [TrietKhau], [MaVoucher]) VALUES (101, N'200602110125', 93, CAST(150000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[02_HoaDon] ([Id], [MaHoaDon], [IdLichSuBan], [PhaiThu], [ThucThu], [ChoNo], [TrietKhau], [MaVoucher]) VALUES (102, N'200602110137', 93, CAST(410000 AS Decimal(18, 0)), NULL, CAST(0 AS Decimal(18, 0)), NULL, 0)
SET IDENTITY_INSERT [dbo].[02_HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[02_LichSuDungBanAn] ON 

INSERT [dbo].[02_LichSuDungBanAn] ([Id], [IdBanAn], [NgayTao], [IsSuDung]) VALUES (91, 1010, CAST(N'2020-06-02T22:06:37.947' AS DateTime), 0)
INSERT [dbo].[02_LichSuDungBanAn] ([Id], [IdBanAn], [NgayTao], [IsSuDung]) VALUES (92, 1010, CAST(N'2020-06-02T22:56:25.540' AS DateTime), 0)
INSERT [dbo].[02_LichSuDungBanAn] ([Id], [IdBanAn], [NgayTao], [IsSuDung]) VALUES (93, 1011, CAST(N'2020-06-02T23:00:28.217' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[02_LichSuDungBanAn] OFF
GO
SET IDENTITY_INSERT [dbo].[02_PhucVu] ON 

INSERT [dbo].[02_PhucVu] ([Id], [IdMon], [IdLichSuDungBanAn], [SoLuong], [DonGia], [ThanhToan], [NgayTao]) VALUES (136, 1, 91, 2, CAST(10000 AS Decimal(18, 0)), 1, CAST(N'2020-06-02T22:06:41.887' AS DateTime))
INSERT [dbo].[02_PhucVu] ([Id], [IdMon], [IdLichSuDungBanAn], [SoLuong], [DonGia], [ThanhToan], [NgayTao]) VALUES (137, 3, 91, 3, CAST(250000 AS Decimal(18, 0)), 1, CAST(N'2020-06-02T22:06:42.183' AS DateTime))
INSERT [dbo].[02_PhucVu] ([Id], [IdMon], [IdLichSuDungBanAn], [SoLuong], [DonGia], [ThanhToan], [NgayTao]) VALUES (138, 5, 91, 3, CAST(150000 AS Decimal(18, 0)), 1, CAST(N'2020-06-02T22:06:44.597' AS DateTime))
INSERT [dbo].[02_PhucVu] ([Id], [IdMon], [IdLichSuDungBanAn], [SoLuong], [DonGia], [ThanhToan], [NgayTao]) VALUES (139, 1, 93, 1, CAST(10000 AS Decimal(18, 0)), 1, CAST(N'2020-06-02T23:00:46.027' AS DateTime))
INSERT [dbo].[02_PhucVu] ([Id], [IdMon], [IdLichSuDungBanAn], [SoLuong], [DonGia], [ThanhToan], [NgayTao]) VALUES (140, 3, 93, 1, CAST(250000 AS Decimal(18, 0)), 1, CAST(N'2020-06-02T23:00:46.863' AS DateTime))
INSERT [dbo].[02_PhucVu] ([Id], [IdMon], [IdLichSuDungBanAn], [SoLuong], [DonGia], [ThanhToan], [NgayTao]) VALUES (141, 5, 93, 1, CAST(150000 AS Decimal(18, 0)), 1, CAST(N'2020-06-02T23:00:48.197' AS DateTime))
SET IDENTITY_INSERT [dbo].[02_PhucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[C02_Voucher] ON 

INSERT [dbo].[C02_Voucher] ([Id], [MaGiamGia], [NgayHieuLuc], [NgayHetHan], [SoLuongKichHoat], [SoLuongToiDa], [KhauTru], [PhanTramKhauTru]) VALUES (1, N'D2011V1', CAST(N'2020-05-30T00:00:00.000' AS DateTime), CAST(N'2020-06-15T00:00:00.000' AS DateTime), 2, 10, CAST(100000 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[C02_Voucher] ([Id], [MaGiamGia], [NgayHieuLuc], [NgayHetHan], [SoLuongKichHoat], [SoLuongToiDa], [KhauTru], [PhanTramKhauTru]) VALUES (2, N'D2011V2', CAST(N'2020-05-30T00:00:00.000' AS DateTime), CAST(N'2020-06-15T00:00:00.000' AS DateTime), 0, 20, NULL, NULL)
SET IDENTITY_INSERT [dbo].[C02_Voucher] OFF
GO
SET IDENTITY_INSERT [dbo].[C03_CustomerReview] ON 

INSERT [dbo].[C03_CustomerReview] ([Id], [Email], [Review], [Rating], [IdMon], [NgayTao]) VALUES (3, N'pvnghia123@gmail.com', N'Món này rất ngon', 3, 1, CAST(N'2020-05-27T22:24:57.283' AS DateTime))
INSERT [dbo].[C03_CustomerReview] ([Id], [Email], [Review], [Rating], [IdMon], [NgayTao]) VALUES (4, N'be.khocnhe.186@facebook.com', N'Món này cực kỳ ngon', 5, 1, CAST(N'2020-05-27T22:25:19.170' AS DateTime))
INSERT [dbo].[C03_CustomerReview] ([Id], [Email], [Review], [Rating], [IdMon], [NgayTao]) VALUES (5, NULL, N'ngon', 3, 5, CAST(N'2020-06-02T22:53:30.303' AS DateTime))
SET IDENTITY_INSERT [dbo].[C03_CustomerReview] OFF
GO
SET IDENTITY_INSERT [dbo].[Root_DonVi] ON 

INSERT [dbo].[Root_DonVi] ([Id], [TenLoaiDonVi]) VALUES (1, N'Đĩa')
INSERT [dbo].[Root_DonVi] ([Id], [TenLoaiDonVi]) VALUES (2, N'Kg')
INSERT [dbo].[Root_DonVi] ([Id], [TenLoaiDonVi]) VALUES (3, N'Miếng')
INSERT [dbo].[Root_DonVi] ([Id], [TenLoaiDonVi]) VALUES (4, N'gram')
INSERT [dbo].[Root_DonVi] ([Id], [TenLoaiDonVi]) VALUES (5, N'Xuất')
SET IDENTITY_INSERT [dbo].[Root_DonVi] OFF
GO
SET IDENTITY_INSERT [dbo].[Root_NhomQuyen] ON 

INSERT [dbo].[Root_NhomQuyen] ([Id], [TenNhom]) VALUES (1, N'USE       ')
INSERT [dbo].[Root_NhomQuyen] ([Id], [TenNhom]) VALUES (2, N'DEL       ')
INSERT [dbo].[Root_NhomQuyen] ([Id], [TenNhom]) VALUES (3, N'LOK       ')
INSERT [dbo].[Root_NhomQuyen] ([Id], [TenNhom]) VALUES (4, N'EDIT      ')
INSERT [dbo].[Root_NhomQuyen] ([Id], [TenNhom]) VALUES (5, N'ACC       ')
INSERT [dbo].[Root_NhomQuyen] ([Id], [TenNhom]) VALUES (6, N'OLD       ')
INSERT [dbo].[Root_NhomQuyen] ([Id], [TenNhom]) VALUES (7, N'FIX       ')
SET IDENTITY_INSERT [dbo].[Root_NhomQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Root_NhomTrangThai] ON 

INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (1, N'Quản lý khu vực ăn')
INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (2, N'Quản lý bàn ăn')
INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (3, N'Quản lý món ăn')
INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (4, N'Quản lý menu')
INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (5, N'Quản lý món ăn')
INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (6, N'Quản lý loại bàn')
INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (7, N'Phục vụ bàn ăn')
INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (8, N'Phục vụ menu')
INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (9, N'Phục vụ món ăn')
INSERT [dbo].[Root_NhomTrangThai] ([Id], [TenTrangThai]) VALUES (10, N'Phục vụ món ăn')
SET IDENTITY_INSERT [dbo].[Root_NhomTrangThai] OFF
GO
SET IDENTITY_INSERT [dbo].[Root_QuanLyTrangThai] ON 

INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (1, 1, 1)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (2, 2, 1)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (3, 3, 1)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (4, 1, 2)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (5, 2, 2)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (6, 3, 2)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (7, 1, 3)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (8, 2, 3)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (9, 3, 3)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (10, 1, 4)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (11, 2, 4)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (12, 3, 4)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (13, 1, 5)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (14, 2, 5)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (15, 3, 5)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (16, 1, 6)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (17, 2, 6)
INSERT [dbo].[Root_QuanLyTrangThai] ([Id], [IdTrangThai], [IdNhomTrangThai]) VALUES (18, 3, NULL)
SET IDENTITY_INSERT [dbo].[Root_QuanLyTrangThai] OFF
GO
SET IDENTITY_INSERT [dbo].[Root_TrangThai] ON 

INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (1, N'Chưa sử dụng')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (2, N'Đang sử dụng')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (3, N'Không sử dụng')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (4, N'Bàn đang trống')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (5, N'Bàn đặt trước')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (6, N'Chưa phục vụ')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (7, N'Đang phục vụ')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (8, N'Đã phục vụ')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (9, N'Chưa gọi món')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (10, N'Đang gọi món')
INSERT [dbo].[Root_TrangThai] ([Id], [TenTrangThai]) VALUES (11, N'Thanh Toán')
SET IDENTITY_INSERT [dbo].[Root_TrangThai] OFF
GO
ALTER TABLE [dbo].[00_BanAn] ADD  CONSTRAINT [DF_00_BanAn_SoGhe]  DEFAULT ((0)) FOR [SoGhe]
GO
ALTER TABLE [dbo].[00_BanAn] ADD  CONSTRAINT [DF_00_BanAn_IdLoaiBan]  DEFAULT ((1)) FOR [IdLoaiBan]
GO
ALTER TABLE [dbo].[00_BanAn] ADD  CONSTRAINT [DF_00_BanAn_IdLoaiKhuVuc]  DEFAULT ((1)) FOR [IdLoaiKhuVuc]
GO
ALTER TABLE [dbo].[00_BanAn] ADD  CONSTRAINT [DF_00_BanAn_IdTrangThai]  DEFAULT ((4)) FOR [IdTrangThai]
GO
ALTER TABLE [dbo].[00_BanAn] ADD  CONSTRAINT [DF_00_BanAn_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[00_KhuVucAn] ADD  CONSTRAINT [DF_00_LoaiKhuVuc_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[00_KhuVucAn] ADD  CONSTRAINT [DF_00_LoaiKhuVuc_IdTrangThai]  DEFAULT ((1)) FOR [IdTrangThai]
GO
ALTER TABLE [dbo].[00_LoaiBan] ADD  CONSTRAINT [DF_00_LoaiBan_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[00_LoaiBan] ADD  CONSTRAINT [DF_00_LoaiBan_IdtrangThai]  DEFAULT ((1)) FOR [IdTrangThai]
GO
ALTER TABLE [dbo].[01_CongThuc] ADD  CONSTRAINT [DF_01_CongThuc_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[01_CongThuc] ADD  CONSTRAINT [DF_01_CongThuc_SuaLanCuoi]  DEFAULT (getdate()) FOR [SuaLanCuoi]
GO
ALTER TABLE [dbo].[01_CongThuc] ADD  CONSTRAINT [DF_01_CongThuc_IdMon]  DEFAULT ((1)) FOR [IdMon]
GO
ALTER TABLE [dbo].[02_ChiTietHoaDon] ADD  CONSTRAINT [DF_02_ChiTietHoaDon_DonVi]  DEFAULT ((0)) FOR [DonVi]
GO
ALTER TABLE [dbo].[02_HoaDon] ADD  CONSTRAINT [DF_02_HoaDon_PhaiThu]  DEFAULT ((0)) FOR [PhaiThu]
GO
ALTER TABLE [dbo].[02_HoaDon] ADD  CONSTRAINT [DF_02_HoaDon_ThucThu]  DEFAULT ((0)) FOR [ThucThu]
GO
ALTER TABLE [dbo].[02_HoaDon] ADD  CONSTRAINT [DF_02_HoaDon_ChoNo]  DEFAULT ((0)) FOR [ChoNo]
GO
ALTER TABLE [dbo].[02_HoaDon] ADD  CONSTRAINT [DF_02_HoaDon_TrietKhau]  DEFAULT ((0)) FOR [TrietKhau]
GO
ALTER TABLE [dbo].[02_PhucVu] ADD  CONSTRAINT [DF_02_PhucVu_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[02_PhucVu] ADD  CONSTRAINT [DF_02_PhucVu_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[00_BanAn]  WITH CHECK ADD  CONSTRAINT [FK_00_BanAn_00_LoaiBan] FOREIGN KEY([IdLoaiBan])
REFERENCES [dbo].[00_LoaiBan] ([Id])
GO
ALTER TABLE [dbo].[00_BanAn] CHECK CONSTRAINT [FK_00_BanAn_00_LoaiBan]
GO
ALTER TABLE [dbo].[00_BanAn]  WITH CHECK ADD  CONSTRAINT [FK_00_BanAn_00_LoaiKhuVuc] FOREIGN KEY([IdLoaiKhuVuc])
REFERENCES [dbo].[00_KhuVucAn] ([Id])
GO
ALTER TABLE [dbo].[00_BanAn] CHECK CONSTRAINT [FK_00_BanAn_00_LoaiKhuVuc]
GO
ALTER TABLE [dbo].[00_BanAn]  WITH CHECK ADD  CONSTRAINT [FK_00_BanAn_Root_QuanLyTrangThai] FOREIGN KEY([IdTrangThai])
REFERENCES [dbo].[Root_QuanLyTrangThai] ([Id])
GO
ALTER TABLE [dbo].[00_BanAn] CHECK CONSTRAINT [FK_00_BanAn_Root_QuanLyTrangThai]
GO
ALTER TABLE [dbo].[00_KhuVucAn]  WITH CHECK ADD  CONSTRAINT [FK_00_KhuVucAn_Root_QuanLyTrangThai] FOREIGN KEY([IdTrangThai])
REFERENCES [dbo].[Root_QuanLyTrangThai] ([Id])
GO
ALTER TABLE [dbo].[00_KhuVucAn] CHECK CONSTRAINT [FK_00_KhuVucAn_Root_QuanLyTrangThai]
GO
ALTER TABLE [dbo].[00_LoaiBan]  WITH CHECK ADD  CONSTRAINT [FK_00_LoaiBan_Root_QuanLyTrangThai1] FOREIGN KEY([IdTrangThai])
REFERENCES [dbo].[Root_QuanLyTrangThai] ([Id])
GO
ALTER TABLE [dbo].[00_LoaiBan] CHECK CONSTRAINT [FK_00_LoaiBan_Root_QuanLyTrangThai1]
GO
ALTER TABLE [dbo].[01_CongThuc]  WITH CHECK ADD  CONSTRAINT [FK_01_CongThuc_01_Mon] FOREIGN KEY([IdMon])
REFERENCES [dbo].[01_Mon] ([Id])
GO
ALTER TABLE [dbo].[01_CongThuc] CHECK CONSTRAINT [FK_01_CongThuc_01_Mon]
GO
ALTER TABLE [dbo].[01_Menu]  WITH CHECK ADD  CONSTRAINT [FK_01_Menu_01_LoaiThucDon] FOREIGN KEY([IdLoaiThucDon])
REFERENCES [dbo].[01_LoaiThucDon] ([Id])
GO
ALTER TABLE [dbo].[01_Menu] CHECK CONSTRAINT [FK_01_Menu_01_LoaiThucDon]
GO
ALTER TABLE [dbo].[01_Mon]  WITH CHECK ADD  CONSTRAINT [FK_01_Mon_Root_QuanLyTrangThai1] FOREIGN KEY([IdTrangThai])
REFERENCES [dbo].[Root_QuanLyTrangThai] ([Id])
GO
ALTER TABLE [dbo].[01_Mon] CHECK CONSTRAINT [FK_01_Mon_Root_QuanLyTrangThai1]
GO
ALTER TABLE [dbo].[01_SapXepMenu]  WITH CHECK ADD  CONSTRAINT [FK_01_SapXepMenu_01_Menu] FOREIGN KEY([IdMenu])
REFERENCES [dbo].[01_Menu] ([Id])
GO
ALTER TABLE [dbo].[01_SapXepMenu] CHECK CONSTRAINT [FK_01_SapXepMenu_01_Menu]
GO
ALTER TABLE [dbo].[01_SapXepMenu]  WITH CHECK ADD  CONSTRAINT [FK_01_SapXepMenu_01_Mon] FOREIGN KEY([IdMon])
REFERENCES [dbo].[01_Mon] ([Id])
GO
ALTER TABLE [dbo].[01_SapXepMenu] CHECK CONSTRAINT [FK_01_SapXepMenu_01_Mon]
GO
ALTER TABLE [dbo].[01_SapXepNhom]  WITH CHECK ADD  CONSTRAINT [FK_01_SapXepNhom_01_Mon] FOREIGN KEY([IdMon])
REFERENCES [dbo].[01_Mon] ([Id])
GO
ALTER TABLE [dbo].[01_SapXepNhom] CHECK CONSTRAINT [FK_01_SapXepNhom_01_Mon]
GO
ALTER TABLE [dbo].[01_SapXepNhom]  WITH CHECK ADD  CONSTRAINT [FK_01_SapXepNhom_01_NhomMon] FOREIGN KEY([IdNhomMon])
REFERENCES [dbo].[01_NhomMon] ([Id])
GO
ALTER TABLE [dbo].[01_SapXepNhom] CHECK CONSTRAINT [FK_01_SapXepNhom_01_NhomMon]
GO
ALTER TABLE [dbo].[02_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_02_ChiTietHoaDon_02_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[02_HoaDon] ([Id])
GO
ALTER TABLE [dbo].[02_ChiTietHoaDon] CHECK CONSTRAINT [FK_02_ChiTietHoaDon_02_HoaDon]
GO
ALTER TABLE [dbo].[02_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_02_HoaDon_02_LichSuDungBanAn] FOREIGN KEY([IdLichSuBan])
REFERENCES [dbo].[02_LichSuDungBanAn] ([Id])
GO
ALTER TABLE [dbo].[02_HoaDon] CHECK CONSTRAINT [FK_02_HoaDon_02_LichSuDungBanAn]
GO
ALTER TABLE [dbo].[02_PhucVu]  WITH CHECK ADD  CONSTRAINT [FK_02_PhucVu_01_Mon] FOREIGN KEY([IdMon])
REFERENCES [dbo].[01_Mon] ([Id])
GO
ALTER TABLE [dbo].[02_PhucVu] CHECK CONSTRAINT [FK_02_PhucVu_01_Mon]
GO
ALTER TABLE [dbo].[02_PhucVu]  WITH CHECK ADD  CONSTRAINT [FK_02_PhucVu_02_LichSuDungBanAn] FOREIGN KEY([IdLichSuDungBanAn])
REFERENCES [dbo].[02_LichSuDungBanAn] ([Id])
GO
ALTER TABLE [dbo].[02_PhucVu] CHECK CONSTRAINT [FK_02_PhucVu_02_LichSuDungBanAn]
GO
ALTER TABLE [dbo].[C03_CustomerReview]  WITH CHECK ADD  CONSTRAINT [FK_C03_CustomerReview_01_Mon] FOREIGN KEY([IdMon])
REFERENCES [dbo].[01_Mon] ([Id])
GO
ALTER TABLE [dbo].[C03_CustomerReview] CHECK CONSTRAINT [FK_C03_CustomerReview_01_Mon]
GO
ALTER TABLE [dbo].[Root_QuanLyTrangThai]  WITH CHECK ADD  CONSTRAINT [FK_Root_QuanLyTrangThai_Root_NhomTrangThai] FOREIGN KEY([IdNhomTrangThai])
REFERENCES [dbo].[Root_NhomTrangThai] ([Id])
GO
ALTER TABLE [dbo].[Root_QuanLyTrangThai] CHECK CONSTRAINT [FK_Root_QuanLyTrangThai_Root_NhomTrangThai]
GO
ALTER TABLE [dbo].[Root_QuanLyTrangThai]  WITH CHECK ADD  CONSTRAINT [FK_Root_QuanLyTrangThai_Root_TrangThai] FOREIGN KEY([IdTrangThai])
REFERENCES [dbo].[Root_TrangThai] ([Id])
GO
ALTER TABLE [dbo].[Root_QuanLyTrangThai] CHECK CONSTRAINT [FK_Root_QuanLyTrangThai_Root_TrangThai]
GO
USE [master]
GO
ALTER DATABASE [QuanLyNhaHang] SET  READ_WRITE 
GO
