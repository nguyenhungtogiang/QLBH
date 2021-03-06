USE [QLBH]
GO
/****** Object:  Table [dbo].[Audit_CTHD]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_CTHD](
	[MaHD] [nchar](10) NOT NULL,
	[MaHang] [nchar](10) NULL,
	[SL] [int] NULL,
	[ThaoTac] [nvarchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_HangHoa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_HangHoa](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[DVT] [nvarchar](20) NULL,
	[DonGia] [float] NULL,
	[SLcon] [int] NULL,
	[MaLoaiHang] [nchar](10) NULL,
	[ThaoTac] [nchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_HoaDon]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_HoaDon](
	[MaHD] [nchar](10) NULL,
	[NgayHD] [date] NULL,
	[MaKH] [nchar](10) NULL,
	[MaNV] [nchar](10) NULL,
	[ThaoTac] [nvarchar](50) NULL,
	[NgayGo] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_KhachHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_KhachHang](
	[MaKH] [nchar](10) NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [nchar](10) NULL,
	[STK] [nchar](20) NULL,
	[MST] [nchar](20) NULL,
	[ThaoTac] [nvarchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_LoaiHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_LoaiHang](
	[MaLoaiHang] [nchar](10) NOT NULL,
	[TenLoaiHang] [nchar](50) NULL,
	[GhiChu] [nchar](100) NULL,
	[ThaoTac] [nchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit_NhanVien]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_NhanVien](
	[MaNV] [nchar](10) NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [nchar](10) NULL,
	[ThaoTac] [nvarchar](50) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [nchar](10) NOT NULL,
	[MaHang] [nchar](10) NOT NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[DVT] [nvarchar](20) NULL,
	[DonGia] [float] NULL,
	[SLcon] [int] NULL,
	[MaLoaiHang] [nchar](10) NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](10) NOT NULL,
	[NgayHD] [date] NULL,
	[MaKH] [nchar](10) NULL,
	[MaNV] [nchar](10) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [nchar](10) NULL,
	[STK] [nchar](20) NULL,
	[MST] [nchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoaiHang] [nchar](10) NOT NULL,
	[TenLoaiHang] [nvarchar](50) NULL,
	[GhiChu] [nchar](200) NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](200) NULL,
	[MaNV] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 07:26:51.960' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 07:26:52.800' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:56:52.470' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:56:52.470' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 07:56:58.213' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 07:56:58.213' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:56:59.053' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:56:59.053' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:56:59.067' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:56:59.067' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:56:59.587' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:56:59.587' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:57:00.293' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:57:00.293' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 07:57:02.263' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 07:57:02.263' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 8, N'U', CAST(N'2019-03-17 09:08:04.600' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 8, N'D', CAST(N'2019-03-17 09:08:04.600' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'U', CAST(N'2019-03-17 09:08:05.260' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'D', CAST(N'2019-03-17 09:08:05.260' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'U', CAST(N'2019-03-17 09:08:05.433' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'D', CAST(N'2019-03-17 09:08:05.433' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'U', CAST(N'2019-03-17 09:08:05.580' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'D', CAST(N'2019-03-17 09:08:05.580' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 12:06:14.553' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 12:06:14.560' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 12:07:14.360' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 12:07:14.360' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 12:09:27.147' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 12:09:27.147' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 12:13:17.967' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 12:13:17.967' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 12:15:23.820' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 12:15:23.820' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'U', CAST(N'2019-03-17 13:17:20.830' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 4, N'D', CAST(N'2019-03-17 13:17:20.857' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 13:17:55.783' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 13:17:55.787' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 13:23:37.177' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 13:23:37.177' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 15:36:48.730' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 15:36:48.767' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 15:38:54.987' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 15:38:54.987' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 15:40:17.090' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 15:40:17.090' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 7, N'U', CAST(N'2019-03-17 15:40:37.160' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 7, N'D', CAST(N'2019-03-17 15:40:37.160' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 10, N'I', CAST(N'2019-03-19 13:14:34.767' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 100, N'I', CAST(N'2019-03-19 13:15:22.387' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD06      ', N'HH07      ', 150, N'I', CAST(N'2019-03-19 13:15:54.650' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-19 13:21:57.910' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-19 13:21:57.913' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 103, N'U', CAST(N'2019-03-19 13:22:42.827' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 103, N'D', CAST(N'2019-03-19 13:22:42.827' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 153, N'U', CAST(N'2019-03-19 13:23:20.537' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 153, N'D', CAST(N'2019-03-19 13:23:20.537' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 3, N'U', CAST(N'2019-03-19 13:24:14.793' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH03      ', 3, N'D', CAST(N'2019-03-19 13:24:14.793' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 241, N'U', CAST(N'2019-03-19 15:12:04.967' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 241, N'D', CAST(N'2019-03-19 15:12:04.967' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 244, N'U', CAST(N'2019-03-19 15:15:00.660' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 244, N'D', CAST(N'2019-03-19 15:15:00.660' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 247, N'U', CAST(N'2019-03-19 15:17:42.837' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 247, N'D', CAST(N'2019-03-19 15:17:42.837' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 251, N'U', CAST(N'2019-03-19 15:17:48.643' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 251, N'D', CAST(N'2019-03-19 15:17:48.643' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 100, N'U', CAST(N'2019-03-19 15:21:21.450' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 10, N'U', CAST(N'2019-03-19 15:23:23.460' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 10, N'D', CAST(N'2019-03-19 15:23:23.460' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 255, N'U', CAST(N'2019-03-19 15:32:15.303' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 255, N'D', CAST(N'2019-03-19 15:32:15.303' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 20, N'U', CAST(N'2019-03-19 15:32:33.083' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH05      ', 20, N'D', CAST(N'2019-03-19 15:32:33.083' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 258, N'U', CAST(N'2019-03-19 16:00:52.377' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 258, N'D', CAST(N'2019-03-19 16:00:52.377' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 264, N'U', CAST(N'2019-03-19 16:00:54.557' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 264, N'D', CAST(N'2019-03-19 16:00:54.557' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 270, N'U', CAST(N'2019-03-19 16:02:00.557' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 270, N'D', CAST(N'2019-03-19 16:02:00.557' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 273, N'U', CAST(N'2019-03-22 13:47:01.677' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 273, N'D', CAST(N'2019-03-22 13:47:01.717' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 278, N'U', CAST(N'2019-03-22 13:47:03.760' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 278, N'D', CAST(N'2019-03-22 13:47:03.760' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 283, N'U', CAST(N'2019-03-22 13:47:05.353' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 283, N'D', CAST(N'2019-03-22 13:47:05.353' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 1, N'I', CAST(N'2019-03-22 22:36:00.947' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'U', CAST(N'2019-03-22 22:36:49.890' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'D', CAST(N'2019-03-22 22:36:49.890' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 290, N'U', CAST(N'2019-03-22 22:37:07.820' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 290, N'D', CAST(N'2019-03-22 22:37:07.820' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 1, N'U', CAST(N'2019-03-22 22:37:43.227' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 1, N'D', CAST(N'2019-03-22 22:37:43.227' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 0, N'U', CAST(N'2019-03-22 22:46:26.803' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 1, N'U', CAST(N'2019-03-22 22:46:34.500' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 1, N'D', CAST(N'2019-03-22 22:46:34.500' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 10, N'I', CAST(N'2019-03-22 22:47:12.837' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 1, N'I', CAST(N'2019-03-22 22:51:05.630' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'U', CAST(N'2019-03-22 22:57:36.260' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'D', CAST(N'2019-03-22 22:57:36.260' AS DateTime))
GO
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'U', CAST(N'2019-03-22 22:58:03.173' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'D', CAST(N'2019-03-22 22:58:03.173' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'U', CAST(N'2019-03-22 22:59:17.770' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'D', CAST(N'2019-03-22 22:59:17.773' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH11      ', -1, N'I', CAST(N'2019-03-22 22:59:28.770' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH01      ', 0, N'I', CAST(N'2019-03-22 23:20:05.250' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH05      ', 2, N'U', CAST(N'2019-03-22 23:21:43.790' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH05      ', 2, N'D', CAST(N'2019-03-22 23:21:43.790' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD8       ', N'HH02      ', 3, N'I', CAST(N'2019-03-23 15:55:40.070' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD7       ', N'HH01      ', 2, N'I', CAST(N'2019-03-23 20:08:37.123' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'U', CAST(N'2019-03-23 20:42:21.857' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 288, N'D', CAST(N'2019-03-23 20:42:21.860' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 291, N'U', CAST(N'2019-03-23 20:42:30.500' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 291, N'D', CAST(N'2019-03-23 20:42:30.500' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 294, N'U', CAST(N'2019-03-23 20:42:49.570' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'U', CAST(N'2019-03-17 08:42:17.800' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 6, N'D', CAST(N'2019-03-17 08:42:17.800' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 08:59:29.130' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 08:59:29.130' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 08:59:50.990' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 08:59:50.993' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'U', CAST(N'2019-03-17 09:08:00.510' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 3, N'D', CAST(N'2019-03-17 09:08:00.510' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'U', CAST(N'2019-03-17 09:08:52.343' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 4, N'D', CAST(N'2019-03-17 09:08:52.343' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 100, N'D', CAST(N'2019-03-19 15:21:21.450' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 0, N'D', CAST(N'2019-03-22 22:46:26.807' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD8       ', N'HH01      ', 3, N'I', CAST(N'2019-03-23 15:56:33.477' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 287, N'U', CAST(N'2019-03-23 16:10:24.127' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD7       ', N'HH01      ', 2, N'I', CAST(N'2019-03-23 20:36:15.790' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 294, N'D', CAST(N'2019-03-23 20:42:49.570' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 297, N'U', CAST(N'2019-03-23 20:42:52.943' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 297, N'D', CAST(N'2019-03-23 20:42:52.943' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 300, N'U', CAST(N'2019-03-23 20:42:55.727' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 300, N'D', CAST(N'2019-03-23 20:42:55.727' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 303, N'U', CAST(N'2019-03-23 20:42:57.033' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 303, N'D', CAST(N'2019-03-23 20:42:57.033' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 306, N'U', CAST(N'2019-03-23 20:42:58.147' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 306, N'D', CAST(N'2019-03-23 20:42:58.147' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH05      ', 1, N'I', CAST(N'2019-03-23 20:51:24.443' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH01      ', 3, N'I', CAST(N'2019-03-23 20:55:29.000' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD7       ', N'HH05      ', 1, N'I', CAST(N'2019-03-23 21:09:26.800' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD7       ', N'HH06      ', 114, N'I', CAST(N'2019-03-23 21:09:26.930' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD7       ', N'HH01      ', 309, N'I', CAST(N'2019-03-23 21:13:03.377' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD7       ', N'HH11      ', 2, N'I', CAST(N'2019-03-23 21:13:03.440' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD10      ', N'HH01      ', 1, N'I', CAST(N'2019-03-24 11:17:14.357' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD10      ', N'HH01      ', 3, N'I', CAST(N'2019-03-24 11:17:23.870' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD10      ', N'HH10      ', 3, N'I', CAST(N'2019-03-24 11:17:27.473' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD11      ', N'HH10      ', 1, N'I', CAST(N'2019-03-24 11:50:45.807' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD13      ', N'HH05      ', 2, N'I', CAST(N'2019-03-25 17:20:38.230' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD11      ', N'HH01      ', 3, N'I', CAST(N'2019-03-25 18:43:56.343' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD11      ', N'HH01      ', 2, N'I', CAST(N'2019-03-25 18:46:31.970' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD11      ', N'HH02      ', 2, N'I', CAST(N'2019-03-25 18:48:42.037' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD19      ', N'HH05      ', 3, N'I', CAST(N'2019-03-27 09:35:40.697' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD20      ', N'HH05      ', 4, N'I', CAST(N'2019-03-27 13:37:34.423' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD21      ', N'HH01      ', 2, N'I', CAST(N'2019-03-27 23:34:07.147' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD21      ', N'HH10      ', 1, N'I', CAST(N'2019-03-27 23:34:07.193' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD21      ', N'HH01      ', 2, N'I', CAST(N'2019-03-27 23:34:46.920' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD22      ', N'HH05      ', 1, N'I', CAST(N'2019-03-27 23:42:42.413' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD18      ', N'HH10      ', 14, N'I', CAST(N'2019-03-28 13:50:24.440' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD18      ', N'HH01      ', 2, N'I', CAST(N'2019-03-28 13:50:24.443' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD29      ', N'HH01      ', 4, N'I', CAST(N'2019-03-29 15:26:03.610' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD24      ', N'HH01      ', 1, N'I', CAST(N'2019-03-29 15:40:38.053' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD29      ', N'HH10      ', 4, N'I', CAST(N'2019-03-30 08:30:05.387' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD29      ', N'HH11      ', 4, N'I', CAST(N'2019-03-30 08:30:05.390' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD29      ', N'HH05      ', 2, N'I', CAST(N'2019-03-30 08:30:05.390' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD30      ', N'HH01      ', 2, N'I', CAST(N'2019-03-30 08:55:55.653' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD30      ', N'HH10      ', 2, N'I', CAST(N'2019-03-30 08:55:55.657' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD31      ', N'HH01      ', 2, N'I', CAST(N'2019-03-30 10:02:43.107' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD31      ', N'HH10      ', 1, N'I', CAST(N'2019-03-30 10:02:43.110' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 105, N'U', CAST(N'2019-03-19 15:22:33.810' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH06      ', 105, N'D', CAST(N'2019-03-19 15:22:33.810' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD06      ', N'HH07      ', 150, N'U', CAST(N'2019-03-19 15:23:44.830' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD06      ', N'HH07      ', 150, N'D', CAST(N'2019-03-19 15:23:44.830' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD06      ', N'HH02      ', 100, N'I', CAST(N'2019-03-19 16:11:00.153' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD8       ', N'HH06      ', 2, N'I', CAST(N'2019-03-23 22:17:25.010' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD9       ', N'HH06      ', 2, N'I', CAST(N'2019-03-23 22:17:27.493' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD9       ', N'HH07      ', 2, N'I', CAST(N'2019-03-23 22:17:29.967' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH10      ', 3, N'I', CAST(N'2019-03-22 22:53:57.780' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH10      ', 3, N'U', CAST(N'2019-03-22 22:54:01.317' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH10      ', 3, N'D', CAST(N'2019-03-22 22:54:01.317' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH11      ', 3, N'I', CAST(N'2019-03-22 22:54:05.580' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH11      ', 3, N'U', CAST(N'2019-03-22 22:54:17.280' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH11      ', 3, N'D', CAST(N'2019-03-22 22:54:17.280' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH11      ', 3, N'U', CAST(N'2019-03-22 22:54:21.120' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH11      ', 3, N'D', CAST(N'2019-03-22 22:54:21.120' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH11      ', 3, N'U', CAST(N'2019-03-22 22:54:32.747' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH11      ', 3, N'D', CAST(N'2019-03-22 22:54:32.747' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH11      ', 3, N'U', CAST(N'2019-03-22 22:54:48.697' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD02      ', N'HH11      ', 3, N'D', CAST(N'2019-03-22 22:54:48.697' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH11      ', 1, N'I', CAST(N'2019-03-22 22:55:00.037' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH05      ', 1, N'I', CAST(N'2019-03-22 23:01:40.250' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH05      ', 1, N'U', CAST(N'2019-03-22 23:02:49.330' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH05      ', 1, N'D', CAST(N'2019-03-22 23:02:49.330' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH11      ', -1, N'U', CAST(N'2019-03-22 23:04:22.350' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH11      ', -1, N'D', CAST(N'2019-03-22 23:04:22.350' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH01      ', 0, N'U', CAST(N'2019-03-22 23:22:23.803' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD04      ', N'HH01      ', 0, N'D', CAST(N'2019-03-22 23:22:23.803' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH01      ', 287, N'D', CAST(N'2019-03-23 16:10:24.127' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH11      ', 1, N'U', CAST(N'2019-03-23 16:11:38.610' AS DateTime))
GO
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH11      ', 1, N'D', CAST(N'2019-03-23 16:11:38.610' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH11      ', 1, N'U', CAST(N'2019-03-23 16:11:40.893' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH11      ', 1, N'D', CAST(N'2019-03-23 16:11:40.893' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 1, N'I', CAST(N'2019-03-23 16:17:27.127' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 1, N'U', CAST(N'2019-03-23 16:17:29.250' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 1, N'D', CAST(N'2019-03-23 16:17:29.250' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 2, N'U', CAST(N'2019-03-23 16:17:29.407' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD01      ', N'HH10      ', 2, N'D', CAST(N'2019-03-23 16:17:29.407' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD7       ', N'HH01      ', 3, N'I', CAST(N'2019-03-23 21:10:47.257' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD7       ', N'HH11      ', 3, N'I', CAST(N'2019-03-23 21:10:47.540' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD9       ', N'HH05      ', 2, N'I', CAST(N'2019-03-23 22:17:35.070' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD9       ', N'HH05      ', 2, N'U', CAST(N'2019-03-23 22:17:40.487' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD9       ', N'HH05      ', 2, N'D', CAST(N'2019-03-23 22:17:40.490' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD8       ', N'HH10      ', 2, N'I', CAST(N'2019-03-23 22:17:20.947' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD24      ', N'HH01      ', 2, N'I', CAST(N'2019-03-27 23:56:41.140' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD25      ', N'HH01      ', 2, N'I', CAST(N'2019-03-27 23:58:52.723' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD26      ', N'HH05      ', 2, N'I', CAST(N'2019-03-28 00:00:30.380' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD27      ', N'HH02      ', 2, N'I', CAST(N'2019-03-28 00:01:44.633' AS DateTime))
INSERT [dbo].[Audit_CTHD] ([MaHD], [MaHang], [SL], [ThaoTac], [NgayGio]) VALUES (N'HD28      ', N'HH01      ', 2, N'I', CAST(N'2019-03-28 00:03:15.243' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH13      ', N'Macbook', N'10', 800, 984, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 05:04:50.920' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH13      ', N'Macbook', N'10', 800, 984, N'LH01      ', N'D                                                 ', CAST(N'2019-03-17 05:04:50.940' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH12      ', N'Asus', N'40', 700, 984, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 05:09:08.063' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH12      ', N'Asus', N'40', 700, 100, N'LH01      ', N'D                                                 ', CAST(N'2019-03-17 05:12:16.040' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HPP', N'10', 600, 984, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 05:13:33.453' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HPP', N'10', 600, 200, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 05:13:59.777' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 984, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 07:26:46.020' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 980, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 07:26:46.877' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 942, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:26:52.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 936, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:56:52.570' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 896, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 08:42:17.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 893, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 08:59:29.130' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 889, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 08:59:50.993' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 886, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 09:08:01.140' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 852, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:10.833' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 848, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:11.923' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 844, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:12.637' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 840, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:13.157' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 836, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:13.570' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 882, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 09:08:52.537' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 878, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:06:14.563' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 875, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:07:14.363' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 872, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:09:27.180' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 869, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:13:17.967' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 866, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 12:15:23.820' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 957, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 13:17:20.863' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 820, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 13:17:26.227' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 815, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 13:17:27.010' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 810, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 13:17:50.903' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 807, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 13:17:53.233' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 862, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 13:17:55.787' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 976, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:18:27.997' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 973, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:18:28.620' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 970, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:18:29.210' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 967, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:18:29.227' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 859, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 13:23:37.810' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 804, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 15:30:51.790' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 855, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 15:36:48.767' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 852, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 15:38:54.987' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 960, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 15:39:49.693' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 841, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 15:40:37.163' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 932, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:56:59.040' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 926, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:56:59.053' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 920, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:56:59.067' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 914, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:00.273' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 908, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:00.297' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 902, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:02.430' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 983, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:11.197' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 977, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:12.557' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 971, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:12.987' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 965, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:13.617' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 959, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:13.623' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 953, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:13.643' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 947, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:14.040' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 941, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:14.687' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 935, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:24.060' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 927, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:24.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 919, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:24.813' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 911, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 07:57:24.943' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 973, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 09:08:05.107' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 969, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 09:08:05.260' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 965, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 09:08:05.433' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 961, N'LH03      ', N'U                                                 ', CAST(N'2019-03-17 09:08:05.583' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 832, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:17.140' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 828, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:17.673' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 961, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:22.190' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 957, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:22.713' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 953, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:22.843' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 949, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:23.330' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 945, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:23.880' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 824, N'LH04      ', N'U                                                 ', CAST(N'2019-03-17 09:08:26.297' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 848, N'LH01      ', N'U                                                 ', CAST(N'2019-03-17 15:40:17.090' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 957, N'LH02      ', N'U                                                 ', CAST(N'2019-03-19 13:14:34.753' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 801, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 13:15:22.387' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 941, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 13:15:54.650' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 838, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 13:21:57.910' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 738, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 13:22:42.827' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 688, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 13:23:20.537' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 954, N'LH03      ', N'U                                                 ', CAST(N'2019-03-19 13:24:14.793' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH03      ', N'Sony', N'44', 600, 954, N'LH03      ', N'U                                                 ', CAST(N'2019-03-19 13:24:20.747' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 600, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:12:04.523' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 597, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:15:00.660' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 964, N'LH02      ', N'U                                                 ', CAST(N'2019-03-17 13:23:45.263' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 594, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:17:42.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 590, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:17:48.643' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 586, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 15:32:15.303' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 937, N'LH02      ', N'U                                                 ', CAST(N'2019-03-19 15:32:33.083' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 583, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 16:00:52.377' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 577, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 16:00:54.557' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 571, N'LH01      ', N'U                                                 ', CAST(N'2019-03-19 16:02:00.553' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH12      ', N'Hsdfsdf', N'15', 100, 200, N'LH01      ', N'I                                                 ', CAST(N'2019-03-21 11:04:10.217' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH13      ', N'HP', N'10', 600, 200, N'LH01      ', N'I                                                 ', CAST(N'2019-03-21 22:31:44.413' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH12      ', N'Hsdfsdf', N'15', 100, 200, N'LH01      ', N'D                                                 ', CAST(N'2019-03-21 22:35:49.223' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH13      ', N'HP', N'10', 600, 200, N'LH01      ', N'U                                                 ', CAST(N'2019-03-21 22:40:06.597' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH13      ', N'HP2', N'25', 600, 200, N'LH01      ', N'D                                                 ', CAST(N'2019-03-21 22:40:18.840' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH12      ', N'HP2', N'25', 600, 200, N'LH01      ', N'I                                                 ', CAST(N'2019-03-21 22:40:20.380' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 568, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 13:47:01.603' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 563, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 13:47:03.760' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 558, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 13:47:05.353' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 903, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:36:00.927' AS DateTime))
GO
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 553, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:36:49.887' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 551, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:37:07.820' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 902, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:37:43.227' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 903, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:46:26.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 902, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:46:34.500' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 901, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:46:41.260' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 903, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:47:12.837' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 893, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:50:09.920' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 903, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:51:05.630' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 933, N'LH02      ', N'U                                                 ', CAST(N'2019-03-22 22:51:57.007' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 896, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:55:58.903' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 553, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:57:36.260' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 553, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:58:03.173' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 553, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:59:17.770' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 196, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:59:24.850' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 197, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:59:28.770' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 554, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 23:20:05.250' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 955, N'LH02      ', N'U                                                 ', CAST(N'2019-03-22 23:21:43.790' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 553, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 23:23:18.893' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 100, N'LH03      ', N'U                                                 ', CAST(N'2019-03-23 15:55:39.937' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 97, N'LH03      ', N'U                                                 ', CAST(N'2019-03-23 17:14:47.893' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 550, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 17:14:47.893' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 553, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:08:37.070' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 701, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 15:21:21.363' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 696, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 15:22:33.810' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 791, N'LH04      ', N'U                                                 ', CAST(N'2019-03-19 15:23:44.830' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 100, N'LH03      ', N'I                                                 ', CAST(N'2019-03-19 16:08:53.940' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 100, N'LH03      ', N'U                                                 ', CAST(N'2019-03-19 16:09:28.003' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 200, N'LH03      ', N'U                                                 ', CAST(N'2019-03-19 16:11:00.153' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 902, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:53:57.737' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 554, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 15:56:33.437' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 551, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 16:10:24.123' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 551, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:31:28.503' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 553, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:36:15.790' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 551, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:42:21.853' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 548, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:42:30.500' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 545, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:42:49.570' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 542, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:42:52.943' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 539, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:42:55.727' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 536, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:42:57.033' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 533, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:42:58.147' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 957, N'LH02      ', N'U                                                 ', CAST(N'2019-03-23 20:51:24.443' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 530, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 20:55:29.000' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 956, N'LH02      ', N'U                                                 ', CAST(N'2019-03-23 21:09:26.800' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 687, N'LH04      ', N'U                                                 ', CAST(N'2019-03-23 21:09:26.930' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 192, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 21:12:48.910' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 526, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 21:12:48.910' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 529, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 21:13:03.377' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 195, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 21:13:03.440' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 529, N'LH01      ', N'U                                                 ', CAST(N'2019-03-24 11:17:14.297' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 528, N'LH01      ', N'U                                                 ', CAST(N'2019-03-24 11:17:18.610' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 529, N'LH01      ', N'U                                                 ', CAST(N'2019-03-24 11:17:23.870' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 901, N'LH01      ', N'U                                                 ', CAST(N'2019-03-24 11:17:27.473' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 898, N'LH01      ', N'U                                                 ', CAST(N'2019-03-24 11:50:45.807' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 683, N'LH04      ', N'U                                                 ', CAST(N'2019-03-25 17:20:16.323' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 955, N'LH02      ', N'U                                                 ', CAST(N'2019-03-25 17:20:16.323' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 956, N'LH02      ', N'U                                                 ', CAST(N'2019-03-25 17:20:38.227' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 526, N'LH01      ', N'U                                                 ', CAST(N'2019-03-25 18:43:56.343' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 526, N'LH01      ', N'U                                                 ', CAST(N'2019-03-25 18:46:31.970' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 200, N'LH03      ', N'U                                                 ', CAST(N'2019-03-25 18:48:42.037' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 195, N'LH01      ', N'U                                                 ', CAST(N'2019-03-25 23:01:38.910' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 524, N'LH01      ', N'U                                                 ', CAST(N'2019-03-25 23:01:38.910' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 954, N'LH02      ', N'U                                                 ', CAST(N'2019-03-27 09:20:26.387' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 953, N'LH02      ', N'U                                                 ', CAST(N'2019-03-27 13:37:34.400' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 947, N'LH02      ', N'U                                                 ', CAST(N'2019-03-19 15:23:23.460' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 687, N'LH04      ', N'U                                                 ', CAST(N'2019-03-23 22:17:24.950' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 685, N'LH04      ', N'U                                                 ', CAST(N'2019-03-23 22:17:27.490' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 941, N'LH04      ', N'U                                                 ', CAST(N'2019-03-23 22:17:29.967' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 897, N'LH01      ', N'U                                                 ', CAST(N'2019-03-24 11:51:13.463' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 523, N'LH01      ', N'U                                                 ', CAST(N'2019-03-25 18:46:18.260' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 956, N'LH02      ', N'U                                                 ', CAST(N'2019-03-27 09:35:40.683' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 198, N'LH03      ', N'U                                                 ', CAST(N'2019-03-27 23:29:51.520' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 527, N'LH01      ', N'U                                                 ', CAST(N'2019-03-27 23:29:51.520' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 529, N'LH01      ', N'U                                                 ', CAST(N'2019-03-27 23:34:07.143' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 898, N'LH01      ', N'U                                                 ', CAST(N'2019-03-27 23:34:07.193' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 897, N'LH01      ', N'U                                                 ', CAST(N'2019-03-27 23:34:46.720' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 527, N'LH01      ', N'U                                                 ', CAST(N'2019-03-27 23:34:46.720' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 529, N'LH01      ', N'U                                                 ', CAST(N'2019-03-27 23:34:46.920' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 898, N'LH01      ', N'U                                                 ', CAST(N'2019-03-28 13:50:24.430' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 521, N'LH01      ', N'U                                                 ', CAST(N'2019-03-28 13:50:24.443' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 519, N'LH01      ', N'U                                                 ', CAST(N'2019-03-29 15:26:03.600' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 515, N'LH01      ', N'U                                                 ', CAST(N'2019-03-29 15:26:14.000' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 521, N'LH01      ', N'U                                                 ', CAST(N'2019-03-29 15:40:38.053' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 884, N'LH01      ', N'U                                                 ', CAST(N'2019-03-30 08:30:05.383' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 198, N'LH01      ', N'U                                                 ', CAST(N'2019-03-30 08:30:05.390' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 946, N'LH02      ', N'U                                                 ', CAST(N'2019-03-30 08:30:05.390' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 520, N'LH01      ', N'U                                                 ', CAST(N'2019-03-30 08:55:55.653' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 518, N'LH01      ', N'U                                                 ', CAST(N'2019-03-30 10:02:43.093' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 878, N'LH01      ', N'U                                                 ', CAST(N'2019-03-30 10:02:43.110' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 899, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:54:01.317' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 200, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:54:05.580' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 197, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:54:17.280' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 197, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:54:21.120' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 197, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:54:32.747' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 197, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:54:48.697' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 197, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 22:55:00.037' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 957, N'LH02      ', N'U                                                 ', CAST(N'2019-03-22 23:01:40.250' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 956, N'LH02      ', N'U                                                 ', CAST(N'2019-03-22 23:02:49.330' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 198, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 23:04:22.350' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 897, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 23:14:40.990' AS DateTime))
GO
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 554, N'LH01      ', N'U                                                 ', CAST(N'2019-03-22 23:22:23.803' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 955, N'LH02      ', N'U                                                 ', CAST(N'2019-03-22 23:35:56.843' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 880, N'LH01      ', N'U                                                 ', CAST(N'2019-03-30 08:55:55.657' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 196, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 16:11:38.610' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 196, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 16:11:40.893' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 903, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 16:17:27.127' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 902, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 16:17:29.250' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 901, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 16:17:29.407' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 900, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 16:17:34.273' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH06      ', N'Panasonic', N'40', 10000, 573, N'LH04      ', N'U                                                 ', CAST(N'2019-03-23 21:10:40.853' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 955, N'LH02      ', N'U                                                 ', CAST(N'2019-03-23 21:10:40.853' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 529, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 21:10:47.257' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 195, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 21:10:47.540' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 956, N'LH02      ', N'U                                                 ', CAST(N'2019-03-23 22:17:35.070' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 954, N'LH02      ', N'U                                                 ', CAST(N'2019-03-23 22:17:40.487' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 519, N'LH01      ', N'U                                                 ', CAST(N'2019-03-29 15:40:36.620' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 527, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 21:00:37.290' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 949, N'LH02      ', N'U                                                 ', CAST(N'2019-03-27 23:42:42.380' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 527, N'LH01      ', N'U                                                 ', CAST(N'2019-03-27 23:56:41.140' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 525, N'LH01      ', N'U                                                 ', CAST(N'2019-03-27 23:58:52.723' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH05      ', N'Asus', N'20', 600, 948, N'LH02      ', N'U                                                 ', CAST(N'2019-03-28 00:00:30.380' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 200, N'LH03      ', N'U                                                 ', CAST(N'2019-03-28 00:01:44.633' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 523, N'LH01      ', N'U                                                 ', CAST(N'2019-03-28 00:03:15.243' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH11      ', N'HP', N'10', 600, 193, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 22:08:13.060' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH01      ', N'HP2555', N'10', 500, 220, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 22:08:13.060' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH07      ', N'Daikin', N'50', 80000, 784, N'LH04      ', N'U                                                 ', CAST(N'2019-03-23 22:08:23.120' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH02      ', N'AA', N'15', 300, 100, N'LH03      ', N'U                                                 ', CAST(N'2019-03-23 22:08:23.120' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH10      ', N'Dell', N'20', 500, 903, N'LH01      ', N'U                                                 ', CAST(N'2019-03-23 22:17:20.947' AS DateTime))
INSERT [dbo].[Audit_HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang], [ThaoTac], [NgayGio]) VALUES (N'HH13      ', N'Daikin', N'240', 80000, 939, N'LH04      ', N'I                                                 ', CAST(N'2019-03-25 18:04:33.117' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', CAST(N'2019-03-23' AS Date), N'KH02      ', N'NV01      ', N'I', CAST(N'2019-03-23 13:20:22.280' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD8       ', CAST(N'2019-03-23' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-23 15:49:26.050' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:00:35.277' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD10      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:00:37.677' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD11      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:00:38.317' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD8       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:18:53.850' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:26:16.853' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD10      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:26:44.887' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD8       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:31:45.603' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD8       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:31:58.453' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:21.083' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:22.357' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:23.400' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:24.150' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:25.340' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:27.867' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:28.640' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:29.253' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:29.583' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:32:54.410' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD10      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:34:45.197' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD11      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:34:46.723' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD12      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:34:47.620' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD13      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 17:35:41.627' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD13      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 19:49:43.667' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD13      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 19:49:44.853' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD13      ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 19:49:46.780' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:04:29.833' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:04:36.947' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:04:38.110' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:06:24.180' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:07:08.060' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:07:11.943' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:31:29.023' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:31:30.177' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:36:03.773' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 21:05:09.237' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 21:09:25.530' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 21:12:49.007' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD11      ', CAST(N'2019-03-24' AS Date), N'KH02      ', N'NV01      ', N'I', CAST(N'2019-03-24 11:50:39.583' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD11      ', CAST(N'2019-03-24' AS Date), N'KH02      ', N'NV01      ', N'U', CAST(N'2019-03-24 11:51:09.477' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD11      ', CAST(N'2019-03-24' AS Date), N'KH02      ', N'NV01      ', N'D', CAST(N'2019-03-24 11:51:09.480' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD11      ', CAST(N'2019-03-24' AS Date), N'KH03      ', N'NV03      ', N'I', CAST(N'2019-03-24 18:16:34.810' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD12      ', CAST(N'2019-03-24' AS Date), N'KH03      ', N'NV02      ', N'I', CAST(N'2019-03-24 18:26:56.880' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD12      ', CAST(N'2019-03-24' AS Date), N'KH02      ', N'NV03      ', N'I', CAST(N'2019-03-24 18:33:56.690' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD13      ', CAST(N'2019-03-25' AS Date), N'KH03      ', N'NV04      ', N'I', CAST(N'2019-03-25 17:20:28.213' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD14      ', CAST(N'2019-03-25' AS Date), N'KH02      ', N'NV04      ', N'I', CAST(N'2019-03-25 18:45:37.477' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD15      ', CAST(N'2019-03-26' AS Date), N'KH04      ', N'NV03      ', N'I', CAST(N'2019-03-26 10:39:40.047' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD16      ', CAST(N'2019-03-27' AS Date), N'KH03      ', N'NV02      ', N'I', CAST(N'2019-03-27 09:29:16.890' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD17      ', CAST(N'2019-03-27' AS Date), N'KH02      ', N'NV02      ', N'I', CAST(N'2019-03-27 09:30:32.987' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD18      ', CAST(N'2019-03-27' AS Date), N'KH04      ', N'NV03      ', N'I', CAST(N'2019-03-27 09:32:53.477' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD19      ', CAST(N'2019-03-27' AS Date), N'KH03      ', N'NV02      ', N'I', CAST(N'2019-03-27 09:35:40.657' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD20      ', CAST(N'2019-03-27' AS Date), N'KH04      ', N'NV02      ', N'I', CAST(N'2019-03-27 13:37:34.347' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD21      ', CAST(N'2019-03-27' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-27 23:34:06.953' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD21      ', CAST(N'2019-03-27' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-27 23:34:46.753' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD22      ', CAST(N'2019-03-27' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-27 23:42:41.653' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD23      ', CAST(N'2019-03-27' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-27 23:55:26.607' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD24      ', CAST(N'2019-03-27' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-27 23:56:40.997' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD25      ', CAST(N'2019-03-27' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-27 23:58:51.920' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD18      ', CAST(N'2019-03-28' AS Date), N'KH04      ', N'NV03      ', N'I', CAST(N'2019-03-28 13:50:24.383' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD29      ', CAST(N'2019-03-29' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-29 15:25:44.957' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD29      ', CAST(N'2019-03-29' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-29 15:26:03.407' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD24      ', CAST(N'2019-03-29' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-29 15:40:37.783' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD29      ', CAST(N'2019-03-30' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-30 08:30:05.320' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD31      ', CAST(N'2019-03-30' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-30 10:02:43.047' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:07:27.093' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 20:08:22.613' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 21:10:41.700' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD8       ', CAST(N'2019-03-23' AS Date), N'KH02      ', N'NV03      ', N'I', CAST(N'2019-03-23 22:15:52.627' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD9       ', CAST(N'2019-03-23' AS Date), N'KH02      ', N'NV03      ', N'I', CAST(N'2019-03-23 22:16:05.427' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD8       ', CAST(N'2019-03-23' AS Date), N'KH02      ', N'NV03      ', N'U', CAST(N'2019-03-23 22:16:46.727' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD8       ', CAST(N'2019-03-23' AS Date), N'KH02      ', N'NV03      ', N'D', CAST(N'2019-03-23 22:16:46.727' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD8       ', CAST(N'2019-03-23' AS Date), N'KH03      ', N'NV03      ', N'U', CAST(N'2019-03-23 22:17:00.050' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD8       ', CAST(N'2019-03-23' AS Date), N'KH03      ', N'NV03      ', N'D', CAST(N'2019-03-23 22:17:00.050' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD10      ', CAST(N'2019-03-23' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-23 22:24:16.573' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD26      ', CAST(N'2019-03-28' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-28 00:00:29.467' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 21:00:38.067' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 21:02:37.630' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD7       ', NULL, NULL, NULL, N'I', CAST(N'2019-03-23 21:02:43.030' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD11      ', CAST(N'2019-03-24' AS Date), N'KH03      ', N'NV03      ', N'U', CAST(N'2019-03-25 18:46:47.400' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD11      ', CAST(N'2019-03-24' AS Date), N'KH03      ', N'NV03      ', N'D', CAST(N'2019-03-25 18:46:47.403' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD30      ', CAST(N'2019-03-30' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-30 08:55:55.477' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD01      ', CAST(N'2019-02-23' AS Date), N'KH04      ', N'NV01      ', N'U', CAST(N'2019-03-23 22:07:56.513' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD01      ', CAST(N'2019-02-23' AS Date), N'KH04      ', N'NV01      ', N'D', CAST(N'2019-03-23 22:07:56.517' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD27      ', CAST(N'2019-03-28' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-28 00:01:43.823' AS DateTime))
INSERT [dbo].[Audit_HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV], [ThaoTac], [NgayGo]) VALUES (N'HD28      ', CAST(N'2019-03-28' AS Date), N'KH01      ', N'NV01      ', N'I', CAST(N'2019-03-28 00:03:14.460' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH6       ', N'Nhi', N'Da Nang', N'32523523  ', N'3453246246          ', N'2                   ', N'I', CAST(N'2019-03-25 23:01:27.187' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH6       ', N'Nhi', N'Da Nang', N'32523523  ', N'3453246246          ', N'2                   ', N'U', CAST(N'2019-03-25 23:01:42.353' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH6       ', N'Nhi', N'Da Nang', N'32523523  ', N'3453246246          ', N'2                   ', N'D', CAST(N'2019-03-25 23:01:42.357' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH6       ', N'Nhi', N'Da Nang', N'Da Nang   ', N'3453246246          ', N'2                   ', N'U', CAST(N'2019-03-25 23:01:53.227' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH6       ', N'Nhi', N'Da Nang', N'Da Nang   ', N'3453246246          ', N'2                   ', N'D', CAST(N'2019-03-25 23:01:53.227' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH04      ', N'Tuyen', N'Hue', N'23523523  ', N'2345432555          ', N'3                   ', N'U', CAST(N'2019-03-25 23:02:02.637' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH7       ', N'De', N'Hue', N'23523564  ', N'0345345345          ', N'2                   ', N'I', CAST(N'2019-03-25 23:12:34.323' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH8       ', N'', N'', N'          ', N'                    ', N'                    ', N'I', CAST(N'2019-03-25 23:21:10.067' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH9       ', N'De', N'Hue', N'23523564  ', N'0345345345          ', N'2                   ', N'U', CAST(N'2019-03-25 23:26:00.363' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH9       ', N'De', N'Hue', N'23523564  ', N'0345345345          ', N'2                   ', N'D', CAST(N'2019-03-25 23:26:00.363' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH11      ', N'', N'', N'          ', N'                    ', N'                    ', N'I', CAST(N'2019-03-25 23:26:53.237' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH11      ', N'De', N'Hue2', N'Hue2      ', N'0345345345          ', N'2                   ', N'I', CAST(N'2019-03-25 23:27:51.950' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH04      ', N'Tuyen', N'Hue', N'23523523  ', N'2345432555          ', N'3                   ', N'D', CAST(N'2019-03-25 23:02:02.637' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH9       ', N'De', N'Hue', N'23523564  ', N'0345345345          ', N'2                   ', N'I', CAST(N'2019-03-25 23:21:17.240' AS DateTime))
INSERT [dbo].[Audit_KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH10      ', N'De', N'Hue2', N'23523564  ', N'0345345345          ', N'2                   ', N'I', CAST(N'2019-03-25 23:26:05.010' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH05      ', N'Gia Dụng                                          ', N'sdfsd                                                                                               ', N'Insert                                            ', CAST(N'2019-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH05      ', N'Chip                                              ', N'sdfsdg                                                                                              ', N'I                                                 ', CAST(N'2019-03-15 20:11:23.660' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH11      ', N'sdfsd                                             ', N'                                                                                                    ', N'I                                                 ', CAST(N'2019-03-16 07:39:42.447' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH04      ', N'DieuHoa                                           ', N'sdkfjsd                                                                                             ', N'U                                                 ', CAST(N'2019-03-25 20:33:47.220' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH04      ', N'DieuHoa                                           ', N'sdkfjsd                                                                                             ', N'D                                                 ', CAST(N'2019-03-25 20:33:47.223' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH5       ', N'LH04                                              ', N'ds                                                                                                  ', N'I                                                 ', CAST(N'2019-03-25 20:33:53.183' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH6       ', N'LH04                                              ', N'ds                                                                                                  ', N'I                                                 ', CAST(N'2019-03-25 20:35:41.950' AS DateTime))
INSERT [dbo].[Audit_LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu], [ThaoTac], [NgayGio]) VALUES (N'LH5       ', N'Đồng hồ                                           ', N'ds                                                                                                  ', N'I                                                 ', CAST(N'2019-03-25 20:36:43.803' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV5       ', N'Tin', CAST(N'2019-03-25 14:38:43.503' AS DateTime), 0, N'123       ', N'I', CAST(N'2019-03-25 14:38:59.447' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV6       ', N'TinNgu', CAST(N'2019-03-25 14:39:40.907' AS DateTime), 0, N'123       ', N'I', CAST(N'2019-03-25 14:39:49.263' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV7       ', N'TinNgu', CAST(N'2019-03-25 14:39:40.907' AS DateTime), 0, N'123       ', N'I', CAST(N'2019-03-25 14:40:03.353' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV8       ', N'TinNgu', CAST(N'2019-03-25 14:40:19.933' AS DateTime), 1, N'3322      ', N'I', CAST(N'2019-03-25 14:40:30.507' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV9       ', N'Toan', CAST(N'1998-04-02 00:00:00.000' AS DateTime), 1, N'435034095 ', N'I', CAST(N'2019-03-25 17:18:04.923' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV10      ', N'Hue', CAST(N'1999-05-04 00:00:00.000' AS DateTime), 0, N'2345236   ', N'I', CAST(N'2019-03-25 17:18:12.403' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV5       ', N'Tin', CAST(N'2019-03-25 14:38:43.503' AS DateTime), 0, N'123       ', N'U', CAST(N'2019-03-25 19:16:05.283' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV5       ', N'Tin', CAST(N'2019-03-25 14:38:43.503' AS DateTime), 0, N'123       ', N'D', CAST(N'2019-03-25 19:16:05.287' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV9       ', N'Toan', CAST(N'1998-04-02 00:00:00.000' AS DateTime), 1, N'435034095 ', N'U', CAST(N'2019-03-25 19:16:25.750' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV9       ', N'Toan', CAST(N'1998-04-02 00:00:00.000' AS DateTime), 1, N'435034095 ', N'D', CAST(N'2019-03-25 19:16:25.750' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV05      ', N'Hue', CAST(N'1999-05-04 00:00:00.000' AS DateTime), 0, N'2345236   ', N'U', CAST(N'2019-03-25 19:17:05.430' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV05      ', N'Hue', CAST(N'1999-05-04 00:00:00.000' AS DateTime), 0, N'2345236   ', N'D', CAST(N'2019-03-25 19:17:05.430' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV9       ', N'TH', CAST(N'1998-04-02 00:00:00.000' AS DateTime), 1, N'435034095 ', N'U', CAST(N'2019-03-25 19:20:15.353' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV9       ', N'TH', CAST(N'1998-04-02 00:00:00.000' AS DateTime), 1, N'435034095 ', N'D', CAST(N'2019-03-25 19:20:15.353' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV9       ', N'TH', CAST(N'1998-04-02 00:00:00.000' AS DateTime), 1, N'435034095 ', N'U', CAST(N'2019-03-25 19:20:23.850' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV9       ', N'TH', CAST(N'1998-04-02 00:00:00.000' AS DateTime), 1, N'435034095 ', N'D', CAST(N'2019-03-25 19:20:23.850' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV10      ', N'Hue', CAST(N'1999-05-04 00:00:00.000' AS DateTime), 0, N'2345236   ', N'U', CAST(N'2019-03-25 19:17:15.883' AS DateTime))
INSERT [dbo].[Audit_NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT], [ThaoTac], [NgayGio]) VALUES (N'NV10      ', N'Hue', CAST(N'1999-05-04 00:00:00.000' AS DateTime), 0, N'2345236   ', N'D', CAST(N'2019-03-25 19:17:15.917' AS DateTime))
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD1       ', N'HH01      ', 1)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD2       ', N'HH02      ', 1)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD2       ', N'HH09      ', 2)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD3       ', N'HH09      ', 2)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD4       ', N'HH09      ', 1)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD5       ', N'HH14      ', 1)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD5       ', N'HH19      ', 1)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD6       ', N'HH18      ', 1)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD6       ', N'HH24      ', 2)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD7       ', N'HH08      ', 2)
INSERT [dbo].[CTHD] ([MaHD], [MaHang], [SL]) VALUES (N'HD7       ', N'HH13      ', 1)
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH01      ', N'Makita 9553B', N'Chiếc', 950000, 15, N'LH2       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH02      ', N'Makita 9553NB', N'Chiếc', 950000, 8, N'LH2       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH03      ', N'Matek MT961', N'Chiếc', 800000, 9, N'LH2       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH04      ', N'Matek MT954', N'Chiếc', 800000, 4, N'LH2       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH05      ', N'Crown ct13322', N'Chiếc', 500000, 11, N'LH2       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH06      ', N'Crown ct13288', N'Chiếc', 650000, 1, N'LH2       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH07      ', N'Matek MT941', N'Chiếc', 1250000, 6, N'LH1       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH08      ', N'Matek MT943', N'Chiếc', 1250000, 2, N'LH1       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH09      ', N'Bosch Gco200', N'Chiếc', 2679000, 6, N'LH1       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH10      ', N'Makita M2400B', N'Chiếc', 2585000, 2, N'LH1       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH11      ', N'Makita Lw1401', N'Chiếc', 3310000, 3, N'LH1       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH12      ', N'MHĐT HK200E', N'Chiếc', 2850000, 7, N'LH3       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH13      ', N'MHĐT HK250Z', N'Chiếc', 3990000, 2, N'LH3       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH14      ', N'MHĐT Sasuke200e', N'Chiếc', 2189000, 3, N'LH3       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH15      ', N'MHĐT Sasuke Mig250A', N'Chiếc', 7000000, 2, N'LH3       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH16      ', N'Makita HM1306 (1510W)', N'Chiếc', 2940000, 3, N'LH4       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH17      ', N'Hitachi Ph65a', N'Chiếc', 1850000, 5, N'LH4       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH18      ', N'FEG Eg-585', N'Chiếc', 2989000, 2, N'LH4       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH19      ', N'Matek MT583', N'Chiếc', 1550000, 6, N'LH5       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH20      ', N'Dewalt D23620', N'Chiếc', 2500000, 7, N'LH5       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH21      ', N'Makita 5806B', N'Chiếc', 1700000, 1, N'LH5       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH22      ', N'Panasonic 200W GP-200JXK', N'Chiếc', 1250000, 4, N'LH6       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH23      ', N'Panasonic 200W GP-150JAK', N'Chiếc', 1550000, 2, N'LH6       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH24      ', N'An Phát JET100', N'Chiếc', 1050000, 1, N'LH6       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH25      ', N'Hitachi W-P200NH', N'Chiếc', 2050000, 4, N'LH6       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH26      ', N'Btec BT-2024 (24 Lít) 2HP', N'Chiếc', 1850000, 5, N'LH7       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH27      ', N'Btec BT-2030F (30 Lít) ', N'Chiếc', 2190000, 3, N'LH7       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH28      ', N'Puma Pk0140- 1/4Hp', N'Chiếc', 5800000, 1, N'LH7       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH29      ', N'Shark SKD 50N (50 Lít)', N'Chiếc', 3750000, 4, N'LH7       ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [DVT], [DonGia], [SLcon], [MaLoaiHang]) VALUES (N'HH30      ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD1       ', CAST(N'2020-03-22' AS Date), N'KH3       ', N'NV2       ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD2       ', CAST(N'2020-03-22' AS Date), N'KH2       ', N'NV2       ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD3       ', CAST(N'2020-03-22' AS Date), N'KH1       ', N'NV3       ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD4       ', CAST(N'2020-03-22' AS Date), N'KH1       ', N'NV2       ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD5       ', CAST(N'2020-03-23' AS Date), N'KH5       ', N'NV3       ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD6       ', CAST(N'2020-03-27' AS Date), N'KH5       ', N'NV2       ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayHD], [MaKH], [MaNV]) VALUES (N'HD7       ', CAST(N'2020-03-28' AS Date), N'KH5       ', N'NV4       ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH1       ', N'Công Ty TNHH Quang Niên', N'Phan Đăng Lưu -TPHuế', N'0234353793', N'                    ', N'3500806643          ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH2       ', N'Ngô Viết Gíam', N'Trần Phú -TP-Huế', N'0858653998', N'                    ', N'                    ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH3       ', N'DNTN Lộc Lợi', N'24 Mai Thúc Loan - TPHuế', N'0234353287', N'                    ', N'102859048           ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH4       ', N'Trần Nhật Lộc', N'Nguyễn Trãi', N'0778394003', N'                    ', N'                    ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [STK], [MST]) VALUES (N'KH5       ', N'Nguyên Hưng', N'Mai Thúc Loan', N'0779595996', N'0161001748250       ', N'                    ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH1       ', N'Cắt sắt   ', N'                                                                                                                                                                                                        ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH2       ', N'Máy Mài   ', N'                                                                                                                                                                                                        ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH3       ', N'Máy Hàn   ', N'                                                                                                                                                                                                        ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH4       ', N'Máy Đục   ', N'                                                                                                                                                                                                        ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH5       ', N'Cắt Gỗ    ', N'                                                                                                                                                                                                        ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH6       ', N'Bơm Nước  ', N'                                                                                                                                                                                                        ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH7       ', N'Bơm Hơi   ', N'                                                                                                                                                                                                        ')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LH8       ', N'Máy hơi   ', N'                                                                                                                                                                                                        ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT]) VALUES (N'NV1       ', N'Nguyễn Văn Biển', CAST(N'1998-02-03 00:00:00.000' AS DateTime), 1, N'0706242347')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT]) VALUES (N'NV2       ', N'Lê Viết Hải', CAST(N'1996-10-04 00:00:00.000' AS DateTime), 1, N'0775374883')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT]) VALUES (N'NV3       ', N'Phan Nhật Khánh', CAST(N'1995-02-18 00:00:00.000' AS DateTime), 0, N'0835978447')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [SDT]) VALUES (N'NV4       ', N'Vũ', CAST(N'1969-03-28 15:41:58.000' AS DateTime), 1, N'0914042203')
INSERT [dbo].[TaiKhoan] ([UserName], [PassWord], [MaNV]) VALUES (N'admin', N'admin', N'NV1       ')
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HangHoa] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangHoa] ([MaHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HangHoa]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon1] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon1]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_LoaiHang] FOREIGN KEY([MaLoaiHang])
REFERENCES [dbo].[LoaiHang] ([MaLoaiHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_LoaiHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
/****** Object:  StoredProcedure [dbo].[CTHD_HDBH]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CTHD_HDBH] @MaHD nchar(10)
as
begin
	Select hd.MaHD, hh.MaHang, TenHang, SL, DonGia, ngayHD from HoaDon hd, HangHoa hh, CTHD where hd.MaHD = CTHD.MaHD and hh.MaHang = CTHD.MaHang and CTHD.MaHD = @maHD
end


GO
/****** Object:  StoredProcedure [dbo].[Delete_CTHD]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Delete_CTHD] @MaHD nchar(10), @MaHang nchar(10)
as
begin
	Delete from CTHD where MaHD = @MaHD and MaHang = @MaHang
end


GO
/****** Object:  StoredProcedure [dbo].[Delete_HangHoa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Delete_HangHoa] @MaHang nchar(10)
as
begin
	Delete from HangHoa where MaHang = @MaHang
end

GO
/****** Object:  StoredProcedure [dbo].[Delete_HoaDon]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_HoaDon] @MaHD nchar(10)
as
begin
	Delete from HoaDon where MaHD = @MaHD
end


GO
/****** Object:  StoredProcedure [dbo].[Delete_HoaDonMaxID]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Delete_HoaDonMaxID] 
as
begin
	Declare @MaxID int
	Select @MaxID = max(cast(substring(MaHD, 3,8) as int)) from HoaDon
	Delete from HoaDon where MaHD = concat('HD',@MaxID)
end


GO
/****** Object:  StoredProcedure [dbo].[Delete_KhachHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Delete_KhachHang] @MaKH nchar(10)
as
begin
	Delete from KhachHang where MaKH = @MaKH
end


GO
/****** Object:  StoredProcedure [dbo].[Delete_LoaiHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Delete_LoaiHang] @MaLoaiHang nchar(10)
as
begin
	Delete from LoaiHang where MaLoaiHang = @MaLoaiHang
end


GO
/****** Object:  StoredProcedure [dbo].[Delete_NhanVien]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_NhanVien] @MaNV nchar(10)
as
begin
	Delete from NhanVien where MaNV = @MaNV
end


GO
/****** Object:  StoredProcedure [dbo].[Delete_TaiKhoan]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_TaiKhoan] @UserName nvarchar(50)
as
begin
	Delete from TaiKhoan where UserName = @UserName
End 

GO
/****** Object:  StoredProcedure [dbo].[Insert_CTHD]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_CTHD] @MaHD nchar(10),@MaHang nchar(10), @SL int
as
begin
	insert into CTHD values(@MaHD, @MaHang,@SL)
end

GO
/****** Object:  StoredProcedure [dbo].[Insert_CTHDByMaxID]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_CTHDByMaxID] @MaHang nchar(10), @SL int
as
begin
	Declare @id int
	Select @id = max(cast(substring(MaHD,3,8) as int)) from HoaDon
	insert into CTHD values(concat('HD',@id), @MaHang,@SL)
end


GO
/****** Object:  StoredProcedure [dbo].[Insert_HangHoa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_HangHoa] @TenHang nvarchar(50), @DVT nvarchar(20), @DonGia float, @SLcon int, @MaLoaiHang nchar(10)
as 
begin
	Declare @id int
	Select @id = max(cast(substring(MaHang, 3,8) as int))+1 from HangHoa 
	Insert into HangHoa values(concat('HH',convert(varchar, @id)),@TenHang,@DVT,@DonGia,@SLcon,@MaLoaiHang)
end


GO
/****** Object:  StoredProcedure [dbo].[Insert_HoaDon]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_HoaDon] @MaKH nchar(10), @MaNV nchar(10)
as
begin
	declare @id int 
	Select @id = max(cast(substring(MaHD, 3,8) as int))+1 from HoaDon 
	insert into HoaDon values(concat('HD',@id), getdate(), @MaKH, @MaNV)
end



GO
/****** Object:  StoredProcedure [dbo].[Insert_HoaDonByMa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_HoaDonByMa] @MaHD nchar(10), @MaKH nchar(10), @MaNV nchar(10)
as
begin
	
	insert into HoaDon values(@MaHD, getdate(), @MaKH, @MaNV)
end

GO
/****** Object:  StoredProcedure [dbo].[Insert_KhachHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_KhachHang] @TenKH nvarchar(50), @DiaChi nvarchar(100), @SDT nchar(10), @STK nchar(20), @MST nchar(20)
as
begin
	declare @id int
	Select @id = max(cast(substring(MaKH, 3,8) as int))+1 from KhachHang
	insert into KhachHang values(concat('KH',@id),@TenKH,@DiaChi,@SDT,@STK,@MST)
end

GO
/****** Object:  StoredProcedure [dbo].[Insert_LoaiHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_LoaiHang] @TenLoaiHang nchar(10), @GhiChu nchar(20)
as
begin
	declare @id int
	Select @id = max(cast(substring(MaLoaiHang, 3,8) as int))+1 from LoaiHang
	insert into LoaiHang values(concat('LH',@id),@TenLoaiHang, @GhiChu)
end


GO
/****** Object:  StoredProcedure [dbo].[Insert_NhanVien]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_NhanVien] @TenNV nvarchar(50), @NgaySinh datetime, @GioiTinh bit, @SDT nchar(10)
as
begin
	declare @id int 
	Select @id = max(cast(substring(MaNV, 3, 8) as int))+1 from NhanVien
	insert into NhanVien values(concat('NV',@id), @TenNV,@NgaySinh,@GioiTinh,@SDT)
end

GO
/****** Object:  StoredProcedure [dbo].[Insert_TaiKhoan]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_TaiKhoan] @UserName nvarchar(50), @PassWord nvarchar(200), @MaNV nchar(10)
as
begin
	Insert into TaiKhoan values (@UserName,@PassWord,@MaNV)
End 

GO
/****** Object:  StoredProcedure [dbo].[Login_TaiKhoan]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Login_TaiKhoan] @UserName nvarchar(50), @passWord nvarchar(200)
as
begin
	Select * from Taikhoan where UserName = @UserName and PassWord = @passWord
end

GO
/****** Object:  StoredProcedure [dbo].[Search_HangHoaByName]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Search_HangHoaByName] @TenHang nvarchar(50)
as
begin
	Select * from HangHoa where TenHang like concat('%',@TenHang,'%')
end

GO
/****** Object:  StoredProcedure [dbo].[Search_KhachHangByName]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Search_KhachHangByName] @TenKH nvarchar(50)
as 
begin
	Select * from KhachHang where TenKH like concat('%',@TenKH,'%')
end

GO
/****** Object:  StoredProcedure [dbo].[Search_LoaiHangByName]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Search_LoaiHangByName] @TenLoaiHang nvarchar(50)
as
begin
	Select * from LoaiHang where TenLoaiHang like CONCAT('%',@TenLoaiHang,'%')
end

GO
/****** Object:  StoredProcedure [dbo].[Search_NhanVienByName]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Search_NhanVienByName] @TenNV nvarchar(50)
as 
begin
	Select * from NhanVien where TenNV like concat('%',@TenNV,'%')
end


GO
/****** Object:  StoredProcedure [dbo].[Search_TaiKhoanByName]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Search_TaiKhoanByName] @UserName nvarchar(50)
as
Begin 
	Select UserName, MaNV from TaiKhoan where UserName like concat('%',@UserName,'%')
End 

GO
/****** Object:  StoredProcedure [dbo].[Select_CTHD]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_CTHD] 
as
begin
	select * from CTHD
end


GO
/****** Object:  StoredProcedure [dbo].[Select_CTHDByMaHD]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_CTHDByMaHD] @MaHD nchar(10)
as
begin
	Select hh.MaHang, TenHang, SL, DVT, DonGia, lh.TenLoaiHang from LoaiHang lh, HangHoa hh, CTHD where lh.MaLoaiHang = hh.MaLoaiHang and hh.MaHang = CTHD.MaHang and CTHD.MaHD = @maHD
	
end

GO
/****** Object:  StoredProcedure [dbo].[Select_HangHoa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_HangHoa] 
as
begin
	Select MaHang, TenHang, DVT, DonGia, SLcon, TenLoaiHang from HangHoa, LoaiHang where HangHoa.MaLoaiHang = LoaiHang.MaLoaiHang
end


GO
/****** Object:  StoredProcedure [dbo].[Select_HangHoaByMa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_HangHoaByMa] @MaHang nchar(10)
as
begin
	select * from HangHoa where MaHang = @MaHang
end


GO
/****** Object:  StoredProcedure [dbo].[Select_HangHoaByMaLH]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_HangHoaByMaLH] @MaLH nchar(10)
as
begin
	Select * from HangHoa where MaLoaiHang = @MaLH
end

GO
/****** Object:  StoredProcedure [dbo].[Select_HoaDon]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_HoaDon] 
as
begin
	select  MaHD, NgayHD, TenKH, TenNV from HoaDon hd, KhachHang kh, NhanVien nv where hd.MaKH = kh.MaKH and hd.MaNV = nv.MaNV
end

GO
/****** Object:  StoredProcedure [dbo].[Select_HoaDonByMa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_HoaDonByMa] @MaHD nchar(10)
as
begin
	select * from HoaDon where MaHD = @MaHD
end


GO
/****** Object:  StoredProcedure [dbo].[Select_HoaDonNewID]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_HoaDonNewID] 
as
begin
	Select  concat('HD', max(cast(substring(MaHD,3,8) as int))+1) from HoaDon	
end

GO
/****** Object:  StoredProcedure [dbo].[Select_inhoadon]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Select_inhoadon]
@MaHD nchar(10)
AS
BEGIN
	select CTHD.MaHD,TenKH,TenNV, NgayHD, HH.MaHang,HH.MaLoaiHang,TenLoaiHang, SL, KH.MaKH,NV.MaNV, KH.DiaChi,KH.SDT,TenHang,DonGia
	from KhachHang as KH inner join HoaDon as HD on HD.MaKH = KH.MaKH
	inner join NhanVien as NV on HD.MaNV = NV.MaNV
	inner join CTHD on CTHD.MaHD = HD.MaHD 
	inner join HangHoa as HH on CTHD.MaHang = HH.MaHang
	inner join LoaiHang as LH on LH.MaLoaiHang = HH.MaLoaiHang
	where HD.MaHD = @MaHD 
END

GO
/****** Object:  StoredProcedure [dbo].[Select_KhachHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_KhachHang]
as
begin
	Select * from KhachHang
end

GO
/****** Object:  StoredProcedure [dbo].[Select_KhachHangByMa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_KhachHangByMa] @MaKH nchar(10)
as
begin
	select * from KhachHang where MaKH = @MaKH
end


GO
/****** Object:  StoredProcedure [dbo].[Select_LoaiHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Select_LoaiHang] 
as
begin
	select * from LoaiHang
end


GO
/****** Object:  StoredProcedure [dbo].[Select_LoaiHangByMa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_LoaiHangByMa] @MaLoaiHang nchar(10)
as
begin
	select * from LoaiHang where MaLoaiHang = @MaLoaiHang
end


GO
/****** Object:  StoredProcedure [dbo].[Select_NhanVien]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_NhanVien]
as
begin
	select * from NhanVien
end


GO
/****** Object:  StoredProcedure [dbo].[Select_NhanVienByMa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_NhanVienByMa] @MaNV nchar(10)
as
begin
	select * from NhanVien where MaNV = @MaNV
end


GO
/****** Object:  StoredProcedure [dbo].[Select_TaiKhoan]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_TaiKhoan] 
as
Begin 
	Select UserName, MaNV from TaiKhoan
End 

GO
/****** Object:  StoredProcedure [dbo].[Select_TaiKhoanByTenTK]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_TaiKhoanByTenTK] @UserName nvarchar(50)
as
begin
	Select * from TaiKhoan where UserName = @UserName
End 

GO
/****** Object:  StoredProcedure [dbo].[Update_CTHD]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_CTHD] @MaHD nchar(10), @MaHang nchar(10), @SL int
as
begin
	update CTHD set SL = @SL where MaHD = @MaHD and  MaHang = @MaHang
end


GO
/****** Object:  StoredProcedure [dbo].[Update_HangHoa]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_HangHoa] @MaHang nchar(10), @TenHang nvarchar(50), @DVT nvarchar(20), @DonGia float, @SLcon int, @MaLoaiHang nchar(10)
as
begin
	Update HangHoa set TenHang = @TenHang, DVT = @DVT, DonGia = @DonGia, SLcon = @SLcon, MaLoaiHang = @MaLoaiHang where MaHang = @MaHang
end


GO
/****** Object:  StoredProcedure [dbo].[Update_HoaDon]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_HoaDon] @MaHD nchar(10), @MaKH nchar(10), @MaNV nchar(10)
as
begin
	update HoaDon set NgayHD = getdate(), MaKH = @MaKH, MaNV = @MaNV where MaHD = @MaHD
end

GO
/****** Object:  StoredProcedure [dbo].[Update_KhachHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_KhachHang] @MaKH nchar(10), @TenKH nvarchar(50), @DiaChi nvarchar(100), @SDT nchar(10), @STK nchar(20), @MST nchar(20)
as
begin
	Update KhachHang set TenKH = @TenKH, DiaChi = @DiaChi, SDT = @SDT, STK = @STK, MST = @MST where MaKH = @MaKH
end


GO
/****** Object:  StoredProcedure [dbo].[Update_LoaiHang]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Update_LoaiHang] @MaLoaiHang nchar(10), @TenLoaiHang nchar(10), @GhiChu nchar(20)
as
begin
	update LoaiHang set TenLoaiHang = @TenLoaiHang, GhiChu = @GhiChu where MaLoaiHang = @MaLoaiHang
end


GO
/****** Object:  StoredProcedure [dbo].[Update_NhanVien]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_NhanVien] @MaNV nchar(10), @TenNV nvarchar(50), @NgaySinh datetime, @GioiTinh bit, @SDT nchar(10)
as
begin
	update NhanVien set TenNV = @TenNV, NgaySinh = @NgaySinh, GioiTinh = @GioiTinh, SDT = @SDT where MaNV = @MaNV
end


GO
/****** Object:  StoredProcedure [dbo].[Update_TaiKhoan]    Script Date: 3/29/2020 12:46:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_TaiKhoan] @UserName nvarchar(50), @PassWord nvarchar(200), @MaNV nchar(10)
as
begin
	Update TaiKhoan set PassWord = @PassWord, MaNV = @MaNV where UserName = @UserName
End 

GO
