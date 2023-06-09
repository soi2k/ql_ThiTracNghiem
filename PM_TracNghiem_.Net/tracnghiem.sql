USE [master]
GO
/****** Object:  Database [TracNghiem.Net]    Script Date: 30/01/2023 10:34:54 PM ******/
CREATE DATABASE [TracNghiem.Net]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TracNghiem.Net', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TracNghiem.Net.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TracNghiem.Net_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TracNghiem.Net_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TracNghiem.Net] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TracNghiem.Net].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TracNghiem.Net] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET ARITHABORT OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TracNghiem.Net] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TracNghiem.Net] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TracNghiem.Net] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TracNghiem.Net] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TracNghiem.Net] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TracNghiem.Net] SET  MULTI_USER 
GO
ALTER DATABASE [TracNghiem.Net] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TracNghiem.Net] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TracNghiem.Net] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TracNghiem.Net] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TracNghiem.Net]
GO
/****** Object:  Table [dbo].[CaThi]    Script Date: 30/01/2023 10:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaThi](
	[MaCaThi] [nvarchar](11) NOT NULL,
	[TenKiThi] [nvarchar](50) NULL,
	[MaMon] [nchar](4) NULL,
	[TGbatdau] [datetime] NULL,
	[TenCaThi] [nvarchar](50) NULL,
 CONSTRAINT [PK_CaThi] PRIMARY KEY CLUSTERED 
(
	[MaCaThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_KetQua]    Script Date: 30/01/2023 10:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_KetQua](
	[MaThiSinh] [nchar](10) NOT NULL,
	[Diem] [float] NULL,
	[MaMon] [nchar](4) NOT NULL,
	[NgayThi] [nchar](12) NOT NULL,
	[MaCaThi] [nvarchar](11) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_MonThi]    Script Date: 30/01/2023 10:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_MonThi](
	[MaMon] [nchar](4) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoCauHoi] [int] NULL,
	[ThoiGianLamBai] [int] NULL,
	[MaNhanVien] [nchar](4) NULL,
 CONSTRAINT [PK_Table_MonThi] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_NhanVien]    Script Date: 30/01/2023 10:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_NhanVien](
	[MaNhanVien] [nchar](4) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[NgaySinh] [varchar](20) NOT NULL,
	[ChucVu] [nvarchar](20) NULL,
	[MatKhau] [nvarchar](250) NULL,
	[mh] [nvarchar](20) NULL,
 CONSTRAINT [PK_Table_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_ThiSinh]    Script Date: 30/01/2023 10:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_ThiSinh](
	[MaThiSinh] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[NgaySinh] [nvarchar](20) NULL,
	[TenDangNhap] [nchar](20) NOT NULL,
	[MatKhau] [nchar](10) NOT NULL,
	[Truong] [nvarchar](50) NOT NULL,
	[Lop] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Table_ThiSinh] PRIMARY KEY CLUSTERED 
(
	[MaThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_CauHoi]    Script Date: 30/01/2023 10:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CauHoi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungCauHoi] [nvarchar](max) NULL,
	[MaNhanVien] [nchar](4) NULL,
	[MaMon] [nchar](4) NULL,
	[DapAn1] [nvarchar](max) NULL,
	[DapAn2] [nvarchar](max) NULL,
	[DapAn3] [nvarchar](max) NULL,
	[DapAn4] [nvarchar](max) NULL,
	[DapAnDung] [nvarchar](max) NULL,
	[created_time] [nvarchar](255) NULL,
	[lastest_update] [nvarchar](250) NULL,
	[Chuong] [int] NULL,
	[CapDo] [nvarchar](10) NULL,
 CONSTRAINT [PK_tbl_CauHoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Table_KetQua]  WITH CHECK ADD  CONSTRAINT [FK_Table_KetQua_CaThi] FOREIGN KEY([MaCaThi])
REFERENCES [dbo].[CaThi] ([MaCaThi])
GO
ALTER TABLE [dbo].[Table_KetQua] CHECK CONSTRAINT [FK_Table_KetQua_CaThi]
GO
ALTER TABLE [dbo].[Table_KetQua]  WITH CHECK ADD  CONSTRAINT [FK_Table_KetQua_Table_ThiSinh] FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[Table_ThiSinh] ([MaThiSinh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Table_KetQua] CHECK CONSTRAINT [FK_Table_KetQua_Table_ThiSinh]
GO
USE [master]
GO
ALTER DATABASE [TracNghiem.Net] SET  READ_WRITE 
GO
