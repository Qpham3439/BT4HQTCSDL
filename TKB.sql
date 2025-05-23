USE [master]
GO
/****** Object:  Database [QL_TKB]    Script Date: 4/15/2025 6:08:06 PM ******/
CREATE DATABASE [QL_TKB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_TKB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QL_TKB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_TKB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QL_TKB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_TKB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_TKB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_TKB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_TKB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_TKB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_TKB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_TKB] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_TKB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_TKB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_TKB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_TKB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_TKB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_TKB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_TKB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_TKB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_TKB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_TKB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_TKB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_TKB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_TKB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_TKB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_TKB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_TKB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_TKB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_TKB] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_TKB] SET  MULTI_USER 
GO
ALTER DATABASE [QL_TKB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_TKB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_TKB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_TKB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_TKB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_TKB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_TKB', N'ON'
GO
ALTER DATABASE [QL_TKB] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_TKB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_TKB]
GO
/****** Object:  Table [dbo].[GV]    Script Date: 4/15/2025 6:08:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV](
	[magv] [varchar](20) NOT NULL,
	[tengv] [nvarchar](30) NULL,
 CONSTRAINT [PK_GV] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichHoc]    Script Date: 4/15/2025 6:08:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichHoc](
	[malichhoc] [varchar](20) NOT NULL,
	[thu] [varchar](6) NULL,
	[sotiet] [tinyint] NULL,
	[tietbd] [tinyint] NULL,
	[giovao] [time](7) NULL,
	[giora] [time](7) NULL,
	[magv] [varchar](20) NULL,
	[malop] [varchar](20) NULL,
	[maphong] [varchar](20) NULL,
	[mamon] [varchar](20) NULL,
	[ngay] [date] NULL,
 CONSTRAINT [PK_LichHoc] PRIMARY KEY CLUSTERED 
(
	[malichhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 4/15/2025 6:08:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[malop] [varchar](20) NOT NULL,
	[tenlop] [varchar](30) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mon]    Script Date: 4/15/2025 6:08:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon](
	[mamon] [varchar](20) NOT NULL,
	[tenmon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mon] PRIMARY KEY CLUSTERED 
(
	[mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongHoc]    Script Date: 4/15/2025 6:08:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongHoc](
	[maphong] [varchar](20) NOT NULL,
	[tenphong] [varchar](20) NULL,
 CONSTRAINT [PK_PhongHoc] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'35', N'Đ.T.Hiên  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'36', N'N.V.Huy  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'37', N'N.T.Hương  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'38', N'T.T.N.Linh  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'39', N'P.T.T.Hiền  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'40', N'T.C.Nhung  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'41', N'N.T.Linh  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'42', N'N.V.Tính  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'43', N'T.T.Thanh  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'44', N'Đ.D.Cốp  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'45', N'N.M.Ngọc  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'46', N'B.T.Thi  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'47', N'P.Q.Hiếu  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'48', N'Đ.N.Tôn  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'49', N'L.T.H.Trang  ')
INSERT [dbo].[GV] ([magv], [tengv]) VALUES (N'50', N'N.T.Duy ')
GO
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'10', N'3', 1, 1, CAST(N'06:30:00' AS Time), CAST(N'07:45:00' AS Time), N'39', N'8', N'8', N'4', CAST(N'2025-04-15' AS Date))
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'11', N'3', 2, 1, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), N'41', N'9', N'9', N'4', CAST(N'2025-04-15' AS Date))
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'12', N'3', 2, 1, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), N'42', N'2', N'2', N'6', CAST(N'2025-04-15' AS Date))
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'3', N'2', 2, 2, CAST(N'07:55:00' AS Time), CAST(N'10:35:00' AS Time), N'35', N'1', N'1', N'1', CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'4', N'2', 2, 3, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time), N'36', N'2', N'2', N'2', CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'5', N'2', 2, 5, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), N'37', N'3', N'3', N'1', CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'6', N'2', 2, 5, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), N'38', N'4', N'4', N'1', CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'7', N'2', 2, 5, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), N'39', N'5', N'5', N'3', CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'8', N'2', 1, 6, CAST(N'13:55:00' AS Time), CAST(N'15:10:00' AS Time), N'40', N'6', N'6', N'4', CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LichHoc] ([malichhoc], [thu], [sotiet], [tietbd], [giovao], [giora], [magv], [malop], [maphong], [mamon], [ngay]) VALUES (N'9', N'2', 2, 7, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), N'36', N'7', N'7', N'5', CAST(N'2025-04-14' AS Date))
GO
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'1', N'58KTP')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'10', N'60CNTDH5')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'11', N'60CNTDH1')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'12', N'59KC2')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'13', N'59KC1')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'14', N'58CDT2')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'15', N'60CNTDH7')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'16', N'60CNTDH3')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'17', N'60KMT')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'18', N'58CLCDT')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'19', N'60CNTDH4')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'2', N'60CNTDH2')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'20', N'59KXD')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'21', N'59KC1-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'22', N'58KTD1-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'23', N'58CDT2-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'24', N'59KC2-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'25', N'58CDT3-03')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'26', N'58CDT3-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'27', N'59KC2-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'28', N'59KMT-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'29', N'60KMT-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'3', N'59KMT')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'30', N'60CNTDH3-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'31', N'58CDT3-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'32', N'60KMT-03')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'33', N'60CNTDH4-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'34', N'60CNTDH6-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'35', N'58CDT1-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'36', N'60CNTDH5-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'37', N'60CNTDH3-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'38', N'58KTD2-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'39', N'57KMT-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'4', N'60CNTDH6')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'40', N'60CNTDH4-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'41', N'60CNTDH6-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'42', N'58CDT1-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'43', N'60CNTDH5-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'44', N'59KC1-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'45', N'58KTD2-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'46', N'57KMT-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'47', N'60CNTDH2-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'48', N'59KMT-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'49', N'60CNTDH7-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'5', N'58CDT1')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'50', N'58KTD1-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'51', N'60CNTDH1-03')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'52', N'60CNTDH2-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'53', N'59KMT-03')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'54', N'60CNTDH7-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'55', N'58CDT2-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'56', N'58KTP-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'57', N'60CNTDH1-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'58', N'58CLCDT-01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'59', N'60KMT-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'6', N'57KMT')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'60', N'60CNTDH1-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'61', N'58KTP-03')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'62', N'58KTP-02')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'7', N'58CDT3')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'8', N'58KTD2')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'9', N'58KTD1')
GO
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'1', N'Tin học trong kỹ thuật')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'10', N'Công nghệ phần mềm')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'11', N'Phương pháp tính')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'12', N'Toán rời rạc')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'2', N'Lập trình Python')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'3', N'Kiến trúc máy tính')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'4', N'Vi xử lý – Vi điều khiển')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'5', N'Khoa học dữ liệu')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'6', N'Quản trị mạng')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'7', N'Chuyển đổi số')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'8', N'Phân tích và thiết kế hệ thống')
INSERT [dbo].[Mon] ([mamon], [tenmon]) VALUES (N'9', N'Hệ quản trị cơ sở dữ liệu')
GO
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'1', N'A9-201')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'10', N'A10-201')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'11', N'A8-101')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'12', N'A10-102')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'13', N'A10-503')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'14', N'A9-102')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'15', N'A9-302')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'16', N'A16-501')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'17', N'A10-502')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'18', N'A10-202')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'19', N'A7-203')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'2', N'A9-204')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'20', N'A9-301')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'21', N'A7-204')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'22', N'A16-301')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'23', N'TVDT-T203')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'24', N'TVDT-T202')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'25', N'TVDT-T301')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'3', N'A10-101')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'4', N'A10-104')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'5', N'A16-603')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'6', N'A10-401')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'7', N'A8-303')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'8', N'A16-401')
INSERT [dbo].[PhongHoc] ([maphong], [tenphong]) VALUES (N'9', N'A10-404')
GO
ALTER TABLE [dbo].[LichHoc]  WITH CHECK ADD  CONSTRAINT [FK_LichHoc_GV] FOREIGN KEY([magv])
REFERENCES [dbo].[GV] ([magv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichHoc] CHECK CONSTRAINT [FK_LichHoc_GV]
GO
ALTER TABLE [dbo].[LichHoc]  WITH CHECK ADD  CONSTRAINT [FK_LichHoc_Lop] FOREIGN KEY([malop])
REFERENCES [dbo].[Lop] ([malop])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichHoc] CHECK CONSTRAINT [FK_LichHoc_Lop]
GO
ALTER TABLE [dbo].[LichHoc]  WITH CHECK ADD  CONSTRAINT [FK_LichHoc_Mon] FOREIGN KEY([mamon])
REFERENCES [dbo].[Mon] ([mamon])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichHoc] CHECK CONSTRAINT [FK_LichHoc_Mon]
GO
ALTER TABLE [dbo].[LichHoc]  WITH CHECK ADD  CONSTRAINT [FK_LichHoc_PhongHoc] FOREIGN KEY([maphong])
REFERENCES [dbo].[PhongHoc] ([maphong])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichHoc] CHECK CONSTRAINT [FK_LichHoc_PhongHoc]
GO
USE [master]
GO
ALTER DATABASE [QL_TKB] SET  READ_WRITE 
GO
