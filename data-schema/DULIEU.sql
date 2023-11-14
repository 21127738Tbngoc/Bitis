USE [master]
GO
/****** Object:  Database [QLBANHANG]    Script Date: 11-06-2023 03:52:49 PM ******/
CREATE DATABASE [QLBANHANG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBANHANG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLBANHANG.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBANHANG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLBANHANG_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLBANHANG] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBANHANG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBANHANG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBANHANG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBANHANG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBANHANG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBANHANG] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBANHANG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBANHANG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBANHANG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBANHANG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBANHANG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBANHANG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBANHANG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBANHANG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBANHANG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBANHANG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBANHANG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBANHANG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBANHANG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBANHANG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBANHANG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBANHANG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBANHANG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBANHANG] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBANHANG] SET  MULTI_USER 
GO
ALTER DATABASE [QLBANHANG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBANHANG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBANHANG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBANHANG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBANHANG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBANHANG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBANHANG', N'ON'
GO
ALTER DATABASE [QLBANHANG] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLBANHANG] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLBANHANG]
GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 11-06-2023 03:52:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[mahd] [nchar](10) NOT NULL,
	[masp] [nchar](30) NOT NULL,
	[soluong] [int] NULL,
	[dongia] [int] NOT NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC,
	[dongia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 11-06-2023 03:52:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[mahd] [nchar](10) NOT NULL,
	[ngaylap] [date] NULL,
	[makh] [nchar](30) NULL,
 CONSTRAINT [PK_HOADON_1] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 11-06-2023 03:52:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[makh] [nchar](30) NOT NULL,
	[hoten] [text] NULL,
	[gioitinh] [nchar](10) NULL,
	[dthoai] [nchar](30) NULL,
	[diachi] [text] NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 11-06-2023 03:52:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM](
	[masp] [nchar](30) NOT NULL,
	[tensp] [text] NULL,
	[ngaysx] [date] NULL,
	[dongia] [int] NULL,
 CONSTRAINT [PK_SAN_PHAM] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CT_HOADON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'14        ', N'199-37-0795                   ', 1, 257)
INSERT [dbo].[CT_HOADON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'24        ', N'602-11-5874                   ', 68, 210)
INSERT [dbo].[CT_HOADON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'25        ', N'212-21-5415                   ', 50, 103)
INSERT [dbo].[CT_HOADON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'37        ', N'531-46-9133                   ', 44, 69)
INSERT [dbo].[CT_HOADON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'47        ', N'528-28-0806                   ', 63, 929)
INSERT [dbo].[CT_HOADON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'59        ', N'828-54-9542                   ', 7, 840)
INSERT [dbo].[CT_HOADON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'60        ', N'405-14-3371                   ', 82, 333)
INSERT [dbo].[CT_HOADON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'69        ', N'275-96-9899                   ', 69, 926)
INSERT [dbo].[CT_HOADON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'92        ', N'784-49-0731                   ', 66, 967)
GO
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [makh]) VALUES (N'14        ', CAST(N'2022-11-23' AS Date), N'79-624-6188                   ')
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [makh]) VALUES (N'24        ', CAST(N'2022-10-18' AS Date), N'27-602-8767                   ')
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [makh]) VALUES (N'25        ', CAST(N'2022-12-06' AS Date), N'16-235-0489                   ')
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [makh]) VALUES (N'37        ', CAST(N'2022-10-08' AS Date), N'46-519-8840                   ')
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [makh]) VALUES (N'47        ', CAST(N'2022-12-04' AS Date), N'11-462-5056                   ')
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [makh]) VALUES (N'59        ', CAST(N'2022-06-07' AS Date), N'71-412-7316                   ')
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [makh]) VALUES (N'60        ', CAST(N'2022-11-25' AS Date), N'02-248-3836                   ')
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [makh]) VALUES (N'69        ', CAST(N'2022-01-18' AS Date), N'50-278-1936                   ')
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [makh]) VALUES (N'92        ', CAST(N'2022-05-15' AS Date), N'91-002-3261                   ')
GO
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'02-248-3836                   ', N'Wilbur Treble', N'Male      ', N'02/01/2003                    ', N'1 Derek Lane')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'11-462-5056                   ', N'Modesty Wallwork', N'Female    ', N'09/03/2003                    ', N'854 Northridge Plaza')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'16-235-0489                   ', N'Travers Kloisner', N'Male      ', N'26/05/2003                    ', N'40201 Stone Corner Center')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'27-602-8767                   ', N'Windham Goard', N'Male      ', N'12/11/2003                    ', N'27 Meadow Ridge Terrace')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'46-519-8840                   ', N'Diane-marie Riccione', N'Female    ', N'03/10/2003                    ', N'267 Moose Place')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'50-278-1936                   ', N'Marnie Casey', N'Female    ', N'22/03/2003                    ', N'0 Nancy Alley')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'71-412-7316                   ', N'Gabbey Ledley', N'Female    ', N'07/03/2003                    ', N'9177 Ramsey Trail')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'79-624-6188                   ', N'Sydney Teeney', N'Male      ', N'29/11/2003                    ', N'36008 Schiller Plaza')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'80-420-8919                   ', N'Trent Ivanchikov', N'Male      ', N'27/11/2003                    ', N'92 Paget Park')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'89-101-5097                   ', N'Niki Haslegrave', N'Male      ', N'21/06/2003                    ', N'9896 Glacier Hill Junction')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'91-002-3261                   ', N'Clayborne Sitford', N'Male      ', N'08/12/2003                    ', N'90698 Merrick Trail')
GO
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'199-37-0795                   ', N'Jicama', CAST(N'2023-05-13' AS Date), 257)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'212-21-5415                   ', N'Garbage Bags - Clear', CAST(N'2023-05-13' AS Date), 103)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'275-96-9899                   ', N'Roe - Lump Fish, Red', CAST(N'2023-05-10' AS Date), 926)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'405-14-3371                   ', N'Bag - Clear 7 Lb', CAST(N'2023-05-26' AS Date), 333)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'528-28-0806                   ', N'Calaloo', CAST(N'2023-05-05' AS Date), 929)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'531-46-9133                   ', N'Sour Cream', CAST(N'2023-05-17' AS Date), 69)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'602-11-5874                   ', N'Bread - Roll, Canadian Dinner', CAST(N'2023-05-03' AS Date), 210)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'784-49-0731                   ', N'Corn - Mini', CAST(N'2023-05-11' AS Date), 967)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'828-54-9542                   ', N'Beef - Rib Eye Aaa', CAST(N'2023-05-23' AS Date), 840)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'828-62-5972                   ', N'Yoplait - Strawbrasp Peac', CAST(N'2023-05-03' AS Date), 263)
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_HOADON] FOREIGN KEY([mahd])
REFERENCES [dbo].[HOADON] ([mahd])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_HOADON]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_SAN_PHAM] FOREIGN KEY([masp])
REFERENCES [dbo].[SAN_PHAM] ([masp])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_SAN_PHAM]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACH_HANG] FOREIGN KEY([makh])
REFERENCES [dbo].[KHACH_HANG] ([makh])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACH_HANG]
GO
USE [master]
GO
ALTER DATABASE [QLBANHANG] SET  READ_WRITE 
GO
