USE [ThietBiDienTu]
GO
/****** Object:  Table [dbo].[BaoHanh]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHanh](
	[MaBH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[NgayDH] [date] NULL,
	[MaKH] [int] NULL,
	[TenKH] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[NoiDungBH] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_BaoHanh] PRIMARY KEY CLUSTERED 
(
	[MaBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTDDH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDDH](
	[MaCTDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_CTDDH] PRIMARY KEY CLUSTERED 
(
	[MaCTDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTDiaChi]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDiaChi](
	[MaCTDiaChi] [int] IDENTITY(1,1) NOT NULL,
	[MaDiaChi] [int] NULL,
	[SoNha] [nvarchar](50) NULL,
	[TenDuong] [nvarchar](50) NULL,
	[PhuongXa] [nvarchar](50) NULL,
	[QuanHuyen] [nvarchar](50) NULL,
	[TinhThanh] [nvarchar](50) NULL,
	[MacDinh] [int] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[SDTNguoiNhan] [nvarchar](50) NULL,
 CONSTRAINT [PK_CTDiaChi] PRIMARY KEY CLUSTERED 
(
	[MaCTDiaChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTGioHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTGioHang](
	[MaCTGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaGioHang] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_CTGioHang] PRIMARY KEY CLUSTERED 
(
	[MaCTGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGiaSanPham]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaSanPham](
	[MaDanhGia] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungDanhGia] [nvarchar](50) NULL,
	[NgayDanhGia] [date] NULL,
	[MaSP] [int] NULL,
	[TrangThai] [int] NULL,
	[MaKH] [int] NULL,
	[DanhGia] [int] NULL,
 CONSTRAINT [PK_DanhGiaSanPham] PRIMARY KEY CLUSTERED 
(
	[MaDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DDH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDH](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [date] NULL,
	[TrangThai] [int] NULL CONSTRAINT [DF_DDH_TrangThai]  DEFAULT ((1)),
	[MaGiamGia] [nvarchar](50) NULL,
	[ThanhTien] [money] NULL,
	[SDTNguoiNhan] [nvarchar](50) NULL,
	[MaNVC] [int] NULL,
	[MaKH] [int] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[SoNha] [nvarchar](50) NULL,
	[TenDuong] [nvarchar](50) NULL,
	[PhuongXa] [nvarchar](50) NULL,
	[QuanHuyen] [nvarchar](50) NULL,
	[TinhThanh] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_DDH] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[MaDiaChi] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DiaChi] PRIMARY KEY CLUSTERED 
(
	[MaDiaChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[TongTienGioHang] [money] NULL CONSTRAINT [DF_GioHang_TongTienGioHang]  DEFAULT ((0)),
	[MaKH] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangSanXuat]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuat](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[TTLienHe] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[LinkHinhAnhChinh] [varchar](max) NULL,
	[LinkHinhAnhPhu1] [varchar](max) NULL,
	[LinkHinhAnhPhu2] [varchar](max) NULL,
	[LinkHinhAnhPhu3] [varchar](max) NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoanHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoanHang](
	[MaHoanHang] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaKH] [int] NULL,
	[LyDonHoanHang] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_HoanHang] PRIMARY KEY CLUSTERED 
(
	[MaHoanHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HuyHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HuyHang](
	[MaHuyDon] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaKH] [int] NULL,
	[LyDonHuy] [nvarchar](50) NULL,
	[NgayHuy] [date] NULL,
 CONSTRAINT [PK_HuyHang] PRIMARY KEY CLUSTERED 
(
	[MaHuyDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[TenTKKH] [nvarchar](50) NULL,
	[MKTKKH] [nvarchar](50) NULL,
	[AnhKH] [varchar](max) NULL,
	[SoDienThoaiKH] [nvarchar](50) NULL,
	[MaQuyen] [int] NULL CONSTRAINT [DF_KhachHang_MaQuyen]  DEFAULT ((1)),
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaGiamGia]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaGiamGia](
	[MaGiamGia] [nvarchar](50) NOT NULL,
	[TenMGG] [nvarchar](50) NULL,
	[SLDaSuDung] [int] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[TiLeGiam] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_MaGiamGia] PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaGiamGia_KhachHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaGiamGia_KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaGiamGia] [nvarchar](50) NULL,
	[MaKH] [int] NULL,
	[TrangThai] [int] NULL CONSTRAINT [DF_MaGiamGia_KhachHang_TrangThai]  DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoanAdmin] [nvarchar](50) NULL,
	[MatKhauAdmin] [nvarchar](50) NULL,
	[HoTenAdmin] [nvarchar](50) NULL,
	[AnhAdmin] [varchar](max) NULL,
	[MaQuyen] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaVanChuyen]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaVanChuyen](
	[MaNVC] [int] IDENTITY(1,1) NOT NULL,
	[TenNVC] [nvarchar](50) NULL,
	[ChiPhi] [money] NULL,
	[DiaChiNVC] [nvarchar](max) NULL,
	[SDTNVC] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaVanChuyen] PRIMARY KEY CLUSTERED 
(
	[MaNVC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
	[MoTaQuyen] [nvarchar](max) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[GiaTien] [money] NULL,
	[UuDai] [int] NULL CONSTRAINT [DF_SanPham_UuDai]  DEFAULT ((0)),
	[SoLuongTon] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[ThongSoKyThuat] [nvarchar](max) NULL,
	[ChinhSachBaoHanh] [nvarchar](max) NULL,
	[ThoiGianBaoHanh] [int] NULL,
	[NgayTao] [date] NULL,
	[TrangThai] [int] NULL,
	[MaHinhAnh] [int] NULL,
	[MaDanhMuc] [int] NULL,
	[MaHang] [int] NULL,
	[SoLuongDaBanRa] [int] NULL CONSTRAINT [DF_SanPham_SoLuongDaBanRa]  DEFAULT ((0)),
	[GiaGoc] [money] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YeuCauBH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuCauBH](
	[MaPhieuBH] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[MaKH] [int] NULL,
	[MaBH] [int] NULL,
	[NgayYeuCau] [date] NULL,
	[LyDo] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_YeuCauBH] PRIMARY KEY CLUSTERED 
(
	[MaPhieuBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BaoHanh] ON 

INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (1, 30, 6, CAST(N'2023-11-19' AS Date), 2, N'Đạt', 123123, NULL, 4)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (2, 30, 8, CAST(N'2023-11-19' AS Date), 2, N'Đạt', 123123, NULL, 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (3, 34, 2, CAST(N'2023-11-21' AS Date), 1, N'Tiến', 21312312, NULL, 4)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (4, 1, 1, NULL, 2, NULL, 123456789, NULL, 3)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (5, 1, 2, NULL, 2, NULL, 123456789, NULL, 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (6, 36, 5, CAST(N'2023-11-26' AS Date), 1, N'Mẹ', 123456479, NULL, 3)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (7, 34, 2, CAST(N'2023-11-21' AS Date), 1, N'Tiến', 21312312, NULL, 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (8, 37, 4, CAST(N'2023-11-26' AS Date), 1, N'Tiến', 21312312, NULL, 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (9, 37, 6, CAST(N'2023-11-26' AS Date), 1, N'Tiến', 21312312, NULL, 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (10, 37, 4, CAST(N'2023-11-26' AS Date), 1, N'Tiến', 21312312, NULL, 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (11, 37, 6, CAST(N'2023-11-26' AS Date), 1, N'Tiến', 21312312, NULL, 4)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (12, 40, 24, CAST(N'2023-12-03' AS Date), 1, N'Tiến', 21312312, NULL, 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (13, 39, 4, CAST(N'2023-12-03' AS Date), 1, N'Tiến ', 1231231, NULL, 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (14, 39, 24, CAST(N'2023-12-03' AS Date), 1, N'Tiến ', 1231231, NULL, 3)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (15, 45, 2, CAST(N'2023-12-08' AS Date), 1, N'', 0, N'Đổi trả nếu có lỗi từ nhà sản xuất', 4)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (16, 46, 3, CAST(N'2023-12-12' AS Date), 13, N'Tiến', 1234567899, N'Đổi trả nếu có lỗi từ nhà sản xuất', 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (17, 56, 2, CAST(N'2023-12-18' AS Date), 18, N'tung', 977502097, N'Bảo hành nếu có lỗi từ nhà sản xuất', 4)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (18, 57, 4, CAST(N'2023-12-18' AS Date), 18, N'tung', 977502097, N'Bảo hành nếu có lỗi từ nhà sản xuất', 4)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (19, 64, 3, CAST(N'2023-12-24' AS Date), 20, N'Ngọc Trâm', 1111111111, N'Bảo hành nếu có lỗi từ nhà sản xuất', 3)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (20, 1, 1, NULL, 2, N'Sin', NULL, N'Bảo hành nếu có lỗi từ nhà sản xuất', 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (21, 1, 2, NULL, 2, N'Sin', NULL, N'Bảo hành nếu có lỗi từ nhà sản xuất', 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (22, 4, 1, NULL, 2, N'Sin', NULL, N'Bảo hành nếu có lỗi từ nhà sản xuất', 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (23, 4, 2, NULL, 2, N'Sin', NULL, N'Bảo hành nếu có lỗi từ nhà sản xuất', 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (24, 65, 7, CAST(N'2023-12-24' AS Date), 21, N'Thỏ', 125487452, N'Bảo hành nếu có lỗi từ nhà sản xuất', 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (25, 65, 7, CAST(N'2023-12-24' AS Date), 21, N'Thỏ', 125487452, N'Bảo hành nếu có lỗi từ nhà sản xuất', 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (26, 66, 4, CAST(N'2023-12-24' AS Date), 21, N'Thỏ', 125487452, N'Bảo hành nếu có lỗi từ nhà sản xuất', 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (27, 17, 2, CAST(N'2023-11-15' AS Date), 2, N'Sin', NULL, N'Bảo hành nếu có lỗi từ nhà sản xuất', 1)
INSERT [dbo].[BaoHanh] ([MaBH], [MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai]) VALUES (28, 17, 6, CAST(N'2023-11-15' AS Date), 2, N'Sin', NULL, N'Bảo hành nếu có lỗi từ nhà sản xuất', 1)
SET IDENTITY_INSERT [dbo].[BaoHanh] OFF
SET IDENTITY_INSERT [dbo].[CTDDH] ON 

INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (1, 1, 1, 2, 220000.0000, 440000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (2, 1, 2, 1, 42900.0000, 42900.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (3, 4, 1, 2, 220000.0000, 440000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (4, 4, 2, 2, 42900.0000, 85800.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (5, 5, 1, 2, 220000.0000, 440000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (6, 5, 2, 1, 42900.0000, 42900.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (7, 6, 2, 1, 42900.0000, 42900.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (8, 6, 1, 2, 220000.0000, 440000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (9, 7, 1, 2, 220000.0000, 440000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (10, 8, 2, 1, 42900.0000, 42900.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (11, 8, 1, 1, 220000.0000, 220000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (12, 9, 1, 2, 220000.0000, 440000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (13, 10, 1, 1, 220000.0000, 220000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (14, 10, 2, 2, 42900.0000, 85800.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (15, 11, 1, 1, 220000.0000, 220000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (16, 12, 1, 2, 220000.0000, 440000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (17, 13, 1, 1, 220000.0000, 220000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (18, 14, 6, 2, 18990000.0000, 37980000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (19, 14, 2, 1, 42900.0000, 42900.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (20, 14, 4, 2, 399000.0000, 798000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (21, 14, 1, 4, 220000.0000, 880000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (22, 14, 3, 1, 33590000.0000, 33590000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (23, 14, 8, 1, 22990000.0000, 22990000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (24, 15, 2, 1, 42900.0000, 42900.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (27, 17, 2, 1, 42900.0000, 42900.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (28, 17, 6, 1, 18990000.0000, 18990000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (29, 18, 6, 1, 18990000.0000, 18990000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (30, 20, 4, 1, 399000.0000, 399000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (31, 20, 6, 1, 19490000.0000, 19490000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (32, 20, 3, 1, 33590000.0000, 33590000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (33, 21, 5, 1, 2690000.0000, 2690000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (34, 22, 8, 2, 22990000.0000, 45980000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (35, 23, 6, 1, 19490000.0000, 19490000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (36, 24, 3, 1, 33590000.0000, 33590000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (37, 25, 6, 1, 19490000.0000, 19490000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (38, 26, 5, 1, 2690000.0000, 2690000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (39, 27, 6, 1, 19490000.0000, 19490000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (40, 28, 6, 1, 19490000.0000, 19490000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (41, 29, 3, 1, 33590000.0000, 33590000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (42, 30, 6, 1, 19490000.0000, 19490000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (43, 30, 8, 2, 22990000.0000, 45980000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (44, 31, 6, 1, 19490000.0000, 19490000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (45, 31, 5, 1, 2690000.0000, 2690000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (47, 33, 5, 1, 2690000.0000, 2690000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (48, 34, 2, 1, 42900.0000, 42900.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (49, 35, 2, 1, 42900.0000, 42900.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (50, 35, 1, 1, 220000.0000, 220000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (51, 35, 3, 1, 33590000.0000, 33590000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (52, 35, 6, 1, 19490000.0000, 19490000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (53, 35, 5, 1, 2690000.0000, 2690000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (54, 35, 4, 1, 399000.0000, 399000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (55, 35, 8, 1, 22990000.0000, 22990000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (56, 35, 7, 1, 36290000.0000, 36290000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (57, 36, 5, 1, 2690000.0000, 2690000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (58, 37, 4, 1, 399000.0000, 399000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (59, 37, 6, 1, 19490000.0000, 19490000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (60, 38, 1, 1, 220000.0000, 220000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (61, 39, 4, 3, 400000.0000, 1200000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (62, 39, 24, 1, 1588400.0000, 1588400.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (63, 40, 24, 1, 1588400.0000, 1588400.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (64, 41, 7, 1, 30800000.0000, 30800000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (65, 42, 7, 1, 30800000.0000, 30800000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (66, 42, 4, 12, 400000.0000, 4800000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (67, 43, 4, 12, 400000.0000, 4800000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (68, 44, 2, 3, 2500000.0000, 7500000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (69, 45, 2, 7, 2500000.0000, 17500000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (70, 46, 3, 1, 36000000.0000, 36000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (71, 47, 5, 5, 15000000.0000, 75000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (72, 48, 7, 2, 30800000.0000, 61600000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (73, 49, 2, 1, 2500000.0000, 2500000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (74, 51, 2, 1, 2500000.0000, 2500000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (75, 52, 2, 1, 2500000.0000, 2500000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (76, 53, 1, 1, 23750000.0000, 23750000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (77, 54, 24, 1, 1588400.0000, 1588400.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (78, 54, 4, 1, 400000.0000, 400000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (79, 56, 2, 1, 4000000.0000, 4000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (80, 57, 4, 5, 400000.0000, 2000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (81, 58, 3, 8, 36000000.0000, 288000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (82, 59, 7, 1, 26400000.0000, 26400000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (83, 59, 3, 10, 36000000.0000, 360000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (84, 60, 3, 3, 36000000.0000, 108000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (85, 61, 3, 2, 36000000.0000, 72000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (86, 62, 5, 7, 15000000.0000, 105000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (87, 63, 7, 2, 26400000.0000, 52800000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (88, 64, 3, 1, 36000000.0000, 36000000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (89, 65, 7, 1, 26400000.0000, 26400000.0000)
INSERT [dbo].[CTDDH] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (90, 66, 4, 1, 400000.0000, 400000.0000)
SET IDENTITY_INSERT [dbo].[CTDDH] OFF
SET IDENTITY_INSERT [dbo].[CTDiaChi] ON 

INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (1, 1, N'30', N'Văn Chung', N'Phường 13', N'Tân Bình', N'Hồ Chí Minh', 2, NULL, NULL)
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (2, 2, N'312', N'Tân Bình', N'Lang Minh', N'Xuân Lộc', N'Đồng Nai', 2, NULL, NULL)
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (3, 3, N'140', N'Lê Trọng Tấn', N'Tây Thạnh', N'Tân Phú', N'Hồ Chí Minh', 2, N'Sin', N'0123456789')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (4, 4, N'11', N'Nguyễn Sáng', N'Tây Thạnh', N'Tân Phú', N'Hồ Chí Minh', 2, N'Hữu ', N'01231231')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (5, 5, N'256', N'Nguyễn Thái Bình', N'2', N'1', N'Hồ Chí Minh', 2, N'Tiến', N'021312312')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (6, 6, N'256', N'Nguyễn Thái Bình', N'2', N'1', N'Hồ Chí Minh', 2, N'Tiến', N'021312312')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (7, 7, N'256', N'Nguyễn Thái Bình', N'2', N'1', N'Hồ Chí Minh', 2, N'Tiến', N'021312312')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (8, 8, N'256', N'Nguyễn Thái Bình', N'2', N'1', N'Hồ Chí Minh', 2, N'Tiến', N'021312312')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (9, 9, N'253', N'Nguyễn Thái Bình', N'2', N'1', N'Hồ Chí Minh', 2, N'Tiến', N'021312312')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (10, 10, N'3', N'Nguyễn Bỉnh Khiêm', N'2', N'1', N'Hồ Chí Minh', 2, N'Tiến', N'021312312')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (11, 11, N'3', N'Nguyễn Bỉnh Khiêm', N'2', N'1', N'Hồ Chí Minh', 2, N'Tiến', N'021312312')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (12, 12, N'3', N'Nguyễn Bỉnh Khiêm', N'2', N'1', N'Hồ Chí Minh', 2, N'Tiến', N'021312312')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (13, 13, N'12', N'Phan Huy Ích', N'Phường 7', N'Gò Vấp ', N'Hồ Chí Minh', 2, N'Tiến ', N'01231231')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (14, 14, N'11', N'nguyễn Văn Trỗi', N'Phường 12', N'Phú Nhuận', N'Hồ Chí Minh', 2, N'Đạt', N'0123123')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (15, 15, N'11', N'Nguyễn Văn Trỗi', N'Phường 12', N'Phú Nhuận', N'Hồ Chí Minh', 1, N'Đạt', N'0123123')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (16, 16, N'256', N'Tô Ký', N'Bà Điểm', N'Hóc Môn', N'Hồ Chí Minh', 1, N'Tuyết Ny', N'01231231')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (17, 17, N'253', N'Tô Ký', N'2', N'1', N'Hồ Chí Minh', 2, N'Tuyết Ny', N'01231231')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (18, 18, N'256', N'Tô Ký', N'Bà Điểm', N'Hóc Môn', N'Hồ Chí Minh', 1, N'Tiến', N'01234567899')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (19, 19, N'256', N'Nguyễn Thái Bình', N'Phường 7', N'Gò Vấp ', N'Hồ Chí Minh', NULL, N'Tuyết Ny', N'01234567899')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (20, 20, N'196', N'Xuân đông', N'Phường Phú Thượng', N'Quận Tây Hồ', N'Thành phố Hà Nội', 2, N'Bách', N'12313236003')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (21, 21, N'12', N'Phạm Thế Hiển', N'Phường 06', N'Quận 6', N'Thành phố Hồ Chí Minh', 2, N'Huy', N'0123456789')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (22, 22, N'75', N'Hoàng Diệu', N'Phường 04', N'Quận 4', N'Thành phố Hồ Chí Minh', 2, N'Hòa', N'0956413265')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (23, 23, N'56/2/3', N'Trần Khánh Dư', N'Xã Đức Hạnh', N'Huyện Bảo Lâm', N'Tỉnh Cao Bằng', 1, N'Đặt', N'0995523516')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (26, 26, N'256', N'Tô Ký', N'Xã Vần Chải', N'Huyện Đồng Văn', N'Tỉnh Hà Giang', 2, N'Huy', N'0956413265')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (27, 27, N'256', N'Tô Ký', N'Phường Đồng Xuân', N'Quận Hoàn Kiếm', N'Thành phố Hà Nội', 1, N'tung', N'0977502097')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (28, 28, N'23', N'Tô Hiệu', N'Xã Tả Thàng', N'Huyện Mường Khương', N'Tỉnh Lào Cai', 1, N'Tram', N'01234546546')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (29, 29, N'3', N'Trường Chinh', N'Phường 03', N'Quận Tân Bình', N'Thành phố Hồ Chí Minh', 1, N'thỏ con', N'0245616565')
INSERT [dbo].[CTDiaChi] ([MaCTDiaChi], [MaDiaChi], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [MacDinh], [TenNguoiNhan], [SDTNguoiNhan]) VALUES (30, 30, N'334', N'Nguyễn Thái Binh', N'Xã Thanh Lâm', N'Huyện Ba Chẽ', N'Tỉnh Quảng Ninh', 1, N'Bách', N'01234567894')
SET IDENTITY_INSERT [dbo].[CTDiaChi] OFF
SET IDENTITY_INSERT [dbo].[CTGioHang] ON 

INSERT [dbo].[CTGioHang] ([MaCTGioHang], [MaGioHang], [MaSP], [SoLuong], [ThanhTien]) VALUES (46, 1, 3, 1, 36000000.0000)
INSERT [dbo].[CTGioHang] ([MaCTGioHang], [MaGioHang], [MaSP], [SoLuong], [ThanhTien]) VALUES (47, 1, 8, 1, 24640000.0000)
SET IDENTITY_INSERT [dbo].[CTGioHang] OFF
SET IDENTITY_INSERT [dbo].[DanhGiaSanPham] ON 

INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (1, N'Sản phẩm dùng tốt. Tôi dùng nghe gọi hàng ngày', CAST(N'2023-11-15' AS Date), 1, 2, 1, 4)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (2, NULL, CAST(N'2023-11-15' AS Date), 1, 2, 2, 1)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (3, N'Tệ', CAST(N'2023-11-15' AS Date), 2, 2, 2, 1)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (4, N'Đẹp mà Sin', CAST(N'2023-11-15' AS Date), 2, 2, 1, 1)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (5, N'Xấu', CAST(N'2023-11-15' AS Date), 6, 1, 2, 4)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (6, N'Đẹp', CAST(N'2023-12-12' AS Date), 3, 1, 13, 5)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (7, N'Xài được', CAST(N'2023-12-18' AS Date), 4, 1, 18, 4)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (8, N'Tạm', CAST(N'2023-12-18' AS Date), 4, 1, 1, 2)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (9, N'Ok', CAST(N'2023-12-18' AS Date), 5, 3, 1, 5)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (10, N'Tốt', CAST(N'2023-12-24' AS Date), 7, 1, 21, 5)
INSERT [dbo].[DanhGiaSanPham] ([MaDanhGia], [NoiDungDanhGia], [NgayDanhGia], [MaSP], [TrangThai], [MaKH], [DanhGia]) VALUES (11, N'Tốt', CAST(N'2023-12-25' AS Date), 24, 1, 1, 4)
SET IDENTITY_INSERT [dbo].[DanhGiaSanPham] OFF
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Điện thoại')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Laptop')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Loa')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (4, N'Bàn phím')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (9, N'Chuột - Lót chuột')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (10, N'Màn hình')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[DDH] ON 

INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (1, NULL, 3, NULL, 482900.0000, N'0123456789', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (2, NULL, 3, NULL, NULL, N'0123456789', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (3, NULL, 3, NULL, NULL, N'0123456789', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (4, NULL, 3, NULL, 525800.0000, N'0123456789', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (5, NULL, 4, NULL, 482900.0000, N'02515', 1, 2, N'Tiến', N'12', N'Trường Chinh', N'Phường 15', N'Tân Bình', N'Hồ Chí Minh', NULL)
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (6, NULL, 4, N'mgg10', 474610.0000, N'02515', 1, 2, N'Tiến', N'12', N'Trường Chinh', N'Phường 15', N'Tân Bình', N'Hồ Chí Minh', NULL)
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (7, CAST(N'2023-11-10' AS Date), 4, N'mgg10', 436000.0000, N'02515', 1, 2, N'Tiến', N'12', N'Trường Chinh', N'Phường 15', N'Tân Bình', N'Hồ Chí Minh', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (8, CAST(N'2023-11-11' AS Date), 4, N'mgg10', 276610.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'test')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (9, CAST(N'2023-11-11' AS Date), 3, N'mgg20', 382000.0000, N'0123123', 2, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (10, CAST(N'2023-11-11' AS Date), 3, N'', 345800.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (11, CAST(N'2023-11-13' AS Date), 3, N'', 260000.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (12, CAST(N'2023-11-13' AS Date), 4, N'mgg20', 382000.0000, N'0123123', 2, 2, N'Tiến', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (13, CAST(N'2023-11-14' AS Date), 3, N'', 260000.0000, N'021312312', 1, 1, N'Tiến', N'256', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (14, CAST(N'2023-11-15' AS Date), 4, N'', 96320900.0000, N'021312312', 1, 1, N'Tiến', N'256', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (15, CAST(N'2023-11-15' AS Date), 5, N'', 82900.0000, N'021312312', 1, 1, N'Tiến', N'253', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (17, CAST(N'2023-11-15' AS Date), 3, NULL, 19072900.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', NULL)
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (18, CAST(N'2023-11-15' AS Date), 3, NULL, 19020000.0000, N'0123456789', 2, 2, N'Sin', N'140', N'Lê Trọng Tấn', N'Tân Phú', N'Tây Thạnh', N'Tân Phú', NULL)
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (20, CAST(N'2023-11-17' AS Date), 4, N'mgg10', 48161100.0000, N'021312312', 2, 1, N'Tiến', N'256', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (21, CAST(N'2023-11-17' AS Date), 4, N'', 2730000.0000, N'021312312', 1, 1, N'Tiến', N'253', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (22, CAST(N'2023-11-17' AS Date), 4, N'mgg10', 41422000.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (23, CAST(N'2023-11-17' AS Date), 4, N'', 19530000.0000, N'01231231', 1, 1, N'Hữu ', N'11', N'Nguyễn Sáng', N'Tân Phú', N'Tây Thạnh', N'Tân Phú', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (24, CAST(N'2023-11-17' AS Date), 4, N'', 33620000.0000, N'021312312', 2, 1, N'Tiến', N'3', N'Nguyễn Bỉnh Khiêm', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (25, CAST(N'2023-11-17' AS Date), 4, N'', 19520000.0000, N'01231231', 2, 1, N'Hữu ', N'11', N'Nguyễn Sáng', N'Tân Phú', N'Tây Thạnh', N'Tân Phú', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (26, CAST(N'2023-11-17' AS Date), 4, N'', 2720000.0000, N'021312312', 2, 1, N'Tiến', N'256', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (27, CAST(N'2023-11-17' AS Date), 4, N'', 19530000.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (28, CAST(N'2023-11-17' AS Date), 3, N'', 19530000.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (29, CAST(N'2023-11-18' AS Date), 4, N'mgg20', 26912000.0000, N'021312312', 1, 1, N'Tiến', N'3', N'Nguyễn Bỉnh Khiêm', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (30, CAST(N'2023-11-19' AS Date), 3, N'', 65510000.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (31, CAST(N'2023-11-20' AS Date), 4, N'mgg20', 17784000.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (33, CAST(N'2023-11-21' AS Date), 3, N'', 2730000.0000, N'021312312', 1, 1, N'Tiến', N'256', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (34, CAST(N'2023-11-21' AS Date), 3, N'', 72900.0000, N'021312312', 2, 1, N'Tiến', N'256', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (35, CAST(N'2023-11-21' AS Date), 1, N'', 115741900.0000, N'021312312', 2, 1, N'Tiến', N'3', N'Nguyễn Bỉnh Khiêm', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (36, CAST(N'2023-11-26' AS Date), 3, N'', 2720000.0000, N'0123456479', 2, 1, N'Mẹ', N'312', N'Tân Bình', N'Xuân Lộc', N'Lang Minh', N'Xuân Lộc', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (37, CAST(N'2023-11-26' AS Date), 3, N'', 19929000.0000, N'021312312', 1, 1, N'Tiến', N'3', N'Nguyễn Bỉnh Khiêm', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (38, CAST(N'2023-11-27' AS Date), 1, N'', 260000.0000, N'', 1, 1, N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (39, CAST(N'2023-12-03' AS Date), 3, N'', 2828400.0000, N'01231231', 1, 1, N'Tiến ', N'12', N'Phan Huy Ích', N'Gò Vấp ', N'Phường 7', N'Gò Vấp ', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (40, CAST(N'2023-12-03' AS Date), 3, N'mgg10', 1469560.0000, N'021312312', 1, 1, N'Tiến', N'256', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (41, CAST(N'2023-12-04' AS Date), 4, N'mgg50', 15440000.0000, N'0123123', 1, 2, N'Đạt', N'11', N'Nguyễn Văn Trỗi', N'Phú Nhuận', N'Phường 12', N'Phú Nhuận', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (42, CAST(N'2023-12-08' AS Date), 4, N'', 35640000.0000, N'021312312', 1, 1, N'Tiến', N'256', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'Giao tận giường')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (43, CAST(N'2023-12-08' AS Date), 1, N'', 4840000.0000, N'01231231', 1, 1, N'Hữu ', N'11', N'Nguyễn Sáng', N'Tân Phú', N'Tây Thạnh', N'Tân Phú', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (44, CAST(N'2023-12-08' AS Date), 4, N'', 7540000.0000, N'021312312', 1, 1, N'Tiến', N'3', N'Nguyễn Bỉnh Khiêm', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (45, CAST(N'2023-12-08' AS Date), 5, N'', 17530000.0000, N'', 2, 1, N'', N'312', N'Tân Bình', N'Xuân Lộc', N'Lang Minh', N'Xuân Lộc', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (46, CAST(N'2023-12-12' AS Date), 3, N'', 36040000.0000, N'01234567899', 1, 13, N'Tiến', N'256', N'Tô Ký', N'Hóc Môn', N'Bà Điểm', N'Hóc Môn', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (47, CAST(N'2023-12-13' AS Date), 1, N'', 75040000.0000, N'0123456479', 1, 4, N'Mẹ', N'12', N'Nguyễn Thái Bình', N'Tân Phú', N'Lang Minh', N'Tân Phú', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (48, CAST(N'2023-12-13' AS Date), 4, N'', 61640000.0000, N'0122656565', 1, 4, N'Ny', N'22', N'Tân Bình', N'Hóc Môn', N'Bà Điểm', N'Hóc Môn', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (49, CAST(N'2023-12-16' AS Date), 4, NULL, NULL, N'01234567899', 1, 4, N'Tuyết Ny', N'256', N'Nguyễn Thái Bình', N'Gò Vấp ', N'Phường 7', N'Gò Vấp ', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (50, CAST(N'2023-12-16' AS Date), 4, N'', NULL, N'01234567899', 1, 4, N'Tuyết Ny', N'256', N'Nguyễn Thái Bình', N'Gò Vấp ', N'Phường 7', N'Gò Vấp ', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (51, CAST(N'2023-12-16' AS Date), 4, N'', 2530000.0000, N'01234567899', 2, 4, N'Tuyết Ny', N'256', N'Nguyễn Thái Bình', N'Gò Vấp ', N'Phường 7', N'Gò Vấp ', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (52, CAST(N'2023-12-16' AS Date), 1, N'', 2540000.0000, N'01231231', 1, 4, N'Tuyết Ny', N'256', N'Tô Ký', N'Hóc Môn', N'Bà Điểm', N'Hóc Môn', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (53, CAST(N'2023-12-16' AS Date), 2, N'', 23770000.0000, N'0995523516', 3, 17, N'Đặt', N'56/2/3', N'Trần Khánh Dư', N'Huyện Bảo Lâm', N'Xã Đức Hạnh', N'Huyện Bảo Lâm', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (54, CAST(N'2023-12-18' AS Date), 1, N'mgg50', 1034200.0000, N'021312312', 1, 1, N'Tiến', N'3', N'Nguyễn Bỉnh Khiêm', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (55, CAST(N'2023-12-18' AS Date), 4, N'', NULL, N'12313236003', 1, 1, N'Bách', N'196', N'Xuân đông', N'Quận Tây Hồ', N'Phường Phú Thượng', N'Quận Tây Hồ', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (56, CAST(N'2023-12-18' AS Date), 5, N'', 4040000.0000, N'0977502097', 1, 18, N'tung', N'256', N'Tô Ký', N'Quận Hoàn Kiếm', N'Phường Đồng Xuân', N'Quận Hoàn Kiếm', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (57, CAST(N'2023-12-18' AS Date), 3, N'mgg50', 1040000.0000, N'0977502097', 1, 18, N'tung', N'256', N'Tô Ký', N'Quận Hoàn Kiếm', N'Phường Đồng Xuân', N'Quận Hoàn Kiếm', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (58, CAST(N'2023-12-23' AS Date), 4, N'mgg20', 230430000.0000, N'021312312', 2, 1, N'Tiến', N'256', N'Nguyễn Thái Bình', N'1', N'2', N'1', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (59, CAST(N'2023-12-23' AS Date), 4, N'', 386440000.0000, N'01231231', 1, 4, N'Tuyết Ny', N'256', N'Tô Ký', N'Hóc Môn', N'Bà Điểm', N'Hóc Môn', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (60, CAST(N'2023-12-23' AS Date), 1, N'', 108040000.0000, N'01231231', 1, 4, N'Tuyết Ny', N'256', N'Tô Ký', N'Hóc Môn', N'Bà Điểm', N'Hóc Môn', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (61, CAST(N'2023-12-23' AS Date), 4, N'', 72040000.0000, N'01231231', 1, 1, N'Tiến ', N'12', N'Phan Huy Ích', N'Gò Vấp ', N'Phường 7', N'Gò Vấp ', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (62, CAST(N'2023-12-23' AS Date), 4, N'', 105040000.0000, N'01231231', 1, 4, N'Tuyết Ny', N'256', N'Tô Ký', N'Hóc Môn', N'Bà Điểm', N'Hóc Môn', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (63, CAST(N'2023-12-24' AS Date), 5, N'', 52820000.0000, N'01234546546', 3, 20, N'Tram', N'23', N'Tô Hiệu', N'Huyện Mường Khương', N'Xã Tả Thàng', N'Huyện Mường Khương', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (64, CAST(N'2023-12-24' AS Date), 3, N'', 36030000.0000, N'01234546546', 2, 20, N'Tram', N'23', N'Tô Hiệu', N'Huyện Mường Khương', N'Xã Tả Thàng', N'Huyện Mường Khương', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (65, CAST(N'2023-12-24' AS Date), 3, N'', 26440000.0000, N'0245616565', 1, 21, N'thỏ con', N'3', N'Trường Chinh', N'Quận Tân Bình', N'Phường 03', N'Quận Tân Bình', N'')
INSERT [dbo].[DDH] ([MaDDH], [NgayDat], [TrangThai], [MaGiamGia], [ThanhTien], [SDTNguoiNhan], [MaNVC], [MaKH], [TenNguoiNhan], [SoNha], [TenDuong], [PhuongXa], [QuanHuyen], [TinhThanh], [GhiChu]) VALUES (66, CAST(N'2023-12-24' AS Date), 3, N'', 420000.0000, N'0245616565', 3, 21, N'thỏ con', N'3', N'Trường Chinh', N'Quận Tân Bình', N'Phường 03', N'Quận Tân Bình', N'')
SET IDENTITY_INSERT [dbo].[DDH] OFF
SET IDENTITY_INSERT [dbo].[DiaChi] ON 

INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (1, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (2, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (3, 2)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (4, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (5, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (6, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (7, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (8, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (9, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (10, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (11, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (12, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (13, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (14, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (15, 2)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (16, 4)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (17, 13)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (18, 13)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (19, 4)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (20, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (21, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (22, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (23, 17)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (24, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (25, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (26, 1)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (27, 18)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (28, 20)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (29, 21)
INSERT [dbo].[DiaChi] ([MaDiaChi], [MaKH]) VALUES (30, 1)
SET IDENTITY_INSERT [dbo].[DiaChi] OFF
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([MaGioHang], [TongTienGioHang], [MaKH]) VALUES (1, 60640000.0000, 1)
INSERT [dbo].[GioHang] ([MaGioHang], [TongTienGioHang], [MaKH]) VALUES (2, 4400000.0000, 2)
INSERT [dbo].[GioHang] ([MaGioHang], [TongTienGioHang], [MaKH]) VALUES (3, 0.0000, 4)
INSERT [dbo].[GioHang] ([MaGioHang], [TongTienGioHang], [MaKH]) VALUES (4, 0.0000, 13)
INSERT [dbo].[GioHang] ([MaGioHang], [TongTienGioHang], [MaKH]) VALUES (5, 0.0000, 17)
INSERT [dbo].[GioHang] ([MaGioHang], [TongTienGioHang], [MaKH]) VALUES (6, 0.0000, 18)
INSERT [dbo].[GioHang] ([MaGioHang], [TongTienGioHang], [MaKH]) VALUES (7, 0.0000, 20)
INSERT [dbo].[GioHang] ([MaGioHang], [TongTienGioHang], [MaKH]) VALUES (8, 0.0000, 21)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
SET IDENTITY_INSERT [dbo].[HangSanXuat] ON 

INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang], [MoTa], [TTLienHe]) VALUES (1, N'Samsung', N'Công ty Samsum', N'Công ty Samsum Thái Nguyên')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang], [MoTa], [TTLienHe]) VALUES (2, N'Apple', N'Công ty Apple', N'Công ty Apple')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang], [MoTa], [TTLienHe]) VALUES (3, N'Bose', N'Âm thanh nghe nhạc đến từ Châu Âu', N'Loa bose')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang], [MoTa], [TTLienHe]) VALUES (4, N'JBL', N'Ông lớn của âm thanh Mỹ', N'USA')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang], [MoTa], [TTLienHe]) VALUES (7, N'Logitech', N'Logitech', N'Logitech')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang], [MoTa], [TTLienHe]) VALUES (8, N'LG', N'Top thương hiệu 10 năm trước', N'Hàn Quốc')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang], [MoTa], [TTLienHe]) VALUES (20, N'Dell', N'Chuyên máy tính', N'USA')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang], [MoTa], [TTLienHe]) VALUES (21, N'Lenovo', N'Lenovo', N'Nhật Bản')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang], [MoTa], [TTLienHe]) VALUES (22, N'Asus', N'Asus', N'Asus')
SET IDENTITY_INSERT [dbo].[HangSanXuat] OFF
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (1, N'data:image/png;base64,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', N'data:image/png;base64,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', N'data:image/png;base64,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', N'data:image/png;base64,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')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (2, N'samsung-galaxy-s22-anhchinh.jpg', N'samsung-galaxy-s22-anhphu1.jpg', N'samsung-galaxy-s22-anhphu2.jpg', N'samsung-galaxy-s22-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (3, N'Bose-QuietComfort-Ultra-Headphones-anhphu3.jpg', N'Bose-QuietComfort-Ultra-Headphones-anhphu2.jpg', N'Bose-QuietComfort-Ultra-Headphones-anhphu1.jpg', N'Bose-QuietComfort-Ultra-Headphones-anhchinh.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (4, N'iphone-15-pro-max-anhchinh.jpg', N'iphone-15-pro-max-anhphu1.jpg', N'iphone-15-pro-max-anhphu2.jpg', N'iphone-15-pro-max-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (5, N'phimdareuanhchinh.jpg', N'phimdareuanhphu1.jpg', N'phimdareuanhphu2.jpg', N'phimdareuanhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (6, N'Tai-nghe-True-Wireless-JBL-Tune-Flex-anhchinh.jpg', N'Tai-nghe-True-Wireless-JBL-Tune-Flex-anhphu1.jpg', N'Tai-nghe-True-Wireless-JBL-Tune-Flex-anhphu2.jpg', N'Tai-nghe-True-Wireless-JBL-Tune-Flex-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (7, N'Laptop-Apple-MacBook-Air-13-anhchinh.jpg', N'Laptop-Apple-MacBook-Air-13-anhphu1.jpg', N'Laptop-Apple-MacBook-Air-13-anhphu2.jpg', N'Laptop-Apple-MacBook-Air-13-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (8, N'Apple-MacBook-Pro-1P-M2-anhchinh.jpg', N'Apple-MacBook-Pro-1P-M2-anhphu1.jpg', N'Apple-MacBook-Pro-1P-M2-anhphu2.jpg', N'Apple-MacBook-Pro-1P-M2-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (9, N'Samsung-Galaxy-Z-Fold4-5G-anhchinh.jpg', N'Samsung-Galaxy-Z-Fold4-5G-anhphu1.jpg', N'Samsung-Galaxy-Z-Fold4-5G-anhphu2.jpg', N'Samsung-Galaxy-Z-Fold4-5G-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (15, N'banphimrapooanhchinh.jpg', N'banphimrapooanhphu1.jpg', N'banphimrapooanhphu2.jpg', N'banphimrapooanhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (19, N'iPhone-13-mini-anhchinh.jpg', N'ip13miniAnh1.jpg', N'iPhone-13-mini-anhphu1.jpg', N'iPhone-13-mini-anhphu2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (21, N'loa-jbl-authentics-200-2_1.jpeg', N'ip13miniAnh1.jpg', N'ip13miniAnh1.jpg', N'ip13miniAnh1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (22, N'loa-jbl-authentics-200_11_.jpeg', N'loa-jbl-authentics-200-1.jpeg', N'loa-jbl-authentics-200-2_1.jpeg', N'loa-jbl-authentics-200-11_1.jpeg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (25, N'g512phu2.jfif', N'g512phu1.jfif', N'g512chinh.jfif', N'g5123phu3.jfif')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (27, N'Chuot-Logitech-G-Pro-X-Superlight-2-Magenta-anhchinh.jpg', N'Chuot-Logitech-G-Pro-X-Superlight-2-Magenta-anhphu1.jpg', N'Chuot-Logitech-G-Pro-X-Superlight-2-Magenta-anhphu2.jpg', N'Chuot-Logitech-G-Pro-X-Superlight-2-Magenta-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (28, N'Laptop-Dell Inspiron-15-N3530-anhchinh.jpg', N'Laptop-Dell Inspiron-15-N3530-anhphu1.jpg', N'Laptop-Dell Inspiron-15-N3530-anhphu2.jpg', N'Laptop-Dell Inspiron-15-N3530-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (29, N'Chuot-Logitech-G102-LightSync-Black-anhchinh.jpg', N'Chuot-Logitech-G102-LightSync-Black-anhchu1.jpg', N'Chuot-Logitech-G102-LightSync-Black-anhchu2.jpg', N'Chuot-Logitech-G102-LightSync-Black-anhchu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (30, N'Laptop-Dell-Inspiron-T7420-N4I5021W-anhchinh.jpg', N'Laptop-Dell-Inspiron-T7420-N4I5021W-anhphu1.jpg', N'Laptop-Dell-Inspiron-T7420-N4I5021W-anhphu2.jpg', N'Laptop-Dell-Inspiron-T7420-N4I5021W-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (31, N'Laptop-Dell-Vostro-5620-V6I5001W1-anhchinh.jpg', N'Laptop-Dell-Vostro-5620-V6I5001W1-anhphu1.jpg', N'Laptop-Dell-Vostro-5620-V6I5001W1-anhphu2.jpg', N'Laptop-Dell-Vostro-5620-V6I5001W1-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (32, N'Laptop-gaming-Lenovo-LOQ-15IRH8-82XV00QQVN-anhchinh.jpg', N'Laptop-gaming-Lenovo-LOQ-15IRH8-82XV00QQVN-anhphu1.jpg', N'Laptop-gaming-Lenovo-LOQ-15IRH8-82XV00QQVN-anhphu2.jpg', N'Laptop-gaming-Lenovo-LOQ-15IRH8-82XV00QQVN-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (33, N'Laptop-Lenovo-Ideapad-Slim-5-16IAH8-83BG001XVN-anhchinh.jpg', N'Laptop-Lenovo-Ideapad-Slim-5-16IAH8-83BG001XVN-anhphu1.jpg', N'Laptop-Lenovo-Ideapad-Slim-5-16IAH8-83BG001XVN-anhphu2.jpg', N'Laptop-Lenovo-Ideapad-Slim-5-16IAH8-83BG001XVN-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (34, N'Laptop-Lenovo-Yoga-Slim-6-14IRH8-83E0000VVN-anhchinh.jpg', N'Laptop-Lenovo-Yoga-Slim-6-14IRH8-83E0000VVN-anhphu1.jpg', N'Laptop-Lenovo-Yoga-Slim-6-14IRH8-83E0000VVN-anhphu2.jpg', N'Laptop-Lenovo-Yoga-Slim-6-14IRH8-83E0000VVN-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (35, N'Man-hinh-AsusTUF-GAMING-VG249Q3A-anhchinh.jpg', N'Man-hinh-AsusTUF-GAMING-VG249Q3A-anhphu1.jpg', N'Man-hinh-AsusTUF-GAMING-VG249Q3A-anhphu2.jpg', N'Man-hinh-AsusTUF-GAMING-VG249Q3A-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (36, N'Chuot-Logitech-G502-X-Plus-LightSpeed-White-anhchinh.jpg', N'Chuot-Logitech-G502-X-Plus-LightSpeed-White-anhphu1.jpg', N'Chuot-Logitech-G502-X-Plus-LightSpeed-White-anhphu2.jpg', N'Chuot-Logitech-G502-X-Plus-LightSpeed-White-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (37, N'Laptop-ASUS-Vivobook-15-OLED-A1505ZA-L1245W-anhchinh.jpg', N'Laptop-ASUS-Vivobook-15-OLED-A1505ZA-L1245W-anhphu1.jpg', N'Laptop-ASUS-Vivobook-15-OLED-A1505ZA-L1245W-anhphu2.jpg', N'Laptop-ASUS-Vivobook-15-OLED-A1505ZA-L1245W-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (38, N'Laptop-Asus-ZenBook-Flip-OLED-UP3404VA-KN039W-anhchinh.jpg', N'Laptop-Asus-ZenBook-Flip-OLED-UP3404VA-KN039W-anhphu1.jpg', N'Laptop-Asus-ZenBook-Flip-OLED-UP3404VA-KN039W-anhphu2.jpg', N'Laptop-Asus-ZenBook-Flip-OLED-UP3404VA-KN039W-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (39, N'Laptop-Lenovo-Ideapad-1-14ALC7-82R30077VN-anhchinh.jpg', N'Laptop-Lenovo-Ideapad-1-14ALC7-82R30077VN-anhphu1.jpg', N'Laptop-Lenovo-Ideapad-1-14ALC7-82R30077VN-anhphu2.jpg', N'Laptop-Lenovo-Ideapad-1-14ALC7-82R30077VN-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (40, N'Laptop-LG-Gram-2022-14Z90Q-G.AJ53A5-anhchinh.jpg', N'Laptop-LG-Gram-2022-14Z90Q-G.AJ53A5-anhphu1.jpg', N'Laptop-LG-Gram-2022-14Z90Q-G.AJ53A5-anhphu2.jpg', N'Laptop-LG-Gram-2022-14Z90Q-G.AJ53A5-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (41, N'Laptop-LG-Gram-Style-14Z90RS-GAH54A5-anhchinh.jpg', N'Laptop-LG-Gram-Style-14Z90RS-GAH54A5-anhphu1.jpg', N'Laptop-LG-Gram-Style-14Z90RS-GAH54A5-anhphu2.jpg', N'Laptop-LG-Gram-Style-14Z90RS-GAH54A5-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (42, N'Laptop-LG-Gram-Ultra-Slim-15Z90RT-GAH55A5-anhchinh.jpg', N'Laptop-LG-Gram-Ultra-Slim-15Z90RT-GAH55A5-anhphu1.jpg', N'Laptop-LG-Gram-Ultra-Slim-15Z90RT-GAH55A5-anhphu2.jpg', N'Laptop-LG-Gram-Ultra-Slim-15Z90RT-GAH55A5-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (43, N'Man-hinh-ASUS-VZ27EHF-27inch-IPS-100Hz-anhchinh.jpg', N'Man-hinh-ASUS-VZ27EHF-27inch-IPS-100Hz-anhphu1.jpg', N'Man-hinh-ASUS-VZ27EHF-27inch-IPS-100Hz-anhphu2.jpg', N'Man-hinh-ASUS-VZ27EHF-27inch-IPS-100Hz-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (44, N'Man-hinh-Dell-UltraSharp-U2422H-24inch-IPS-anhchinh.jpg', N'Man-hinh-Dell-UltraSharp-U2422H-24inch-IPS-anhphu1.jpg', N'Man-hinh-Dell-UltraSharp-U2422H-24inch-IPS-anhphu2.jpg', N'Man-hinh-Dell-UltraSharp-U2422H-24inch-IPS-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (45, N'Man-hinh-Dell-UltraSharp-U2422HE-IPS-USBC-RJ45-anhchinh.jpg', N'Man-hinh-Dell-UltraSharp-U2422HE-IPS-USBC-RJ45-anhphu1.jpg', N'Man-hinh-Dell-UltraSharp-U2422HE-IPS-USBC-RJ45-anhphu2.jpg', N'Man-hinh-Dell-UltraSharp-U2422HE-IPS-USBC-RJ45-anhphu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [LinkHinhAnhChinh], [LinkHinhAnhPhu1], [LinkHinhAnhPhu2], [LinkHinhAnhPhu3]) VALUES (46, N'Man-hinh-Lenovo-L24q-35-24inch-IPS-2K-75Hz-2W-anhchinh.jpg', N'Man-hinh-Lenovo-L24q-35-24inch-IPS-2K-75Hz-2W-anhphu1.jpg', N'Man-hinh-Lenovo-L24q-35-24inch-IPS-2K-75Hz-2W-anhphu2.jpg', N'Man-hinh-Lenovo-L24q-35-24inch-IPS-2K-75Hz-2W-anhphu3.jpg')
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
SET IDENTITY_INSERT [dbo].[HoanHang] ON 

INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (1, 1, 2, N'đổi sản phẩm khác', 1)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (2, 34, 1, N'Đã mua', 2)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (3, 37, 1, N'Thiếu dây', 1)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (4, 13, 1, N'Ít tiền ', 2)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (5, 15, 1, N'Dơ', 1)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (6, 56, 18, N'Hỏng tai trái', 1)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (7, 45, 1, N'Thiếu dây', 1)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (8, 63, 20, N'Giao thiếu', 1)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (9, 65, 21, N'Gãy bản lề', 2)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (10, 66, 21, N'Hư nút', 2)
INSERT [dbo].[HoanHang] ([MaHoanHang], [MaDDH], [MaKH], [LyDonHoanHang], [TrangThai]) VALUES (11, 17, 2, N'Thiếu cáp sạc', 2)
SET IDENTITY_INSERT [dbo].[HoanHang] OFF
SET IDENTITY_INSERT [dbo].[HuyHang] ON 

INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (1, 5, 2, N'Tìm được sản phẩm giá tốt hơn', CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (2, 6, 2, N'', CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (3, 8, 2, N'', CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (4, 20, 1, N'', CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (5, 21, 1, N'', CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (6, 7, 2, NULL, CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (7, 12, 2, NULL, CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (8, 22, 2, NULL, CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (9, 23, 1, NULL, CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (10, 14, 1, NULL, CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (11, 24, 1, NULL, CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (12, 25, 1, NULL, CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (13, 26, 1, N'dkajsd', CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (14, 27, 2, N'gớm', CAST(N'2023-11-17' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (15, 29, 1, N'không thích', CAST(N'2023-11-18' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (16, 41, 2, NULL, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (17, 48, 3, N'Hết hàng', CAST(N'2023-12-13' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (18, 44, 1, NULL, CAST(N'2023-12-14' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (19, 42, 1, NULL, CAST(N'2023-12-14' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (20, 31, 3, N'Lỗi hệ thống', CAST(N'2023-12-14' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (21, 49, 4, NULL, CAST(N'2023-12-16' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (22, 50, 4, NULL, CAST(N'2023-12-16' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (23, 55, 1, NULL, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (24, 58, 1, NULL, CAST(N'2023-12-23' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (25, 61, 1, NULL, CAST(N'2023-12-23' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (26, 62, 4, NULL, CAST(N'2023-12-23' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (27, 59, 3, N'Lỗi hệ thống', CAST(N'2023-12-24' AS Date))
INSERT [dbo].[HuyHang] ([MaHuyDon], [MaDDH], [MaKH], [LyDonHuy], [NgayHuy]) VALUES (28, 51, 3, N'Lỗi hệ thống', CAST(N'2023-12-25' AS Date))
SET IDENTITY_INSERT [dbo].[HuyHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (1, N'Nguyễn Đình Khang', N'tien', N'123', N'Bose-QuietComfort-Ultra-Headphones-anhphu1.jpg', N'0123456789', 1, N'Dinhtien147123@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (2, N'Sin', N'sin', N'123', N'https://haycafe.vn/wp-content/uploads/2022/03/Hinh-anh-chan-dung-nam-dep.jpg', NULL, 1, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (3, N'Admin', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (4, N'Tuyết Ny', N'ny', N'123', NULL, N'0123456789', 1, N'tuyetny@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (13, N'nguynminquang', N'quang1', N'123', NULL, N'0947043030', 1, N'panhmi01@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (16, NULL, N'ba', N'123123123', NULL, N'1231231233', 1, N'Dinhtien7123@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (17, N'Đạt', N'tiensdaf', N'123123123', NULL, N'0124578998', 1, N'Dinhti7123@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (18, N'tung', N'tung9401', N'123', NULL, N'0977502097', 1, N'thanhtungt01@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (19, N'Ông', N'ong', N'12345678', NULL, N'0123456785', 1, N'ongtoi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (20, N'Ngọc Trâm', N'tram', N'123123123', N'avtTien.jpg', N'1111111111', 1, N'ngoctram@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTKKH], [MKTKKH], [AnhKH], [SoDienThoaiKH], [MaQuyen], [Email]) VALUES (21, N'Thỏ', N'tho', N'123123123', N'samsung-galaxy-s22-anhphu2.jpg', N'0125487452', 1, N'tho@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [TenMGG], [SLDaSuDung], [NgayBatDau], [NgayKetThuc], [TiLeGiam], [TrangThai]) VALUES (N'', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [TenMGG], [SLDaSuDung], [NgayBatDau], [NgayKetThuc], [TiLeGiam], [TrangThai]) VALUES (N'g1', N'Giảm 10', 3, CAST(N'2023-12-23' AS Date), CAST(N'2023-12-24' AS Date), 10, 3)
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [TenMGG], [SLDaSuDung], [NgayBatDau], [NgayKetThuc], [TiLeGiam], [TrangThai]) VALUES (N'g5', N'Giảm 5', 3, CAST(N'2023-12-26' AS Date), CAST(N'2023-12-28' AS Date), 5, 3)
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [TenMGG], [SLDaSuDung], [NgayBatDau], [NgayKetThuc], [TiLeGiam], [TrangThai]) VALUES (N'hotdeal3', N'Giảm 3', 123, CAST(N'2023-12-25' AS Date), CAST(N'2023-12-26' AS Date), 3, 1)
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [TenMGG], [SLDaSuDung], [NgayBatDau], [NgayKetThuc], [TiLeGiam], [TrangThai]) VALUES (N'mgg10', N'Giảm 10 %', 20, CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date), 10, 3)
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [TenMGG], [SLDaSuDung], [NgayBatDau], [NgayKetThuc], [TiLeGiam], [TrangThai]) VALUES (N'mgg12', N'Giảm 12%', 0, CAST(N'2023-12-15' AS Date), CAST(N'2023-12-16' AS Date), 12, 3)
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [TenMGG], [SLDaSuDung], [NgayBatDau], [NgayKetThuc], [TiLeGiam], [TrangThai]) VALUES (N'mgg20', N'Giảm 20%', 8, CAST(N'2023-12-03' AS Date), CAST(N'2023-12-05' AS Date), 20, 3)
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [TenMGG], [SLDaSuDung], [NgayBatDau], [NgayKetThuc], [TiLeGiam], [TrangThai]) VALUES (N'mgg50', N'Giảm 50%', 0, CAST(N'2023-12-05' AS Date), CAST(N'2023-12-08' AS Date), 50, 3)
SET IDENTITY_INSERT [dbo].[MaGiamGia_KhachHang] ON 

INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (1, N'mgg10', 1, 1)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (5, N'mgg10', 2, 0)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (9, N'mgg20', 2, 0)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (10, N'mgg50', 1, 1)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (11, N'mgg50', 2, 1)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (12, N'mgg20', 1, 1)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (13, N'mgg12', 1, 0)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (14, N'mgg20', 4, 0)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (15, N'mgg50', 18, 1)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (16, N'hotdeal3', 1, 0)
INSERT [dbo].[MaGiamGia_KhachHang] ([ID], [MaGiamGia], [MaKH], [TrangThai]) VALUES (17, N'hotdeal3', 4, 0)
SET IDENTITY_INSERT [dbo].[MaGiamGia_KhachHang] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaAdmin], [TenTaiKhoanAdmin], [MatKhauAdmin], [HoTenAdmin], [AnhAdmin], [MaQuyen]) VALUES (1, N'Admin', N'123', N'Administrator', N'data:image/png;base64,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', 2)
INSERT [dbo].[NhanVien] ([MaAdmin], [TenTaiKhoanAdmin], [MatKhauAdmin], [HoTenAdmin], [AnhAdmin], [MaQuyen]) VALUES (2, N'tiennv', N'123', N'Nguyễn Đình Tiến', N'https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-1/342198246_888800169084480_1676336618575946222_n.jpg?stp=dst-jpg_p240x240&_nc_cat=100&ccb=1-7&_nc_sid=11e7ab&_nc_eui2=AeFEicu6eQWO0pBOMc562cDwaKwVmLaaOd9orBWYtpo5321QoYS9sNT4PwajCwKQET2G59JuyZvM6SrZj_iJKBRn&_nc_ohc=FJD5oIWUHycAX97xyCW&_nc_ht=scontent.fsgn5-5.fna&oh=00_AfATt3NOFrDhhbkx9GIPa6A6UL12xw4A7uFD4_h-UC4dQg&oe=658850EE', 3)
INSERT [dbo].[NhanVien] ([MaAdmin], [TenTaiKhoanAdmin], [MatKhauAdmin], [HoTenAdmin], [AnhAdmin], [MaQuyen]) VALUES (4, N'sin', N'123', NULL, N'data:image/png;base64,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', 3)
INSERT [dbo].[NhanVien] ([MaAdmin], [TenTaiKhoanAdmin], [MatKhauAdmin], [HoTenAdmin], [AnhAdmin], [MaQuyen]) VALUES (5, N'datnv', N'123', N'Trịnh Đạt', N'data:image/png;base64,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', 3)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhaVanChuyen] ON 

INSERT [dbo].[NhaVanChuyen] ([MaNVC], [TenNVC], [ChiPhi], [DiaChiNVC], [SDTNVC]) VALUES (1, N'GHTK', 40000.0000, NULL, NULL)
INSERT [dbo].[NhaVanChuyen] ([MaNVC], [TenNVC], [ChiPhi], [DiaChiNVC], [SDTNVC]) VALUES (2, N'GHN', 30000.0000, N'Bệnh viên Xuyên Á', N'0124585423')
INSERT [dbo].[NhaVanChuyen] ([MaNVC], [TenNVC], [ChiPhi], [DiaChiNVC], [SDTNVC]) VALUES (3, N'Shopee', 20000.0000, N'Tân Binh', N'0124585423')
SET IDENTITY_INSERT [dbo].[NhaVanChuyen] OFF
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [MoTaQuyen]) VALUES (1, N'Khách Hàng', NULL)
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [MoTaQuyen]) VALUES (2, N'Admin', NULL)
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [MoTaQuyen]) VALUES (3, N'Nhân Viên', NULL)
SET IDENTITY_INSERT [dbo].[Quyen] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (1, N'Điện thoại Samsung Galaxy S22 5G ', 23750000.0000, 5, 21, NULL, NULL, N'Bảo hành nếu có lỗi từ nhà sản xuất', 6, CAST(N'2023-12-08' AS Date), 1, 2, 1, 1, 20, 25000000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (2, N'Bose QuietComfort Ultra Headphones', 4000000.0000, 20, 12, N'<p>World-class noise cancellation, quieter than ever before. Breakthrough spatialized audio for immersive listening, no matter the content or source. Elevated design and luxe materials for unrivaled comfort. It&rsquo;s everything music makes you feel taken to new highs. Bose Immersive Audio pushes the boundary of what it means to listen by taking what you&rsquo;re hearing out of your head and placing it in front of you. It sounds so real it&rsquo;s almost like you could reach out and touch it.</p>
', N'<p>Breakthrough Bose Immersive Audio</p>

<p>World-class noise cancellation</p>

<p>Sound tailored to you</p>

<p>Unrivaled comfort</p>

<p>Plays up to 24 hours**</p>

<p>Modes for any musical mood</p>

<p>Amazingly clear calls</p>

<p>Customize with Bose Music app</p>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 3, CAST(N'2023-11-09' AS Date), 1, 3, 3, 3, 5, 5000000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (3, N'iPhone 15 Pro Max 256GB', 36000000.0000, 10, 27, N'<h2><strong>Đ&aacute;nh gi&aacute; điện thoại iPhone 15 Pro Max c&oacute; g&igrave; mới</strong></h2>

<p><strong>iPhone 15 Pro Max</strong>&nbsp;đem lại một diện mạo ho&agrave;n to&agrave;n mới v&agrave; sở hữu nhiều t&iacute;nh năng ưu việt c&ugrave;ng c&ocirc;ng nghệ ti&ecirc;n tiến. H&atilde;y kh&aacute;m ph&aacute; c&aacute;c đ&aacute;nh gi&aacute; chi tiết về sản phẩm về kh&iacute;a cạnh thiết kế, m&agrave;n h&igrave;nh, hiệu năng, thời lượng pin v&agrave; bộ camera độc đ&aacute;o qua c&aacute;c th&ocirc;ng tin dưới đ&acirc;y!</p>

<h3><strong>Hiệu năng mạnh mẽ c&ugrave;ng chipset A17 Pro ti&ecirc;n tiến&nbsp;</strong></h3>

<p>Sản phẩm trang bị&nbsp;<strong>chip A17 Pro</strong>&nbsp;được sản xuất tr&ecirc;n&nbsp;<strong>tiến tr&igrave;nh 3nm</strong>, mang lại bước cải tiến đột ph&aacute;. Nhờ những cải tiến về thiết kế v&agrave; kiến tr&uacute;c vi m&ocirc;, CPU mới&nbsp;<strong>nhanh hơn đến 10%</strong>, hỗ trợ t&iacute;nh năng như Giọng n&oacute;i c&aacute; nh&acirc;n hay tự động sửa lỗi chuy&ecirc;n nghiệp. Kh&ocirc;ng chỉ vậy,&nbsp;<strong>GPU nhanh hơn đến 20%</strong>&nbsp;với thiết kế 6 l&otilde;i mới nhằm n&acirc;ng cao hiệu suất v&agrave; tiết kiệm năng lượng.</p>

<p><img alt="Đánh giá điện thoại iPhone 15 Pro Max" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iPhone-15-pro-max-20.jpeg" /></p>

<p><em>(Ảnh: Apple.com)</em></p>

<p>iPhone 15 Pro đ&atilde; c&oacute; một bước tiến đ&aacute;ng kể với c&ocirc;ng nghệ d&ograve; tia tăng tốc phần cứng, với tốc độ nhanh hơn gấp 4 lần so với c&aacute;c phi&ecirc;n bản trước đ&acirc;y d&ugrave;ng c&ocirc;ng nghệ d&ograve; tia dựa tr&ecirc;n phần mềm. Kết quả của sự cải tiến n&agrave;y l&agrave; trải nghiệm đồ họa tr&ecirc;n thiết bị trở n&ecirc;n mượt m&agrave; hơn, đặc biệt l&agrave; trải nghiệm khi chơi game v&agrave; sử dụng ứng dụng thực tế ảo (AR) sẽ trở n&ecirc;n sống động hơn.&nbsp;Người d&ugrave;ng sẽ c&oacute; trải nghiệm chiến game mượt m&agrave; hơn với: Resident Evil 4, Seadth Stranding, Resident Evil Village hay Assassin&#39;s Creed Mirage,...</p>

<p><img alt="Đánh giá điện thoại iPhone 15 Pro Max" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iPhone-15-pro-max-22.png" /></p>

<p><em>(Ảnh: Apple.com)</em></p>

<p>Chip A17 Pro được trang bị một bộ giải m&atilde; AV1 đặc biệt, gi&uacute;p n&acirc;ng cao chất lượng video v&agrave; tiết kiệm pin khi bạn sử dụng c&aacute;c dịch vụ truyền ph&aacute;t. Đồng thời, bộ điều khiển USB mới đ&atilde; được cải tiến để hỗ trợ tốc độ USB 3 lần đầu xuất hiện tr&ecirc;n iPhone, cung cấp khả năng truyền dữ liệu nhanh hơn đ&aacute;ng kể v&agrave; hỗ trợ đầu ra video với độ ph&acirc;n giải HDR 4K ở tốc độ 60 fps.</p>

<h3><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh vượt trội</strong></h3>

<p>M&agrave;n h&igrave;nh&nbsp;<strong>OLED</strong>&nbsp;tr&ecirc;n&nbsp;<strong>iPhone 15 Pro Max</strong>&nbsp;l&agrave; một điểm đặc biệt kh&ocirc;ng thể bỏ qua. Với k&iacute;ch thước&nbsp;<strong>6,7 inch</strong>&nbsp;c&ugrave;ng độ ph&acirc;n giải đỉnh cao&nbsp;<strong>2796x1179 pixel</strong>, tần số qu&eacute;t 120Hz v&agrave; mật độ điểm ảnh l&ecirc;n đến 460 ppi, m&agrave;n h&igrave;nh mang đến trải nghiệm ấn tượng cho người d&ugrave;ng. N&oacute; c&ograve;n được trang bị c&ocirc;ng nghệ HDR, gi&uacute;p hiển thị m&agrave;u sắc v&agrave; độ s&aacute;ng ch&acirc;n thực hơn bao giờ hết.</p>

<p><img alt="Công nghệ màn hình vượt trội" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iPhone-15-pro-max-21.jpeg" /></p>

<p><em>(Ảnh: Apple.com)</em></p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, c&ocirc;ng nghệ&nbsp;<strong>TrueTone</strong>&nbsp;hiện đại đ&atilde; được t&iacute;ch hợp, tự động điều chỉnh m&agrave;u sắc của m&agrave;n h&igrave;nh dựa tr&ecirc;n m&ocirc;i trường xung quanh. Với sự kết hợp n&agrave;y, bạn c&oacute; thể thấy r&otilde; r&agrave;ng rằng m&agrave;n h&igrave;nh của iPhone 15 Pro Max tạo ra trải nghiệm xem phim, chơi game v&agrave; lướt web vượt trội với h&igrave;nh ảnh sống động, rực rỡ, v&agrave; m&agrave;u sắc ch&acirc;n thực.</p>

<h3><strong>T&iacute;nh năng Dynamic Island độc đ&aacute;o</strong></h3>

<p>D&ugrave; kh&ocirc;ng phải lần đầu xuất hiện tr&ecirc;n iPhone, nhưng việc Dynamic Island tiếp tục được trang bị tr&ecirc;n Apple iPhone 15 Pro Max vẫn đ&aacute;p ứng được nhu cầu của người d&ugrave;ng. Dynamic Island mang đến trải nghiệm th&uacute; vị, đa dạng t&iacute;nh năng như &acirc;m nhạc, xem maps m&agrave; kh&ocirc;ng cần tho&aacute;t khỏi ứng dụng đang mở. B&ecirc;n cạnh đ&oacute;, với t&iacute;nh năng cập nhật th&ocirc;ng b&aacute;o theo thời gian thực mang đến t&iacute;nh tiện lợi khi sử dụng điện thoại IP 15 Pro Max.</p>

<p><img alt="Màn hình iPhone 15 Pro Max" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/apple-iphone-pro-max-18.png" /></p>

<p>(Ảnh: Apple.com)</p>

<h3><strong>Dung lượng pin sử dụng thoải m&aacute;i, cổng kết nối USB-C</strong></h3>

<p><strong>iPhone 15 Pro Max</strong>&nbsp;sở hữu vi&ecirc;n pin c&oacute;&nbsp;<strong>dung lượng lớn hơn</strong>&nbsp;đ&aacute;ng kể so với thế hệ trước đ&oacute;. Với vi&ecirc;n pin n&agrave;y, bạn c&oacute; thể thưởng thức&nbsp;<strong>video l&ecirc;n đến 29 giờ</strong>, xem video trực tuyến l&ecirc;n đến 25 giờ, nghe nhạc l&ecirc;n đến 95 giờ (tuỳ v&agrave;o t&aacute;c vụ kh&aacute;c nhau m&agrave; thời gian c&oacute; thể thay đổi). Nhờ vậy, bạn c&oacute; thể thoải m&aacute;i sử dụng cả ng&agrave;y m&agrave; kh&ocirc;ng lo gi&aacute;n đoạn giữa chừng.</p>
', N'<ul>
	<li>
	<p><a href="https://cellphones.com.vn/sforum/kich-thuoc-man-hinh-dien-thoai" target="_blank">K&iacute;ch thước m&agrave;n h&igrave;nh</a></p>

	<p>6.7 inches</p>

	<p><a href="https://cellphones.com.vn/sforum/man-hinh-dien-thoai" target="_blank">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</a></p>

	<p><a href="https://cellphones.com.vn/sforum/man-hinh-super-retina-xdr-la-gi" target="_blank">Super Retina XDR OLED</a></p>

	<p><a href="https://cellphones.com.vn/sforum/do-phan-giai-man-hinh" target="_blank">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</a></p>

	<p>2796 x 1290-pixel</p>

	<p>T&iacute;nh năng m&agrave;n h&igrave;nh</p>

	<p>Tốc độ l&agrave;m mới 120Hz<br />
	460 ppi<br />
	HDR<br />
	True Tone<br />
	Dải m&agrave;u rộng (P3)<br />
	Haptic Touch<br />
	Tỷ lệ tương phản 2.000.000:1</p>

	<p><a href="https://cellphones.com.vn/sforum/tan-so-quet-man-hinh-la-gi" target="_blank">Tần số qu&eacute;t</a></p>

	<p>120Hz</p>

	<p>Kiểu m&agrave;n h&igrave;nh</p>

	<p><a href="https://cellphones.com.vn/sforum/dynamic-island-la-gi-cach-thuc-hoat-dong-cua-dynamic-island-nhu-the-nao" target="_blank">Dynamic Island</a></p>
	</li>
	<li>
	<p>Camera sau</p>

	<p>Camera sau</p>

	<p>Camera ch&iacute;nh: 48MP, 24 mm, &fnof;/1.78,<br />
	Camera g&oacute;c si&ecirc;u rộng: 12 MP, 13 mm, &fnof;/2.2<br />
	Camera Tele 5x: 12 MP, 120 mm, &fnof;/2.8<br />
	Camera Tele 2x: 12 MP, 48 mm, &fnof;/1.78</p>

	<p>Quay video</p>

	<p>4K@24/25/30/60 fps<br />
	HD 1080p@25/30/60 fps<br />
	HD 720p@30 fps</p>

	<p>T&iacute;nh năng camera</p>

	<p>Flash True Tone Th&iacute;ch Ứng<br />
	Photonic Engine<br />
	Deep Fusion<br />
	HDR th&ocirc;ng minh thế hệ 5<br />
	Ảnh ch&acirc;n dung thế hệ mới với Focus v&agrave; Depth Control<br />
	Hiệu ứng Chiếu S&aacute;ng Ch&acirc;n Dung với s&aacute;u chế độ<br />
	Chế độ Ban Đ&ecirc;m</p>
	</li>
	<li>
	<p>Camera trước</p>

	<p>Camera trước</p>

	<p>12MP, &fnof;/1.9</p>

	<p>Quay video trước</p>

	<p>4K@24/25/30/60 fps<br />
	HD 1080p@25/30/60 fps</p>
	</li>
	<li>
	<p>Vi xử l&yacute; &amp; đồ họa</p>

	<p><a href="https://cellphones.com.vn/sforum/chipset-la-gi" target="_blank">Chipset</a></p>

	<p>A17 Pro</p>

	<p>Loại CPU</p>

	<p>CPU 6 l&otilde;i mới với 2 l&otilde;i hiệu năng v&agrave; 4 l&otilde;i hiệu suất</p>

	<p><a href="https://cellphones.com.vn/sforum/gpu-la-gi" target="_blank">GPU</a></p>

	<p>GPU 6 nh&acirc;n mới</p>
	</li>
	<li>
	<p>RAM &amp; lưu trữ</p>

	<p><a href="https://cellphones.com.vn/sforum/ram-la-gi" target="_blank">Dung lượng RAM</a></p>

	<p>8 GB</p>

	<p><a href="https://cellphones.com.vn/sforum/bo-nho-trong" target="_blank">Bộ nhớ trong</a></p>

	<p>256 GB</p>

	<p>Khe cắm thẻ nhớ</p>

	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Pin &amp; c&ocirc;ng nghệ sạc</p>

	<p><a href="https://cellphones.com.vn/sforum/mah-la-gi-don-vi-mah-la-gi" target="_blank">Pin</a></p>

	<p>4422 mAh</p>

	<p>C&ocirc;ng nghệ sạc</p>

	<p>Sạc nhanh<br />
	Sạc kh&ocirc;ng d&acirc;y 15W<br />
	Sạc kh&ocirc;ng d&acirc;y Qi 7.5W</p>

	<p><a href="https://cellphones.com.vn/sforum/cac-loai-cong-sac" target="_blank">Cổng sạc</a></p>

	<p><a href="https://cellphones.com.vn/sforum/usb-type-c-la-gi" target="_blank">USB Type-C</a></p>
	</li>
	<li>
	<p>Giao tiếp &amp; kết nối</p>

	<p><a href="https://cellphones.com.vn/sforum/sim-la-gi" target="_blank">Thẻ SIM</a></p>

	<p>2 SIM (nano‑SIM v&agrave; eSIM)</p>

	<p><a href="https://cellphones.com.vn/sforum/he-dieu-hanh-la-gi-nhung-he-dieu-hanh-pho-bien-tren-may-tinh-dien-thoai" target="_blank">Hệ điều h&agrave;nh</a></p>

	<p>iOS 17</p>

	<p>Hồng ngoại</p>

	<p>C&oacute;</p>

	<p><a href="https://cellphones.com.vn/sforum/jack-tai-nghe-35mm-la-gi" target="_blank">Jack tai nghe 3.5</a></p>

	<p>Kh&ocirc;ng</p>

	<p><a href="https://cellphones.com.vn/sforum/nfc-la-gi" target="_blank">C&ocirc;ng nghệ NFC</a></p>

	<p>C&oacute;</p>

	<p>Hỗ trợ mạng</p>

	<p><a href="https://cellphones.com.vn/sforum/mang-5g-la-gi" target="_blank">5G</a></p>

	<p><a href="https://cellphones.com.vn/sforum/wifi-la-gi-song-wi-fi-hoat-dong-va-co-chuc-nang-nhu-the-nao" target="_blank">Wi-Fi</a></p>

	<p>Wi‑Fi 6E (802.11ax)</p>

	<p><a href="https://cellphones.com.vn/sforum/ket-noi-bluetooth-khai-niem-va-nhung-cong-dung-co-ban" target="_blank">Bluetooth</a></p>

	<p>5.3</p>

	<p><a href="https://cellphones.com.vn/sforum/gps-la-gi" target="_blank">GPS</a></p>

	<p>GPS tần số k&eacute;p ch&iacute;nh x&aacute;c (GPS, GLONASS, Galileo, QZSS, BeiDou v&agrave; NavIC)</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>

	<p>K&iacute;ch thước</p>

	<p>159,9 x 76,7 x 8,25 mm</p>

	<p>Trọng lượng</p>

	<p>221 g</p>

	<p>Chất liệu mặt lưng</p>

	<p>K&iacute;nh</p>

	<p>Chất liệu khung viền</p>

	<p>Titanium</p>
	</li>
	<li>
	<p>Th&ocirc;ng số kh&aacute;c</p>

	<p>Chỉ số kh&aacute;ng nước, bụi</p>

	<p>Đạt mức IP68 (chống nước ở độ s&acirc;u tối đa 6 m&eacute;t trong v&ograve;ng tối đa 30 ph&uacute;t)</p>

	<p>C&ocirc;ng nghệ - Tiện &iacute;ch</p>

	<p>Camera TrueDepth hỗ trợ nhận diện khu&ocirc;n mặt</p>

	<p>Tiện &iacute;ch kh&aacute;c</p>

	<p>SOS Khẩn Cấp<br />
	Ph&aacute;t Hiện Va Chạm</p>

	<p>C&ocirc;ng nghệ &acirc;m thanh</p>

	<p>AAC, MP3, Apple Lossless, FLAC, Dolby Digital, Dolby Digital Plus v&agrave; Dolby Atmos</p>
	</li>
	<li>
	<p>Tiện &iacute;ch kh&aacute;c</p>

	<p><a href="https://cellphones.com.vn/sforum/cam-bien-van-tay" target="_blank">Cảm biến v&acirc;n tay</a></p>

	<p>Kh&ocirc;ng</p>

	<p>C&aacute;c loại cảm biến</p>

	<p><a href="https://cellphones.com.vn/sforum/cam-bien-gia-toc-la-gi" target="_blank">Cảm biến gia tốc</a>,&nbsp;<a href="https://cellphones.com.vn/sforum/cam-bien-tiem-can-dien-thoai" target="_blank">Cảm biến tiệm cận</a>,&nbsp;<a href="https://cellphones.com.vn/sforum/cam-bien-anh-sang-la-gi" target="_blank">Cảm biến &aacute;nh s&aacute;ng</a>,&nbsp;<a href="https://cellphones.com.vn/sforum/cam-bien-la-ban-la-gi" target="_blank">La b&agrave;n</a>,&nbsp;<a href="https://cellphones.com.vn/sforum/con-quay-hoi-chuyen" target="_blank">Con quay hồi chuyển</a>, Cảm biến &aacute;p kế,&nbsp;<a href="https://cellphones.com.vn/sforum/cam-bien-trong-luc-la-gi" target="_blank">Cảm biến trọng lực</a></p>

	<p>T&iacute;nh năng đặc biệt</p>

	<p>Hỗ trợ 5G, Sạc kh&ocirc;ng d&acirc;y, Nhận diện khu&ocirc;n mặt, Kh&aacute;ng nước, kh&aacute;ng bụi</p>
	</li>
	<li>
	<p>Th&ocirc;ng tin chung</p>

	<p>Thời điểm ra mắt</p>

	<p>9/2023</p>
	</li>
</ul>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 2, CAST(N'2023-11-14' AS Date), 1, 4, 1, 2, 16, 40000000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (4, N'Bàn phím cơ có dây Dareu EK87 TKL', 400000.0000, 0, 17, N'<h2><strong>B&agrave;n ph&iacute;m cơ c&oacute; d&acirc;y DAREU EK87 - Trang bị chế độ đ&egrave;n LED độc đ&aacute;o</strong></h2>

<p>B&agrave;n ph&iacute;m cơ c&oacute; d&acirc;y&nbsp;<a href="https://cellphones.com.vn/ban-phim-co-co-day-dareu-ek87.html" target="_blank"><strong>DAREU EK87</strong></a>&nbsp;l&agrave; loại b&agrave;n ph&iacute;m được đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng giới trẻ ưa chuộng. C&ugrave;ng t&igrave;m hiểu xem chi tiết th&ecirc;m về loại b&agrave;n ph&iacute;m n&agrave;y nh&eacute;!</p>

<h3><strong>Thiết kế nhỏ gọn, bố tr&iacute; b&agrave;n ph&iacute;m theo chuẩn</strong></h3>

<p>Thương hiệu&nbsp;<a href="https://cellphones.com.vn/phu-kien/chuot-ban-phim-may-tinh/ban-phim/dareu.html" target="_blank"><strong>b&agrave;n ph&iacute;m DAREU</strong></a>&nbsp;l&agrave; b&agrave;n ph&iacute;m chuy&ecirc;n d&ugrave;ng chơi game hệ thống Stab ph&iacute;m d&agrave;i được l&agrave;m theo dạng Cherry c&ugrave;ng 2 switch phụ. B&agrave;n ph&iacute;m DareU EK87 c&oacute; thiết kế rất th&acirc;n thiện với c&aacute;c game thủ. Lớp vỏ b&agrave;n ph&iacute;m được l&agrave;m kh&aacute; chắc chắn, classic. Keycap Double Shot bền bỉ. C&oacute; lớp vỏ d&agrave;y, cao che k&iacute;n ch&acirc;n switch.</p>

<p><img alt="Bàn phím cơ có dây Dareu EK87 TKL" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/accessories/Untitled-1.jpg" /></p>

<p>DareU EK87 được bố tr&iacute; c&aacute;c ph&iacute;m chuẩn, cũng kh&aacute; thuận tiện cho việc dễ d&agrave;ng l&agrave;m quen, sử dụng v&agrave; c&oacute; thể thay thế keycap theo &yacute; muốn của m&igrave;nh. Phi&ecirc;n bản&nbsp;<a href="https://cellphones.com.vn/phu-kien/chuot-ban-phim-may-tinh/ban-phim/ban-phim-co-day.html" target="_blank"><strong>b&agrave;n ph&iacute;m c&oacute; d&acirc;y</strong></a>&nbsp;DareU EK87 m&agrave;u đen th&igrave; đi c&ugrave;ng với đ&egrave;n led.</p>

<h3><strong>Hiệu năng tốt v&agrave; chắc chắn c&ugrave;ng với chế độ led Rainbow</strong></h3>

<p>B&agrave;n ph&iacute;m cơ c&oacute; d&acirc;y DAREU EK87 cho ch&uacute;ng ta những trải nghiệm ph&iacute;m bấm rất tốt trong tầm tiền v&agrave; chắc chắn, kh&ocirc;ng khiến cho bạn c&oacute; cảm gi&aacute;c bị ọp ẹp, kh&oacute; chịu.</p>

<p><img alt="Bàn phím cơ có dây Dareu EK87 TKL" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/accessories/Untitled-2_1.jpg" /></p>

<p>DareU EK87 được trang bị với c&oacute; chế độ led Rainbow với độ s&aacute;ng vừa phải. B&agrave;n ph&iacute;m cơ chia m&agrave;u theo v&ugrave;ng tạo n&ecirc;n m&agrave;u sắc đa dạng, sống động hơn so với thế hệ trước. Ngo&agrave;i ra, Dareu c&ograve;n c&aacute;c mẫu b&agrave;n ph&iacute;m HOT hiện nay như&nbsp;<a href="https://cellphones.com.vn/ban-phim-co-co-day-dareu-ek810x.html" target="_blank"><strong>Dareu EK810X</strong></a>&nbsp;cũng trang bị đầy đủ đ&egrave;n Led LRG si&ecirc;u phẩm.&nbsp;</p>

<h2><strong>Mua b&agrave;n ph&iacute;m b&agrave;n ph&iacute;m cơ c&oacute; d&acirc;y DAREU EK87 tại hệ thống CellphoneS</strong></h2>

<p>Nếu mua b&agrave;n ph&iacute;m DareU EK87 tại hệ thống CellphoneS bạn sẽ nhận được kh&aacute; nhiều ưu đ&atilde;i hấp dẫn c&ugrave;ng bảo h&agrave;nh sản phẩm thời gian d&agrave;i. Đặc biệt khi đến đ&acirc;y, bạn sẽ h&agrave;i l&ograve;ng bởi chất lượng dịch vụ tốt, phục vụ chuy&ecirc;n nghiệp, chu đ&aacute;o đến từ đội ngũ nh&acirc;n vi&ecirc;n.&nbsp;</p>
', N'<ul>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>

	<p>K&iacute;ch thước</p>

	<p>35 x 357 x 129mm</p>

	<p>Trọng lượng</p>

	<p>675 g</p>
	</li>
	<li>
	<p>Th&ocirc;ng số kỹ thuật</p>

	<p>Tương th&iacute;ch</p>

	<p>Windows</p>

	<p>C&aacute;ch kết nối</p>

	<p>D&acirc;y cắm USB</p>

	<p>K&iacute;ch thước b&agrave;n ph&iacute;m</p>

	<p>Tenkeyless</p>

	<p>Đ&egrave;n nền LED</p>

	<p>C&oacute;</p>
	</li>
	<li>
	<p>Th&ocirc;ng số kh&aacute;c</p>

	<p>Độ d&agrave;i d&acirc;y / Khoảng c&aacute;ch kết nối</p>

	<p>1.8 m</p>
	</li>
	<li>
	<p>Th&ocirc;ng tin h&atilde;ng</p>

	<p>H&atilde;ng sản xuất</p>

	<p>DAREU</p>
	</li>
	<li>
	<p>Tiện &iacute;ch</p>

	<p>T&iacute;nh năng kh&aacute;c</p>

	<p>D switch độ bền l&ecirc;n đến 50 triệu lần nhấn</p>
	</li>
</ul>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 2, CAST(N'2023-11-14' AS Date), 1, 5, 4, 7, 28, 400000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (5, N'Tai nghe Bluetooth True Wireless JBL Tune Flex', 15000000.0000, 40, 8, N'<p>Tai nghe JBL Tune Flex với tr&igrave;nh điều khiển 12 mm c&ugrave;ng thiết kế th&ocirc;ng minh nhờ đố mang lại trải nghiệm &acirc;m thanh vượt trội, đặc biệt l&agrave; &acirc;m bass. Tai nghe với 4 micro hỗ trợ đ&agrave;m thoại tiện lợi c&ugrave;ng với c&ocirc;ng nghệ khử ồn th&ocirc;ng minh. Thiết bị với vi&ecirc;n pin mang lại thời gian sử dụng l&ecirc;n tới 32 giờ, trong đ&oacute; 8 giờ sử dụng với tai nghe v&agrave; 24 giờ tr&ecirc;n case sạc.</p>

<h2><strong>Mua tai nghe&nbsp;JBL Tune Flex từ 1.11.2023 - 9.11.2023 nhận th&ecirc;m qu&agrave; tặng gi&aacute; trị tới gần 1 triệu đồng - Chỉ c&oacute; tại CellphoneS</strong></h2>

<p>Khi kh&aacute;ch h&agrave;ng mua&nbsp;JBL Tune Flex tại hệ thống CellphoneS trong thời gian&nbsp;<strong>từ 01.11 đến 09.11</strong>&nbsp;sẽ được nhận th&ecirc;m nhiều qu&agrave; tặng gi&aacute; trị như:</p>

<ul>
	<li>
	<p>T&uacute;i đeo ch&eacute;o SGS x JBL HERO BAG</p>
	</li>
	<li>
	<p>Pin dự ph&ograve;ngAukey Basix Slim PB N99 10000mAh</p>
	</li>
</ul>

<p><strong>Tổng trị gi&aacute; qu&agrave; tặng c&oacute; thể l&ecirc;n tới 1 triệu đồng</strong>v&ocirc; c&ugrave;ng gi&aacute; trị. Nếu kh&ocirc;ng nhận qu&agrave;, kh&aacute;ch h&agrave;ng c&oacute; thể quy đổi v&agrave; trừ trực tiếp v&agrave;o gi&aacute; mua h&agrave;ng th&ecirc;m 250.000 đồng.</p>

<h2><strong>Tai nghe&nbsp;</strong><strong>JBL Tune Flex - Chất &acirc;m to&agrave;n diện, thiết kế trẻ trung</strong></h2>

<p><strong>Tai nghe&nbsp;</strong><strong>bluetooth JBL Tune Flex</strong>&nbsp;ho&agrave;n thiện kiểu d&aacute;ng thiết kế kh&aacute; độc đ&aacute;o, đem lại c&aacute;i nh&igrave;n mới mẻ. Đặc biệt, sản phẩm&nbsp;<a href="https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/tai-nghe-khong-day.html" target="_blank"><strong>tai nghe kh&ocirc;ng d&acirc;y</strong></a>&nbsp;n&agrave;y được hỗ trợ c&ocirc;ng nghệ JBL&#39;s Pure Bass Sound độc quyền, c&oacute; thể điều khiển bằng cảm ứng rất tiện lợi.</p>

<h3><strong>Ngoại h&igrave;nh nhỏ gọn, m&agrave;u sắc đa dạng</strong></h3>

<p>JBL Tune Flex được nh&agrave; sản xuất l&agrave;m rất liền mạch, hộp đựng h&igrave;nh chữ nhật, v&agrave; ph&iacute;a trước thiết kế ba đ&egrave;n LED th&ocirc;ng b&aacute;o t&igrave;nh trạng pin.&nbsp;Sản phẩm thi&ecirc;n hướng theo phong c&aacute;ch trẻ trung, năng động. B&ecirc;n cạnh đ&oacute;, trọng lượng kh&aacute; nhẹ, đem lại cảm gi&aacute;c đeo l&ecirc;n tai dễ chịu. V&agrave; người d&ugrave;ng c&oacute; thể thay thế bằng 3 bộ eartip k&iacute;ch thước kh&aacute;c nhau. Tai nghe sẽ c&oacute; ba lựa chọn m&agrave;u sắc kh&aacute;c nhau cho người d&ugrave;ng lựa chọn l&agrave; đen, trắng v&agrave; xanh.</p>

<p><img alt="Thiết kế tai nghe JBL Tune Flex" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Tai-nghe/JBL/tai-nghe-bluetooth-jbl-tune-flex-3.jpg" /></p>

<p>&gt;&gt;&gt; Xem th&ecirc;m tai nghe&nbsp;<strong><a href="https://cellphones.com.vn/tai-nghe-bluetooth-jbl-tune-beam.html" target="_blank">JBL Tune Beam</a></strong>&nbsp;mới nhất với nhiều ưu đ&atilde;i hấp dẫn.</p>

<h3><strong>Khử ồn chủ động, nghe gọi thoải m&aacute;i</strong></h3>

<p>Tai nghe JBL Tune Flex hỗ trợ chế độ chống ồn chủ động, đảm bảo qu&aacute; tr&igrave;nh nghe nhạc trong m&ocirc;i trường nhiều tạp &acirc;m kh&ocirc;ng bị ảnh hưởng. K&iacute;ch thước củ loa của thiết bị l&agrave; 12mm, mang đến chất &acirc;m bass cực mạnh, thuần khiết.</p>

<p><img alt="Âm thanh tai nghe JBL Tune Flex" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Tai-nghe/JBL/tai-nghe-bluetooth-jbl-tune-flex-4.jpg" /></p>

<p>Chưa kể, thiết bị sở hữu cả c&ocirc;ng nghệ JBL Pure Bass Sound, đẩy &acirc;m trầm chắc khỏe hơn, ph&ugrave; hợp khi nghe thể loại nhạc EDM, Vinahouse,...&nbsp;Ngo&agrave;i ra, sản phẩm trang bị 4 micro chống ồn t&iacute;ch hợp, gi&uacute;p người d&ugrave;ng đ&agrave;m thoại r&otilde; r&agrave;ng, giọng n&oacute;i trong trẻo.</p>

<h2><strong>Mua tai nghe</strong><strong>&nbsp;JBL Tune Flex gi&aacute; rẻ, chất lượng tại CellphoneS</strong></h2>

<p>Như vậy, nếu bạn muốn sở hữu d&ograve;ng tai nghe Bluetooth chống ồn hiệu quả, thiết kế trẻ trung, tinh tế, v&agrave; hỗ trợ nhiều t&iacute;nh năng th&igrave; n&ecirc;n mua ngay&nbsp;<strong>JBL Tune Flex ch&iacute;nh h&atilde;ng</strong>&nbsp;tại cửa h&agrave;ng CellphoneS để c&oacute; được nhiều ưu đ&atilde;i, bảo h&agrave;nh d&agrave;i hạn nh&eacute;.</p>
', N'<ul>
	<li>
	<p>Thời lượng pin</p>

	<p>Tai nghe: 8 giờ<br />
	Hộp sạc: 24 giờ</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>IPX4</p>
	</li>
	<li>
	<p>Micro</p>

	<p>4 Micro</p>
	</li>
	<li>
	<p>Tương th&iacute;ch</p>

	<p>C&aacute;c thiết bị hỗ trợ Bluetooth</p>
	</li>
	<li>
	<p>K&iacute;ch thước driver</p>

	<p>12 mm</p>
	</li>
	<li>
	<p>Phương thức điều khiển</p>

	<p>Chạm cảm ứng</p>
	</li>
	<li>
	<p>H&atilde;ng sản xuất</p>

	<p>JBL</p>
	</li>
</ul>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 2, CAST(N'2023-11-14' AS Date), 1, 6, 3, 4, 54, 25000000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (6, N'Laptop Apple MacBook Air 13', 16000000.0000, 20, 8, N'<p>hi xin ch&agrave;o</p>
', N'<ul>
	<li>
	<p>Loại card đồ họa</p>

	<p>GPU 7 nh&acirc;n, 16 nh&acirc;n Neural Engine</p>
	</li>
	<li>
	<p>Dung lượng RAM</p>

	<p>8GB</p>
	</li>
	<li>
	<p>Loại RAM</p>

	<p>LPDDR4</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>256GB SSD</p>
	</li>
	<li>
	<p>K&iacute;ch thước m&agrave;n h&igrave;nh</p>

	<p>13.3 inches</p>
	</li>
	<li>
	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>

	<p>Độ s&aacute;ng 400 nits<br />
	Hỗ trợ dải m&agrave;u P3<br />
	True-Tone</p>
	</li>
	<li>
	<p>Pin</p>

	<p>49.9-watt lithium-polymer, củ sạc c&ocirc;ng suất 30W</p>
	</li>
	<li>
	<p>Hệ điều h&agrave;nh</p>

	<p>macOS Big Sur</p>
	</li>
	<li>
	<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</p>

	<p>2560 x 1600 pixels (2K)</p>
	</li>
	<li>
	<p>Cổng giao tiếp</p>

	<p>2 cổng Thunderbolt / USB 4</p>
	</li>
	<li>
	<p>T&iacute;nh năng kh&aacute;c</p>

	<p>Cảm biến v&acirc;n tay Touch ID, 720p FaceTime HD camera</p>
	</li>
</ul>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 3, CAST(N'2023-12-08' AS Date), 1, 7, 2, 2, 2, 20000000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (7, N'Apple MacBook Pro 13 M2 2022 16GB', 26400000.0000, 12, 28, N'<h2>ĐẶC ĐIỂM NỔI BẬT</h2>

<ul>
	<li>Hiệu năng vượt trội - Chip M2, 10 nh&acirc;n GPU xử l&yacute; tốt c&aacute;c Photoshop, Illustrator, Premiere, xử l&yacute; c&aacute;c video 4K</li>
	<li>16GB Ram, 256GB - Đa nhiệm tốt, mở c&ugrave;ng l&uacute;c tr&ecirc;n Safari hay nhiều ứng dụng</li>
	<li>Thiết kế mỏng nhẹ tinh tế - Vỏ kim loại, trọng lượng chỉ 1.4kg</li>
	<li>Trải nghiệm giải tr&iacute; cực đ&atilde; - M&agrave;n h&igrave;nh 13.3 inch, độ ph&acirc;n giải 2560 x 1600 cho chất lượng hiển thị cực r&otilde; r&agrave;ng</li>
</ul>
', N'<ul>
	<li>
	<p>Loại card đồ họa</p>

	<p>10 nh&acirc;n GPU</p>
	</li>
	<li>
	<p>Dung lượng RAM</p>

	<p>16GB</p>
	</li>
	<li>
	<p>Loại RAM</p>

	<p>16GB</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>256GB SSD</p>
	</li>
	<li>
	<p>K&iacute;ch thước m&agrave;n h&igrave;nh</p>

	<p>13 inches</p>
	</li>
	<li>
	<p>Pin</p>

	<p>58.2Whrs</p>
	</li>
	<li>
	<p>Hệ điều h&agrave;nh</p>

	<p>MacOS</p>
	</li>
	<li>
	<p>Cổng giao tiếp</p>

	<p>Cổng sạc<br />
	Cổng m&agrave;n h&igrave;nh<br />
	Thunderbolt 3 (l&ecirc;n đến 40Gb/s)<br />
	USB 4 (l&ecirc;n đến 40Gb/s)<br />
	USB 3.1 Gen 2 (l&ecirc;n đến 10Gb/s)<br />
	Cổng 3.5mm</p>
	</li>
</ul>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 6, CAST(N'2023-12-17' AS Date), 1, 8, 2, 2, 58, 30000000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (8, N'Samsung Galaxy Z Fold4 5G', 24640000.0000, 12, 22, N'<h3>Tại sự kiện Samsung Unpacked thường ni&ecirc;n,&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-z-fold4" target="_blank">Samsung Galaxy Z Fold4 256GB</a>&nbsp;ch&iacute;nh thức được tr&igrave;nh l&agrave;ng thị trường c&ocirc;ng nghệ, mang tr&ecirc;n m&igrave;nh nhiều cải tiến đ&aacute;ng gi&aacute; gi&uacute;p Galaxy Z Fold trở th&agrave;nh d&ograve;ng điện thoại gập đ&atilde; tốt nay c&agrave;ng tốt hơn.</h3>

<h3>Kiểu d&aacute;ng gập mở tinh tế tạo n&ecirc;n sự kh&aacute;c biệt</h3>

<p>Galaxy Z Fold4 (2022) ra mắt với ngoại h&igrave;nh gần như l&agrave; kh&ocirc;ng đổi khi so với&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-z-fold-3" target="_blank">Galaxy Z Fold3</a>, nếu bạn chỉ nh&igrave;n bề ngo&agrave;i th&igrave; bạn sẽ kh&oacute; l&ograve;ng ph&acirc;n biệt được 2 sản phẩm n&agrave;y. M&aacute;y vẫn sử dụng khung viền Armor Aluminum bền bỉ, mặt k&iacute;nh m&agrave;n h&igrave;nh phụ l&agrave; Corning Gorilla Glass Victus+, mặt k&iacute;nh m&agrave;n h&igrave;nh ch&iacute;nh l&agrave; Ultra Thin Glass.</p>

<p><a href="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-064950.jpg" onclick="return false;"><img alt="Tạo khác biệt với màn hình gập, mở - Samsung Galaxy Z Fold4 256GB" src="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-064950.jpg" /></a></p>

<p>V&agrave; đ&acirc;y cũng l&agrave; chiếc điện thoại gập bền bỉ nhất giới smartphone khi kết hợp với khả năng kh&aacute;ng nước chuẩn IPX8, c&oacute; khả năng ng&acirc;m trong nước ngọt ở độ s&acirc;u tới 1.5 m&eacute;t trong thời gian tối đa 30 ph&uacute;t* (m&aacute;y kh&ocirc;ng c&oacute; khả năng kh&aacute;ng bụi).</p>

<p><em>*Th&ocirc;ng tin h&atilde;ng Samsung cung cấp</em></p>

<p><a href="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-62.jpg" onclick="return false;"><img alt="Điện thoại kháng nước - Samsung Galaxy Z Fold4" src="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-62.jpg" /></a></p>

<p>Năm nay Z Fold4 c&oacute; thiết kế c&acirc;n bằng hơn, bản lề v&agrave; viền m&agrave;n h&igrave;nh được thiết kế mỏng hơn gi&uacute;p tổng thể ở m&agrave;n h&igrave;nh phụ của m&aacute;y rộng th&ecirc;m 2.7 mm v&agrave; m&agrave;n h&igrave;nh ch&iacute;nh rộng hơn 3 mm khi so với thế hệ tiền nhiệm. Tuy con số kh&ocirc;ng qu&aacute; lớn nhưng với trải nghiệm thực tế th&igrave; đ&acirc;y l&agrave; một thay đổi cực kỳ đ&aacute;ng gi&aacute; v&agrave; mang lại hiệu quả sử dụng cao.</p>

<p>Với k&iacute;ch thước m&agrave;n h&igrave;nh được tăng l&ecirc;n th&igrave; m&agrave;n h&igrave;nh phụ của Fold4 đ&atilde; dễ d&agrave;ng thao t&aacute;c v&agrave; g&otilde; văn bản hơn, kh&ocirc;ng c&ograve;n gặp t&igrave;nh trạng d&iacute;nh chữ như tr&ecirc;n thế hệ trước nữa. Với tỉ lệ m&agrave;n h&igrave;nh n&agrave;y th&igrave; n&oacute; vẫn cao hơn smartphone ngo&agrave;i thị thường một x&iacute;u.</p>

<p><a href="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-070512.jpg" onclick="return false;"><img alt="Màn hình phụ lớn hơn - Samsung Galaxy Z Fold4 256GB" src="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-070512.jpg" /></a></p>

<p><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">H&atilde;ng điện thoại Samsung</a>&nbsp;đ&atilde; thay đổi cấu tr&uacute;c phần bản lề tr&ecirc;n Fold4, điều n&agrave;y mang lại một cảm gi&aacute;c đ&oacute;ng - mở cứng c&aacute;p hơn. M&aacute;y c&oacute; thể linh hoạt gập - mở ở c&aacute;c g&oacute;c từ 75 độ đến 115 độ, cho bạn nhiều g&oacute;c độ sử dụng điện thoại hơn.</p>

<p><a href="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-260922-115021.jpg" onclick="return false;"><img alt="Thay đổi cấu trúc bản lề - Samsung Galaxy Z Fold4" src="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-260922-115021.jpg" /></a></p>

<p>Với khả năng gập mở linh hoạt n&agrave;y th&igrave; bạn c&oacute; thể đặt m&aacute;y tr&ecirc;n mặt phẳng để chụp ảnh với c&aacute;c g&oacute;c chụp s&aacute;ng tạo để quay TikTok hay l&agrave;m việc như một chiếc &quot;laptop mini&quot;.</p>

<p>Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/flex-mode-dien-thoai-man-hinh-gap-samsung-moi-1467788" target="_blank">Flex Mode tr&ecirc;n Galaxy Z Fold4 v&agrave; Z Flip4: Một xu hướng v&agrave; lối sống linh hoạt mới!</a></p>

<p><a href="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-69.jpg" onclick="return false;"><img alt="Flex Mode trên Samsung Galaxy Z Fold4" src="https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-69.jpg" /></a></p>

<h3>M&agrave;n h&igrave;nh cực đại, trải nghiệm cực đ&atilde;</h3>

<p>Samsung Galaxy Z Fold4 c&oacute; m&agrave;n h&igrave;nh phụ b&ecirc;n ngo&agrave;i k&iacute;ch thước 6.2 inch độ ph&acirc;n giải HD+. M&agrave;n h&igrave;nh ch&iacute;nh 7.6 inch hỗ trợ cơ chế gập, sử dụng c&ocirc;ng nghệ m&agrave;n h&igrave;nh Dynamic AMOLED 2X rực rỡ c&ugrave;ng một số c&ocirc;ng nghệ như hỗ trợ độ s&aacute;ng tối đa 1200 nits, tần số qu&eacute;t 120 Hz c&oacute; khả năng th&iacute;ch ứng t&ugrave;y thuộc v&agrave;o ứng dụng v&agrave; c&agrave;i đặt.</p>
', N'<p>M&agrave;n h&igrave;nh</p>

<ul>
	<li>
	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>

	<p><a href="https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-smartphone-1245213#hmenuid1" target="_blank">Dynamic AMOLED 2X</a></p>
	</li>
	<li>
	<p><a href="https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1">Độ ph&acirc;n giải:</a></p>

	<p>Ch&iacute;nh: QXGA+ (2176 x 1812 Pixels) &amp; Phụ: HD+ (2316 x 904 Pixels)</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh rộng:</p>

	<p>Ch&iacute;nh 7.6&quot; &amp; Phụ 6.2&quot; - Tần số qu&eacute;t&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tan-so-quet-man-hinh-may-tinh-la-gi-1292309#subhmenuid2" target="_blank">120 Hz</a></p>
	</li>
	<li>
	<p><a href="https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1">Độ s&aacute;ng tối đa:</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#subhmenuid4" target="_blank">1200 nits</a></p>
	</li>
	<li>
	<p>Mặt k&iacute;nh cảm ứng:</p>

	<p>Ch&iacute;nh: Ultra Thin Glass &amp; Phụ: Corning Gorilla Glass Victus+</p>
	</li>
</ul>

<p>Camera sau</p>

<ul>
	<li>
	<p><a href="https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722">Độ ph&acirc;n giải:</a></p>

	<p>Ch&iacute;nh 50 MP &amp; Phụ 12 MP, 10 MP</p>
	</li>
	<li>
	<p>Quay phim:</p>

	<p><a href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd" target="_blank">HD 720p@30fps</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd" target="_blank">FullHD 1080p@60fps</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd" target="_blank">FullHD 1080p@30fps</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k" target="_blank">4K 2160p@30fps</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k" target="_blank">4K 2160p@60fps</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#8k" target="_blank">8K 4320p@24fps</a></p>
	</li>
	<li>
	<p>Đ&egrave;n Flash:</p>

	<p><a href="https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-den-flash-tren-camera-dien-thoai-1143808" target="_blank">C&oacute;</a></p>
	</li>
	<li>
	<p>T&iacute;nh năng:</p>

	<p><a href="https://www.thegioididong.com/hoi-dap/che-do-quay-phim-time-lapse-la-gi-1172228#hmenuid1" target="_blank">Tr&ocirc;i nhanh thời gian (Time Lapse)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/camera-goc-rong-goc-sieu-rong-tren-smartphone-l-1172240" target="_blank">G&oacute;c si&ecirc;u rộng (Ultrawide)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/zoom-quang-hoc-va-zoom-ky-thuat-so-la-gi-co-gi-khac-nhau-1296828#zoom-ky-thuat-so" target="_blank">Zoom kỹ thuật số</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/camera-goc-rong-goc-sieu-rong-tren-smartphone-l-1172240" target="_blank">G&oacute;c rộng (Wide)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/che-do-quay-video-slow-motion-la-gi-luu-y-khi-quay-video-1013728" target="_blank">Quay chậm (Slow Motion)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/chup-anh-xoa-phong-la-gi-no-co-tac-dung-nhu-the-na-1138006" target="_blank">X&oacute;a ph&ocirc;ng</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/chup-anh-panorama-toan-canh-tren-camera-cua-smar-906425" target="_blank">To&agrave;n cảnh (Panorama)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/che-do-chong-rung-quang-hoc-ois-chup-anh-tren-sm-906416" target="_blank">Chống rung quang học (OIS)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/che-do-chup-dem-night-mode-la-gi-907873" target="_blank">Ban đ&ecirc;m (Night Mode)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/che-do-chup-anh-manual-mode-pro-tren-smartphone-906405" target="_blank">Chuy&ecirc;n nghiệp (Pro)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/zoom-quang-hoc-va-zoom-ky-thuat-so-la-gi-co-gi-khac-nhau-1296828#zoom-quang-hoc" target="_blank">Zoom quang học</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/quay-phim-sieu-cham-super-slow-motion-960fps-la-gi-1144253" target="_blank">Quay Si&ecirc;u chậm (Super Slow Motion)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/ai-camera-la-gi-co-tac-dung-gi-trong-may-anh-1169103" target="_blank">AI Camera</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/che-do-lam-dep-beautify-tren-smartphone-tablet-1172231" target="_blank">L&agrave;m đẹp</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/ar-stickers-la-gi-vi-sao-hang-nao-cung-ap-dung-ar-1096228" target="_blank">Nh&atilde;n d&aacute;n (AR Stickers)</a></p>

	<p>Live Photo</p>

	<p><a href="https://www.thegioididong.com/hoi-dap/chup-anh-hieu-ung-bokeh-la-gi-nhung-meo-huu-ich-1456471#hmenuid1" target="_blank">Hiệu ứng Bokeh</a></p>

	<p>Bộ lọc m&agrave;u</p>
	</li>
</ul>

<p>Camera trước</p>

<ul>
	<li>
	<p><a href="https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722">Độ ph&acirc;n giải:</a></p>

	<p>10 MP &amp; 4 MP</p>
	</li>
	<li>
	<p>T&iacute;nh năng:</p>

	<p><a href="https://www.thegioididong.com/tin-tuc/day-la-nhung-gi-ban-can-biet-ve-troi-nhanh-thoi-gian-1472026#Troinhanhthoigian" target="_blank">Tr&ocirc;i nhanh thời gian (Time Lapse)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/che-do-chup-dem-night-mode-la-gi-907873#hmenuid1" target="_blank">Chụp đ&ecirc;m</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/chuc-nang-nhan-dien-khuon-mat-la-gi-907903" target="_blank">Nhận diện khu&ocirc;n mặt</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/che-do-lam-dep-beautify-tren-smartphone-tablet-1172231" target="_blank">L&agrave;m đẹp</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-1174134#fullhd" target="_blank">Quay video Full HD</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/camera-goc-rong-goc-sieu-rong-tren-smartphone-l-1172240" target="_blank">G&oacute;c rộng (Wide)</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-1174134#hd" target="_blank">Quay video HD</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/flash-man-hinh-tren-camera-la-gi-925753" target="_blank">Flash m&agrave;n h&igrave;nh</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-1174134#4k" target="_blank">Quay video 4K</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/chup-anh-xoa-phong-la-gi-no-co-tac-dung-nhu-the-na-1138006" target="_blank">X&oacute;a ph&ocirc;ng</a></p>

	<p><a href="https://www.thegioididong.com/hoi-dap/che-do-quay-video-slow-motion-la-gi-luu-y-khi-quay-video-1013728" target="_blank">Quay chậm (Slow Motion)</a></p>

	<p>Live Photo</p>

	<p>Bộ lọc m&agrave;u</p>
	</li>
</ul>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 6, CAST(N'2023-11-15' AS Date), 1, 9, 1, 1, 21, 28000000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (24, N'Bàn phím Rapoo không dây V700-8A White Orange', 1588400.0000, 24, 14, N'<table border="1" cellpadding="1" cellspacing="1" style="width:500px">
	<caption>Cấu h&igrave;nh</caption>
	<tbody>
		<tr>
			<td>fasdf</td>
			<td>sdsdf</td>
		</tr>
		<tr>
			<td>s</td>
			<td>d</td>
		</tr>
		<tr>
			<td>s</td>
			<td>s</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
', N'<p><strong>Th&ocirc;ng số sản phẩm:</strong></p>

<p>&nbsp;</p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong>Thương hiệu</strong></td>
			<td>Rapoo</td>
		</tr>
		<tr>
			<td><strong>Layout</strong></td>
			<td>84 ph&iacute;m</td>
		</tr>
		<tr>
			<td><strong>Kết nối</strong></td>
			<td>Bluetooth 5.0/ Bluetooth 3.0/ Wireless 2.4 Ghz/ USB 2.0</td>
		</tr>
		<tr>
			<td><strong>Chiều d&agrave;i c&aacute;p</strong></td>
			<td>1.5m</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>4000 mAh - thời gian sử dụng l&ecirc;n đến 225 giờ khi tắt led</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc/Switch</strong></td>
			<td>Trắng Cam / Silver Switch</td>
		</tr>
		<tr>
			<td><strong>Loại Switch</strong></td>
			<td>Rapoo Switch</td>
		</tr>
		<tr>
			<td><strong>N-Key</strong></td>
			<td>N-Key tất cả ph&iacute;m khi chế độ d&acirc;y / 6 ph&iacute;m khi chế độ kh&ocirc;ng d&acirc;y</td>
		</tr>
		<tr>
			<td><strong>Chiếu s&aacute;ng nền</strong></td>
			<td>M&agrave;u Trắng Tiinh Khiết với 7 chế độ &aacute;nh s&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>310.1 x 120.2 x 35.5 mm</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 6, CAST(N'2023-12-14' AS Date), 1, 15, 4, 1, 21, 2090000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (28, N'iPhone 13 mini 128GB', 17592000.0000, 20, 12, N'<h2>ĐẶC ĐIỂM NỔI BẬT</h2>

<ul>
	<li>Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao</li>
	<li>Kh&ocirc;ng gian hiển thị sống động - M&agrave;n h&igrave;nh 5.4&quot; Super Retina XDR độ s&aacute;ng cao, sắc n&eacute;t</li>
	<li>Trải nghiệm điện ảnh đỉnh cao - Camera k&eacute;p 12MP, hỗ trợ ổn định h&igrave;nh ảnh quang học</li>
	<li>Tối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 ph&uacute;t</li>
</ul>

<p>Apple vừa tr&igrave;nh l&agrave;ng iPhone 13 mini c&ugrave;ng với 3 phi&ecirc;n bản kh&aacute;c l&agrave;&nbsp;<strong><a href="https://cellphones.com.vn/iphone-13-pro.html" target="_blank">iPhone 13 Pro</a></strong>&nbsp;v&agrave; 13 Pro Max c&ugrave;ng&nbsp;iPhone 13 thường tương tự năm ngo&aacute;i. Tuy nhi&ecirc;n d&ograve;ng sản phẩm mới năm nay c&oacute; nhiều n&acirc;ng cấp về cấu h&igrave;nh, camera, thiết kế lẫn m&agrave;u sắc.&nbsp;Như vậy, Apple đ&atilde; kh&ocirc;ng thay đổi số lượng phi&ecirc;n bản cũng như k&iacute;ch thước m&agrave;n h&igrave;nh của loạt điện thoại&nbsp;iPhone 13&nbsp;năm nay.&nbsp;</p>

<h2><strong>Đ&aacute;nh gi&aacute; iPhone 13 mini &ndash; Phi&ecirc;n bản thu nhỏ ho&agrave;n hảo của iPhone 13</strong></h2>

<p>Tương tự như iPhone 12 Series, iPhone 13 cũng sẽ được trang bị một phi&ecirc;n bản thu nhỏ mang t&ecirc;n iPhone 13 mini. Mẫu iPhone nhỏ gọn với nhiều cải tiến so với iPhone 12 mini tiền nhiệm.</p>

<h3><strong>Thiết kế nhỏ gọn, khung viền vu&ocirc;ng vắn</strong></h3>

<p>Về thiết kế b&ecirc;n ngo&agrave;i, iPhone 13 Mini sẽ kh&ocirc;ng c&oacute; qu&aacute; nhiều kh&aacute;c biệt với người tiền nhiệm. M&aacute;y vẫn được trang bị một thiết kế nhỏ nhắn, nằm gọn trong l&ograve;ng b&agrave;n tay. Khung viền tr&ecirc;n phi&ecirc;n bản iPhone n&agrave;y cũng vẫn được ho&agrave;n thiện vu&ocirc;ng vức với mặt trước trang bị k&iacute;nh Ceramic Shield v&agrave; mặt sau bằng nh&ocirc;m.</p>

<p><img alt="iPhone 13 mini" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone-13/iphone-13-mini-1.jpg" /></p>

<p>Điểm kh&aacute;c biệt lớn nhất về thiết kế phi&ecirc;n bản n&agrave;y đ&oacute; l&agrave; cụm camera. Thay v&igrave; đặt dọc như iPhone 12 mini, camera tr&ecirc;n iPhone 13 mini sẽ được thiết kế ch&eacute;o. Phần notch tai thỏ ph&iacute;a trước m&agrave;n h&igrave;nh cũng được thiết kế nhỏ gọn hơn.</p>

<h3><strong>M&agrave;n h&igrave;nh Super Retina XDR</strong></h3>

<p>Điểm n&acirc;ng cấp đầu ti&ecirc;n tr&ecirc;n iPhone 13 Mini đ&oacute; l&agrave; tần số m&agrave;n h&igrave;nh. Điện thoại iPhone 2021 mới n&agrave;y được n&acirc;ng cấp l&ecirc;n m&agrave;n h&igrave;nh Super Retina XDR nhờ đ&oacute; c&aacute;c thao t&aacute;c chạm, vuốt diễn ra mượt m&agrave;.</p>

<p><img alt="iPhone 13 mini" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone-13/iphone-13-mini-4.jpg" /></p>

<p>Về khả năng hiển thị, iPhone 13 Mini được trang bị m&agrave;n h&igrave;nh với độ ph&acirc;n giải c&ugrave;ng độ s&aacute;ng cao. Nhờ đ&oacute;&nbsp;<a href="https://cellphones.com.vn/mobile/apple/iphone-13.html" target="_blank"><strong>iPhone 13</strong></a>&nbsp;phi&ecirc;n bản Mini sẽ mang lại bức ảnh chụp ấn tượng cho người d&ugrave;ng.</p>

<h3><strong>Hiệu năng n&acirc;ng cấp với chip Apple A15 Bionic</strong></h3>

<p>Hiệu năng l&agrave; điểm n&acirc;ng cấp tr&ecirc;n mẫu iPhone n&agrave;y. Điện thoại sẽ được trang bị con chip Apple Apple A15 được gia c&ocirc;ng tr&ecirc;n tiến tr&igrave;nh t&acirc;n tiến. Nhờ con chip thế hệ mới n&agrave;y, iPhone 13 mini sẽ c&oacute; hiệu năng mạnh hơn 20% so với thế hệ iPhone 12 mini. Với cấu h&igrave;nh n&agrave;y, người d&ugrave;ng c&oacute; thể thoải m&aacute;i trải nghiệm lướt web, nghe nhạc, chơi game m&agrave; kh&ocirc;ng gặp t&igrave;nh trạng đơ, giật lag.</p>

<p><img alt="iPhone 13 mini" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone-13/iphone-13-mini-7.jpg" /></p>

<p>B&ecirc;n cạnh đ&oacute; l&agrave; dung lượng RAM c&ugrave;ng bộ nhớ trong 128GB ở phi&ecirc;n bản ti&ecirc;u chuẩn.</p>

<h3><strong>Dung lượng pin được cải thiện, hỗ trợ sạc nhanh</strong></h3>

<p>So với dung lượng 2.227 mAh của iPhone 12 Mini th&igrave; vi&ecirc;n pin tr&ecirc;n iPhone 13 mini được n&acirc;ng cấp. Kết hợp với con chip tiết kiệm năng lượng Apple A15 m&agrave; iPhone 13 mini mang lại thời gian sử dụng ổn định.</p>

<p><img alt="iPhone 13 mini" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone-13/iphone-13-mini-9.jpg" /></p>

<p>Ngo&agrave;i ra, thiết bị cũng vẫn sẽ được trang bị c&ocirc;ng nghệ sạc nhanh v&agrave; sạc nhanh kh&ocirc;ng d&acirc;y tiện dụng cho người d&ugrave;ng.</p>

<h3><strong>Camera cảm biến n&acirc;ng cấp</strong></h3>

<p>Điện thoại iPhone 13 mini được n&acirc;ng cấp về camera mang lại chất lượng chụp ảnh ấn tượng. Cụ thể, m&aacute;y sẽ được trang bị cảm biến n&acirc;ng cao, điều m&agrave; chỉ xuất hiện tr&ecirc;n iPhone 12 pro Max. Mặt sau m&aacute;y vẫn được trang bị camera k&eacute;p nhưng c&oacute; thay đổi trong thiết kế. Mặt trước vẫn l&agrave; camera đơn nằm trong notch tai thỏ.</p>

<p><img alt="iPhone 13 mini" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone-13/iphone-13-mini-6.jpg" /></p>

<h3><strong>Đa dạng sự lựa chọn với nhiều phi&ecirc;n bản m&agrave;u sắc</strong></h3>

<p>Tiếp tục kế thừa những g&igrave; đ&atilde; c&oacute; tr&ecirc;n iPhone 12 mini, iPhone 13 mini cũng sẽ được trang bị bộ sưu tập m&agrave;u sắc đa dạng. M&agrave;u sắc series iPhone 13 mini l&uacute;c n&agrave;y l&agrave; Đỏ, Xanh dương, Trắng, Hồng v&agrave; Đen. Với phi&ecirc;n bản m&agrave;u đa dạng, người d&ugrave;ng c&oacute; thể thoải m&aacute;i lựa chọn mẫu điện thoại theo sở th&iacute;ch v&agrave; c&aacute;c t&iacute;nh của bản th&acirc;n.</p>

<p><img alt="iPhone 13 mini" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone-13/iphone-13-mini-2.jpg" /></p>
', N'<h2>Th&ocirc;ng số kỹ thuật</h2>

<ul>
	<li>
	<p>K&iacute;ch thước m&agrave;n h&igrave;nh</p>

	<p>5.4 inches</p>
	</li>
	<li>
	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>

	<p><a href="https://cellphones.com.vn/sforum/man-hinh-oled" target="_blank">OLED</a></p>
	</li>
	<li>
	<p>Camera sau</p>

	<p>Camera g&oacute;c rộng: 12MP, f/1.6<br />
	Camera g&oacute;c si&ecirc;u rộng: 12MP, &fnof;/2.4</p>
	</li>
	<li>
	<p>Camera trước</p>

	<p>12MP, f/2.2</p>
	</li>
	<li>
	<p>Chipset</p>

	<p>Apple A15</p>
	</li>
	<li>
	<p>Dung lượng RAM</p>

	<p>4 GB</p>
	</li>
	<li>
	<p>Bộ nhớ trong</p>

	<p>128 GB</p>
	</li>
	<li>
	<p>Pin</p>

	<p>2,406mAh</p>
	</li>
	<li>
	<p>Thẻ SIM</p>

	<p>2 SIM (nano‑SIM v&agrave; eSIM)</p>
	</li>
	<li>
	<p>Hệ điều h&agrave;nh</p>

	<p>iOS15</p>
	</li>
	<li>
	<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</p>

	<p><a href="https://cellphones.com.vn/sforum/full-hd-la-gi" target="_blank">1080 x 2340 pixels (FullHD+)</a></p>
	</li>
	<li>
	<p>T&iacute;nh năng m&agrave;n h&igrave;nh</p>

	<p>M&agrave;n h&igrave;nh super Retina XDR, OLED, 476 ppi, HDR display, c&ocirc;ng nghệ True Tone Wide color (P3), Haptic Touch, Lớp phủ oleophobic chống b&aacute;m v&acirc;n tay</p>
	</li>
</ul>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 6, CAST(N'2023-12-15' AS Date), 1, 19, 1, 2, 5, 21990000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (30, N'LG XBOOM Go', 1897200.0000, 32, 20, N'<h2>Cảm nhận chất &acirc;m mạnh mẽ với LG XBOOM Go</h2>

<p>Trải nghiệm chất &acirc;m vượt trội của LG XBOOM Go với &acirc;m trầm s&acirc;u v&agrave; &acirc;m thanh mạnh mẽ c&ugrave;ng c&ocirc;ng nghệ &acirc;m thanh mới nhất của LG.</p>

<p><img alt="Loa LG XBOOM Go XG5 nhìn nghiêng, cho thấy loa trầm loại rãnh." src="https://www.lg.com/vn/images/sound-bar/md07560002/AV-XG5QBK-2022-Desktop-02-1-woofer-v1.jpg" /></p>

<h2>Loa trầm mang lại chất &acirc;m mạnh mẽ ho&agrave;n to&agrave;n mới</h2>

<p>Tận hưởng những bản nhạc y&ecirc;u th&iacute;ch của bạn với loa track woofer tạo &acirc;m trầm sắc n&eacute;t. Loa tạo ra &acirc;m thanh lớn đến kinh ngạc.</p>

<p><img alt="Cận cảnh loa trầm loại rãnh." src="https://www.lg.com/vn/images/sound-bar/md07560002/Features/AV-XG5QBK-2022-Desktop-02-2-20W.jpg" /></p>

<h2>&Acirc;m nhạc sống động với &acirc;m thanh 20W</h2>

<p>Với c&ocirc;ng suất đầu ra 20W mạnh mẽ, bạn sẽ lắc lư theo nhịp nhạc v&agrave; c&oacute; thể tận hưởng trải nghiệm &acirc;m thanh đỉnh cao mọi l&uacute;c, từ thiền định cho tiệc t&ugrave;ng với bạn b&egrave;.</p>

<p><img alt="Cận cảnh bên phải loa với đèn màu tím. Dưới loa là biểu đồ âm thanh." src="https://www.lg.com/vn/images/sound-bar/md07560002/Features/AV-XG5QBK-2022-Desktop-02-3-Bass.jpg" /></p>

<h2>Cảm nhận được &acirc;m trầm ngay cả ở &acirc;m lượng thấp</h2>

<p>Thuật to&aacute;n tăng cường &acirc;m trầm cho ph&eacute;p bạn nghe v&agrave; cảm nhận từng nốt trầm ri&ecirc;ng biệt, ngay cả khi bật nhạc nhỏ.</p>

<p>SOUND BOOST</p>

<h2>Tăng niềm vui với &acirc;m thanh mạnh mẽ hơn</h2>

<p>Chỉ cần một lần chọn chức năng Sound boost l&agrave; bạn c&oacute; thể mở rộng trường &acirc;m thanh v&agrave; tận hưởng &acirc;m nhạc với &acirc;m lượng lớn.</p>

<p><img alt="LG XBOOM GO XG5 đặt trên bàn. Nút tăng cường âm thanh được phóng to và các hiệu ứng sóng âm thanh phát ra dưới loa. Phát video." src="https://www.lg.com/vn/images/sound-bar/md07560002/Features/AV-XG5QBK-2022-Desktop-03-Soundboost.jpg" /></p>

<p><a href="https://www.lg.com/vn/loa-di-dong/lg-xg5qbk#none">Xem đầy đủ clip</a></p>

<h2>Mang lại m&agrave;u sắc cho từng bản nhạc</h2>

<p>Với c&aacute;c lựa chọn m&agrave;u được mở rộng l&ecirc;n đến 16 triệu, bạn c&oacute; thể chơi mọi bản nhạc với bất cứ m&agrave;u sắc n&agrave;o trong rải cầu vồng nhằm mang lại trải nghiệm &acirc;m nhạc phong ph&uacute; hơn.</p>

<p><img alt="Phát video." src="https://www.lg.com/vn/images/sound-bar/md07560002/Features/AV-XG5QBK-2022-Desktop-04-16Mcolor.jpg" /></p>

<p><a href="https://www.lg.com/vn/loa-di-dong/lg-xg5qbk#none">Xem đầy đủ clip</a></p>

<p><img alt="Phụ nữ tạo dáng trong ánh sáng đèn rực rỡ." src="https://www.lg.com/vn/images/sound-bar/md07560002/01AV-XG5QBK-2022-Desktop-05-Tunevibe.jpg" /></p>

<h2>Đồng bộ t&acirc;m trạng của bạn với chế độ &aacute;nh s&aacute;ng</h2>

<p>Mọi khoảnh khắc đều c&oacute; &acirc;m thanh v&agrave; m&agrave;u sắc. Trải nghiệm &aacute;nh s&aacute;ng v&agrave; &acirc;m nhạc ph&ugrave; hợp với t&acirc;m trạng trong ng&agrave;y của bạn tr&ecirc;n ứng dụng XBOOM.</p>

<p><img alt="LG XBOOM Go XG5 với đèn màu tím đặt trên sàn nhà. Phía trên loa hiển thị ba chế độ ánh sáng; môi trường, thiên nhiên, và tiệc tùng." src="https://www.lg.com/vn/images/sound-bar/md07560002/01AV-XG5QBK-2022-Desktop-06-Lightstudio.jpg" /></p>

<p><a href="https://www.lg.com/vn/loa-di-dong/lg-xg5qbk#none">Xem th&ecirc;m</a></p>

<p><img alt="Hội đoàn. Bên trái, nhìn cận cảnh LG XBOOM Go XG5. Cạnh đó là hình ảnh mọi người đang tận hưởng âm nhạc. Bên phải từ trên xuống dưới: cận cảnh loa với đèn màu hồng và hai chiếc cốc." src="https://www.lg.com/vn/images/sound-bar/md07560002/Features/AV-XG5QBK-2022-Desktop-08-Lifestyle.jpg" /></p>

<p><img alt="Hội đoàn. Bên trái, nhìn cận cảnh LG XBOOM Go XG5. Cạnh đó là hình ảnh một người đàn ông đang tập yoga, trên đệm có loa LG XBOOM Go XG5. Bên phải từ trên xuống dưới: cận cảnh loa với đèn màu hồng. Loa với đèn màu cam và ly nước chanh được để ở bể bơi." src="https://www.lg.com/vn/images/sound-bar/md07560002/Features/AV-XG5QBK-2022-Desktop-08-1-Lifestyle.jpg" /></p>

<p>IP67</p>

<h2>Y&ecirc;u th&iacute;ch những cuộc phi&ecirc;u lưu ngo&agrave;i trời</h2>

<p>LG XBOOM Go đ&atilde; sẵn s&agrave;ng hoạt động ngo&agrave;i trời. Với IP67, loa c&oacute; thể chống nước v&agrave; bụi, do đ&oacute; bạn kh&ocirc;ng bao giờ phải lo chuyện nhạc bị ngắt qu&atilde;ng.</p>
', N'<p>TH&Ocirc;NG TIN MẪU SẢN PHẨM</p>

<ul>
	<li>
	<p>T&ecirc;n mẫu m&aacute;y</p>

	<p>XG5QBK</p>

	<p>T&ecirc;n mẫu m&aacute;y của người mua</p>

	<p>XG5QBK</p>
	</li>
	<li>
	<p>T&ecirc;n t&igrave;m kiếm Bluetooth</p>

	<p>XG5Q</p>

	<p>Th&ocirc;ng tin Thương hiệu</p>

	<p>XBOOM Go</p>
	</li>
</ul>

<p>K&Iacute;CH THƯỚC(RỘNG X CAO X D&Agrave;Y, MM)</p>

<ul>
	<li>
	<p>K&iacute;ch thước (Rộng x Cao x D&agrave;y) mm</p>

	<p>222 x 83 x 80</p>
	</li>
</ul>

<p>TRỌNG LƯỢNG(KG)</p>

<ul>
	<li>
	<p>Trọng lượng thuần (kg)</p>

	<p>0,7kg</p>

	<p>Tổng trọng lượng (kg)</p>

	<p>1.4</p>
	</li>
	<li>
	<p>(Thuần 300g)</p>

	<p>Tip on</p>
	</li>
</ul>

<p>TH&Ugrave;NG CARTON</p>

<ul>
	<li>
	<p>K&iacute;ch thước hộp carton (Rộng x Cao x D&agrave;y) mm</p>

	<p>278 x 124 x 128</p>

	<p>Loại</p>

	<p>Loại b&igrave;nh thường</p>
	</li>
</ul>

<p>SỐ LƯỢNG TH&Ugrave;NG CHỨA</p>

<ul>
	<li>
	<p>20ft</p>

	<p>3640</p>

	<p>40ft</p>

	<p>8400</p>
	</li>
	<li>
	<p>40ft (HC)</p>

	<p>10080</p>
	</li>
</ul>

<p>K&Ecirc;NH</p>

<ul>
	<li>
	<p>Số k&ecirc;nh</p>

	<p>1ch (1Way)</p>
	</li>
</ul>

<p>C&Ocirc;NG SUẤT ĐẦU RA</p>

<ul>
	<li>
	<p>C&ocirc;ng suất đầu ra</p>

	<p>20W</p>
	</li>
</ul>

<p>KẾT NỐI - CHUNG</p>

<ul>
	<li>
	<p>Aux in (3.5)</p>

	<p>C&oacute;</p>
	</li>
</ul>

<p>NGUỒN</p>

<ul>
	<li>
	<p>USB-C (C&aacute;i)</p>

	<p>C&oacute;</p>
	</li>
</ul>

<p>TH&Ocirc;NG TIN HIỂN THỊ</p>

<ul>
	<li>
	<p>Loại m&agrave;n h&igrave;nh</p>

	<p>Đ&egrave;n b&aacute;o LED<br />
	(Bluetooth, Bật nguồn, Pin, EQ)</p>
	</li>
</ul>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 6, CAST(N'2023-12-17' AS Date), 1, 21, 3, 8, 12, 2790000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (31, N'Loa Bluetooth JBL Authentics 200', 8490000.0000, NULL, 32, N'<h2>ĐẶC ĐIỂM NỔI BẬT</h2>

<ul>
	<li>C&ocirc;ng nghệ &acirc;m thanh nổi với chất lượng ho&agrave;n hảo, c&acirc;n mọi thể loại nhạc</li>
	<li>Trang bị c&ocirc;ng suất lớn đến 90W, lắp đầy &acirc;m thanh cho ng&ocirc;i nh&agrave; của bạn</li>
	<li>Thiết kế lấy cảm hứng cổ điển, t&ocirc; điểm vẻ sang trọng cho mọi kh&ocirc;ng gian</li>
	<li>Kết nối WiFi gi&uacute;p loa nhận được bản cập nhật t&iacute;nh năng, phần mềm tự động</li>
</ul>

<p><strong>Loa JBL Authentics 200</strong>&nbsp;nổi trội với hệ thống &acirc;m thanh nổi 2.0 mạnh mẽ cung cấp tổng c&ocirc;ng suất loa ph&aacute;t ra l&ecirc;n đến 90W, đảm bảo chất &acirc;m mạnh mẽ v&agrave; r&otilde; r&agrave;ng. B&ecirc;n cạnh đ&oacute;, thế hệ loa JBL n&agrave;y c&ograve;n được t&iacute;ch hợp loa tweeter 2 x 25mm v&agrave; loa trầm 5&rsquo;&rsquo;, mang lại khả năng t&aacute;i tạo &acirc;m thanh chất lượng cao. Đặc biệt, d&ograve;ng&nbsp;<a href="https://cellphones.com.vn/thiet-bi-am-thanh/loa/jbl.html" target="_blank"><strong>loa JBL</strong></a>&nbsp;n&agrave;y kh&aacute; nhỏ gọn về mặt k&iacute;ch thước với trọng lượng chỉ 3,12 kg, dễ d&agrave;ng ph&ugrave; hợp để b&agrave;i tr&iacute; tại mọi kh&ocirc;ng gian trong nh&agrave;.</p>

<h2><strong>Loa JBL Authentics 200 - Thiết kế sang trọng, chất &acirc;m l&ocirc;i cuốn</strong></h2>

<p>Loa JBL Authentics 200 được mệnh danh l&agrave; một thiết bị &acirc;m thanh đỉnh cao tới từ nh&agrave; JBL khi sở hữu chất lượng &acirc;m thanh xuất sắc c&ugrave;ng thiết kế đẳng cấp, sang trọng. Kết hợp với đ&oacute; l&agrave; c&ocirc;ng suất mạnh mẽ v&agrave; t&iacute;nh năng kết nối đa dạng, mang đến trải nghiệm &acirc;m nhạc tuyệt vời tại mọi kh&ocirc;ng gian.</p>

<h3><strong>C&ocirc;ng suất 90W mạnh mẽ, chất &acirc;m cuốn h&uacute;t</strong></h3>

<p>JBL Authentics 200 được đ&aacute;nh gi&aacute; l&agrave; sự lựa chọn ho&agrave;n hảo m&agrave; những người y&ecirc;u th&iacute;ch &acirc;m nhạc kh&ocirc;ng n&ecirc;n bỏ qua. Cụ thể, loa sở hữu c&ocirc;ng suất l&ecirc;n đến 90W, đem tới chất &acirc;m mạnh mẽ v&agrave; r&otilde; r&agrave;ng, phục vụ mọi nhu cầu giải tr&iacute; của  người sử dụng.</p>

<p><img alt="Công suất JBL Authentics 200" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Loa/JBL/loa-jbl-authentics-200-2.jpg" /></p>

<p>K&egrave;m theo đ&oacute; l&agrave; hệ thống &acirc;m thanh nổi 2.0 với loa tweeter 25mm v&agrave; loa trầm 5&rsquo;&rsquo;, cung cấp trải nghiệm &acirc;m nhạc tuyệt vời, từ &acirc;m cao sắc n&eacute;t cho tới &acirc;m trầm mạnh mẽ. Qua đ&oacute;, n&oacute; gi&uacute;p t&aacute;i hiện &acirc;m thanh chất lượng cao v&agrave; độ chi tiết tuyệt vời.</p>

<p>&gt;&gt;&gt; Xem th&ecirc;m Loa&nbsp;<strong><a href="https://cellphones.com.vn/loa-jbl-authentics-300.html" target="_blank">JBL Authentics 300</a></strong>&nbsp;mới đang sở hữu mức gi&aacute; kh&aacute; tốt.</p>

<h3><strong>T&iacute;ch hợp c&ocirc;ng nghệ Dolby Atmos, &acirc;m thanh 3D</strong></h3>

<p><strong>Loa JBL Authentics 200</strong>&nbsp;l&agrave; một sản phẩm c&ograve;n được t&iacute;ch hợp c&ocirc;ng nghệ Dolby Atmos, mang lại trải nghiệm &acirc;m thanh 3D sống động. C&ocirc;ng nghệ n&agrave;y tạo ra &acirc;m thanh v&ograve;m 3D, gi&uacute;p bạn cảm nhận &acirc;m thanh xung quanh m&igrave;nh như trong một rạp chiếu phim hoặc ph&ograve;ng h&ograve;a nhạc.</p>

<p><img alt="Âm thanh loa JBL Authentics 200" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Loa/JBL/loa-jbl-authentics-200-11.jpg" /></p>

<p>Để tận hưởng &acirc;m thanh 3D với loa, bạn cần nguồn ph&aacute;t nhạc hỗ trợ Dolby Atmos. Khi bạn ph&aacute;t nhạc hoặc xem phim hỗ trợ Dolby Atmos tr&ecirc;n loa JBL Authentics 200, &acirc;m thanh sẽ xuất hiện từ nhiều hướng kh&aacute;c nhau, tạo ra một kh&ocirc;ng gian &acirc;m thanh đa chiều, ch&acirc;n thực.</p>

<h3><strong>Tạo h&igrave;nh sang trọng, ph&ugrave; hợp để b&agrave;i tr&iacute; tại mọi kh&ocirc;ng gian&nbsp;</strong></h3>

<p>B&ecirc;n cạnh c&ocirc;ng suất v&agrave; hệ thống loa nổi cao cấp th&igrave; loa Authentics 200 cũng thu h&uacute;t được nhiều sự ch&uacute; &yacute; của người d&ugrave;ng với k&iacute;ch thước kh&aacute; nhỏ gọn 266.3 x 171.7 x 167.4mm v&agrave; trọng lượng chỉ 3.12kg. Th&ocirc;ng số n&agrave;y của loa cho ph&eacute;p người d&ugrave;ng c&oacute; thể dễ d&agrave;ng bố tr&iacute; trong nhiều kh&ocirc;ng gian kh&aacute;c nhau m&agrave; kh&ocirc;ng hề g&acirc;y cản trở.</p>

<p><img alt="Thiết kế JBL Authentics 200" src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:80/plain/https://cellphones.com.vn/media/wysiwyg/Loa/JBL/loa-jbl-authentics-200-1.jpg" /></p>

<p>Thiết kế của loa đậm chất cổ điển, lấy cảm hứng từ phong c&aacute;ch retro thập ni&ecirc;n 70, tạo n&ecirc;n một ngoại h&igrave;nh sang trọng, đ&uacute;ng với biểu tượng JBL truyền thống.&nbsp;</p>
', N'<ul>
	<li>
	<p>C&ocirc;ng suất</p>

	<p>90W</p>
	</li>
	<li>
	<p>C&ocirc;ng nghệ &acirc;m thanh</p>

	<p>&Acirc;m thanh nổi 2.0</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>T&iacute;nh năng kh&aacute;c</p>

	<p>T&iacute;ch hợp WiFi</p>
	</li>
	<li>
	<p>Cổng kết nối</p>

	<p>Cổng 3.5mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>3.12 kg</p>
	</li>
	<li>
	<p>H&atilde;ng sản xuất</p>

	<p>JBL</p>
	</li>
	<li>
	<p>Phạm vi kết nối</p>

	<p>10 m</p>
	</li>
</ul>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 12, CAST(N'2023-12-17' AS Date), 1, 22, 3, 4, 4, 8490000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (34, N'Bàn phím Logitech G512 GX RGB Tactile', 23992000.0000, 20, 15, N'<p><a href="https://gearvn.com/pages/ban-phim-may-tinh" target="_blank">B&agrave;n ph&iacute;m cơ</a>&nbsp;gi&aacute; rẻ&nbsp;Logitech G512 GX&nbsp;được thiết kế hướng đến hiệu suất v&agrave; t&iacute;ch hợp c&ocirc;ng nghệ chơi game&nbsp;mạnh mẽ. Từ c&aacute;c chi tiết tinh tế nhất như kết cấu mờ phủ v&acirc;n tay v&agrave; d&acirc;y c&aacute;p&nbsp;c&oacute; độ bền cao, tới chi tiết phức tạp nhất, mỗi kh&iacute;a cạnh được thiết kế ch&iacute;nh x&aacute;c bởi&nbsp;c&ocirc;ng nghệ dẫn đầu ng&agrave;nh của Logitech G c&ugrave;ng chất lượng v&agrave;o kiểu d&aacute;ng được chế&nbsp;tạo độc đ&aacute;o.</p>

<h3><strong>Sự vượt trội của Logitech G512 GX</strong></h3>

<p>B&agrave;n ph&iacute;m gaming&nbsp;<strong>Logitech G512</strong>&nbsp;l&agrave; một trong những d&ograve;ng&nbsp;<a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank">b&agrave;n ph&iacute;m</a>&nbsp;chơi game mang đến hiệu suất cao c&oacute; bao gồm lựa chọn c&aacute;c ph&iacute;m switch cơ học GX n&acirc;ng cao của bạn. C&ocirc;ng nghệ ti&ecirc;n tiến c&ugrave;ng cấu tr&uacute;c hợp kim nh&ocirc;m khiến cho mẫu b&agrave;n ph&iacute;m n&agrave;y trở n&ecirc;n đơn giản, bền v&agrave; đầy đủ t&iacute;nh năng.</p>

<p><img alt="GEARVN.COM Bàn phím Logitech G512 GX RGB (Tactile/Linear)" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-logitech-g512-gx-rgb_70f44945540e4122954dca4b235bec44.png" /></p>

<h3><strong>Thoải m&aacute;i t&ugrave;y chỉnh với 16.8 triệu m&agrave;u RGB</strong></h3>

<p>B&agrave;n ph&iacute;m cơ&nbsp;Logitech G512&nbsp;GX RGB c&oacute; thể được t&ugrave;y chỉnh mỗi ph&iacute;m với khoảng 16,8 triệu m&agrave;u RGB.</p>

<p>Với c&ocirc;ng nghệ LIGHTSYNC, người d&ugrave;ng c&oacute; thể t&ugrave;y chỉnh chức năng chiếu s&aacute;ng được lấy cảm hứng từ tr&ograve; chơi, &acirc;m thanh hoặc m&agrave;n h&igrave;nh để đem lại trải nghiệm RGB đắm ch&igrave;m hơn bao giờ hết khi kết hợp c&ugrave;ng&nbsp;<a href="https://gearvn.com/pages/chuot-may-tinh" target="_blank">chuột m&aacute;y t&iacute;nh</a>, tai nghe gaming,....</p>

<p><img alt="GEARVN.COM Bàn phím Logitech G512 GX RGB (Tactile/Linear)" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-logitech-g512-gx-rgb-1_bd536b236ecf4f4da601fb7d22beaa5f.png" /></p>

<h3><strong>Hiệu suất chất lượng từ switch GX</strong></h3>

<p>C&aacute;c ph&iacute;m switch cơ học GX n&acirc;ng cao - được thiết kế v&agrave; thử nghiệm 100% cho hiệu suất, phản hồi v&agrave; độ bền. Chọn từ 3 ph&iacute;m switch ri&ecirc;ng - GX Blue (ph&aacute;t ra tiếng l&aacute;ch c&aacute;ch), GX Brown (trực quan), GX Red (ph&iacute;m thấp).</p>

<p><img alt="GEARVN.COM Bàn phím Logitech G512 GX RGB (Tactile/Linear)" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-logitech-g512-gx-rgb-2_3a6c478cf4484cbb9ea6c2422508109e.png" /></p>

<h3><strong>Tiện lợi trong việc sử dụng</strong></h3>

<p>Một trong những d&ograve;ng b&agrave;n ph&iacute;m cơ gi&aacute; rẻ mang đến sự thuận tiện v&agrave; tốc độ nằm ngay trong tầm tay. C&aacute;p USB bổ sung, d&agrave;nh ri&ecirc;ng kết nối cổng truyền nhận qua USB với thiết bị đầu v&agrave;o cho ph&eacute;p truyền điện năng đầy đủ v&agrave; tốc độ truyền dữ liệu. Cắm thiết bị để sạc hoặc cắm d&acirc;y chuột để tấn c&ocirc;ng đối thủ, m&agrave; kh&ocirc;ng bỏ lỡ một nhịp n&agrave;o.</p>

<p><img alt="GEARVN.COM Bàn phím Logitech G512 GX RGB (Tactile/Linear)" src="https://file.hstatic.net/1000026716/file/gearvn-ban-phim-logitech-g512-gx-rgb-3_18635c4c36b14e5281eb51684f5086c4.png" /></p>

<p>C&aacute;c n&uacute;t điều khiển phương tiện v&agrave; chiếu s&aacute;ng ở ngay trong tầm tay bạn. Sử dụng ph&iacute;m FN để điều khiển &acirc;m lượng, ph&aacute;t v&agrave; tạm dừng, tắt tiếng, chuyển chế độ chơi game, thay đổi hiệu ứng chiếu s&aacute;ng v.v... Sử dụng t&iacute;nh năng bật/tắt ph&iacute;m FN trong HUB G của Logitech v&agrave; định cấu h&igrave;nh c&aacute;c ph&iacute;m chức năng để mặc định thực hiện c&aacute;c lệnh alt n&agrave;y.</p>
', N'<h2>Th&ocirc;ng tin sản phẩm</h2>

<p>&nbsp;</p>

<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>

<p>&nbsp;</p>

<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><strong>H&atilde;ng sản xuất:</strong></td>
			<td>Logitech</td>
		</tr>
		<tr>
			<td><strong>Model:</strong></td>
			<td><a href="https://gearvn.com/collections/logitech-g512-series">G512</a>&nbsp;GX</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u:</strong></td>
			<td>Đen</td>
		</tr>
		<tr>
			<td><strong>Switch:</strong></td>
			<td>GX Brown (Tactile)/ GX Red (Linear)</td>
		</tr>
		<tr>
			<td><strong>Loại kết nối:&nbsp;</strong></td>
			<td>USB 2.0</td>
		</tr>
		<tr>
			<td><strong>Giao thức USB:</strong></td>
			<td>USB 2.0</td>
		</tr>
		<tr>
			<td><strong>Cổng USB (T&iacute;ch hợp):</strong></td>
			<td>2.0</td>
		</tr>
		<tr>
			<td><strong>Led:</strong></td>
			<td>RGB</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước:</strong></td>
			<td>132 x&nbsp;445 x&nbsp;35,5 mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng (kh&ocirc;ng t&iacute;nh d&acirc;y):&nbsp;</strong></td>
			<td>1130 g</td>
		</tr>
		<tr>
			<td><strong>Độ d&agrave;i d&acirc;y c&aacute;p:</strong></td>
			<td>1,8 m</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>C&aacute;c ph&iacute;m đặt biệt:</strong></p>
			</td>
			<td>
			<ul>
				<li>Điều khiển &aacute;nh s&aacute;ng: FN+F5/F6/F7</li>
				<li>Chế độ chơi game: FN+F8</li>
				<li>Điều khiển phương tiện: FN+F9/F10/F11/F12</li>
				<li>Điều khiển &acirc;m lượng: FN+ PRTSC/SCRLK/PAUSE</li>
				<li>C&aacute;c ph&iacute;m FN c&oacute; thể lập tr&igrave;nh qua HUB G của Logitech</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 12, CAST(N'2023-12-19' AS Date), 1, 25, 4, 7, 0, 29990000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (36, N'Chuột Logitech G Pro X Superlight 2 Magenta', 2861100.0000, 1, 40, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;chuột Logitech G Pro X Superlight Wireless Pink</strong></h2>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink_cb96834fcb4545649e5272e1d928017f_grande.png" /></p>

<p>&nbsp;</p>

<p>Chuột Logitech G Pro X Superlight Wireless&nbsp;l&agrave; một trong những d&ograve;ng&nbsp;<a href="https://gearvn.com/collections/gaming-mouse">chuột chơi game</a>&nbsp;nhẹ nhất từ trước tới nay của Logitech, Logitech G Pro X Superlight Wireless White l&agrave; bước đột ph&aacute; về kỹ thuật khi đạt được trọng lượng &iacute;t hơn 63 gram &ndash; nhẹ hơn gần 25% so với chuột PRO kh&ocirc;ng d&acirc;y ti&ecirc;u chuẩn của Logitech.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Với c&ocirc;ng nghệ kh&ocirc;ng d&acirc;y LIGHTSPEED 2,4 GHz đ&aacute;p ứng để chơi game kh&ocirc;ng bị gi&aacute;n đoạn v&agrave; thời lượng pin l&ecirc;n đến 70 giờ.&nbsp;Chuột mới c&oacute; c&aacute;c ch&acirc;n PTFE lớn, kh&ocirc;ng phụ gia, cho trải nghiệm ma s&aacute;t thấp mang lại độ ch&iacute;nh x&aacute;c, tốc độ v&agrave; khả năng cơ động v&ocirc; song.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink-3_e56c39e0399d4bd6baee214978c7b12b_grande.png" /></p>

<p>&nbsp;</p>

<p>G Pro X Superlight Wireless Pink l&agrave; một trong những d&ograve;ng&nbsp;<a href="https://gearvn.com/collections/chuot-logitech" target="_blank">chuột Logitech</a>&nbsp;sở hữu mắt cảm biến HERO 25K độc quyền của Logitech G đem lại độ ch&iacute;nh x&aacute;c, tốc độ v&agrave; độ ổn định. Với độ ch&iacute;nh x&aacute;c cao v&agrave; khả năng điều khiển cực tốt điều đ&oacute; sẽ hỗ trợ v&agrave; mang đến cho người d&ugrave;ng ho&agrave;n to&agrave;n tự tin, đặc biệt l&agrave; trong những thời khắc căng thẳng, k&eacute;o d&agrave;i từng gi&acirc;y của trận đấu.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink-1_478b01424d5b41eb98b84bd203a58448_grande.png" /></p>

<p>&nbsp;</p>

<p>Phần nam ch&acirc;m n&agrave;y cũng được gọi l&agrave; nơi để giữ USB &nbsp;v&agrave; bạn có th&ecirc;̉ thay đ&ocirc;̉i 2 cục nam ch&acirc;m này với nhau mà kh&ocirc;ng lo bị thay đ&ocirc;̉i về trọng lượng. V&ecirc;̀ ph&acirc;̀n mắt cảm bi&ecirc;́n v&acirc;̃n giữ nguy&ecirc;n với mắt đọc Hero xịn xò từ 100 DPI l&ecirc;n đ&ecirc;́n 25600 DPI. Phần thời gian sử dụng của G Pro X Superlight cũng sẽ giống với pin của phi&ecirc;n bản Pro cũ khoảng 70 giờ d&ugrave;ng.</p>

<p>Một trong những d&ograve;ng&nbsp;<a href="https://gearvn.com/collections/chuot-wireless" target="_blank">chuột&nbsp;kh&ocirc;ng d&acirc;y</a>&nbsp;c&oacute; ch&acirc;n lớn bằng nhựa tổng hợp PTFE kh&ocirc;ng pha tạp mang lại cảm gi&aacute;c lướt &ecirc;m &aacute;i, đem đến kết nối tinh thuần, mượt m&agrave; với tr&ograve; chơi.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink-2_7b35885c02444287b406f2e1fdba9355_grande.png" /></p>

<p>&nbsp;</p>

<p>Ngo&agrave;i ra th&igrave; G Pro X Superlight pink cũng sử dụng phần mềm G-Hub như c&aacute;c chuột Logitech kh&aacute;c, rất quen thuộc v&agrave; dễ d&agrave;ng sử dụng để đồng v&agrave; tinh chỉnh với c&aacute;c thiết bị như&nbsp;<a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank">b&agrave;n ph&iacute;m</a>, tai nghe đến từ h&atilde;ng sản xuất.</p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td>H&atilde;ng sản xuất:</td>
			<td>Logitech</td>
		</tr>
		<tr>
			<td>Model:</td>
			<td>G Pro X Superlight Wireless Pink</td>
		</tr>
		<tr>
			<td>M&agrave;u:</td>
			<td>Pink</td>
		</tr>
		<tr>
			<td>Tần suất gửi t&iacute;n hiệu USB:</td>
			<td>1000 Hz (1ms)</td>
		</tr>
		<tr>
			<td>Bộ vi xử l&yacute;:</td>
			<td>32-bit ARM</td>
		</tr>
		<tr>
			<td>Chuyển động li&ecirc;n tục:</td>
			<td>70h</td>
		</tr>
		<tr>
			<td>Tương th&iacute;ch:</td>
			<td>POWERPLAY</td>
		</tr>
		<tr>
			<td>C&ocirc;ng nghệ kh&ocirc;ng d&acirc;y:</td>
			<td>LIGHTSPEED</td>
		</tr>
		<tr>
			<td>Ch&acirc;n:</td>
			<td>Nhựa PTFE kh&ocirc;ng pha tạp</td>
		</tr>
		<tr>
			<td>
			<p>N&uacute;t:</p>
			</td>
			<td>
			<p>5 n&uacute;t</p>
			</td>
		</tr>
		<tr>
			<td>Cảm biến:</td>
			<td>HERO</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải:</td>
			<td>100 &ndash; 25.400 DPI</td>
		</tr>
		<tr>
			<td>Tăng tốc tối đa:&nbsp;</td>
			<td>&gt; 40 G</td>
		</tr>
		<tr>
			<td>Tốc độ tối đa:</td>
			<td>&gt; 400 IPS&nbsp;</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước:</td>
			<td>125,0 x&nbsp;63,5 x&nbsp;40,0 mm</td>
		</tr>
		<tr>
			<td>Trọng lượng:</td>
			<td>&lt; 63 g</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 27, 9, 7, 0, 2890000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (37, N'Laptop Dell Inspiron 15 N3530 I3U085W11BLU', 14396200.0000, 2, 45, N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank"><strong>CPU</strong></a></td>
			<td>Intel Core i3-1305U up to 5.0 GHz, 5 Cores 6 Threads, 10MB Cache</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ram-laptop" target="_blank">RAM</a></strong></td>
			<td>8GB (1 x 8GB) DDR4 2666MHz (2x SO-DIMM socket, up to 16GB SDRAM)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/hdd-o-cung-laptop" target="_blank"><strong>Ổ cứng</strong></a></td>
			<td>512GB&nbsp;<a href="https://gearvn.com/collections/ssd-o-cung-the-ran" target="_blank">SSD</a>&nbsp;NVMe PCIe (1 Slot)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/vga-card-man-hinh" target="_blank"><strong>Card đồ họa</strong></a></td>
			<td>Intel UHD Graphics</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/pages/man-hinh" target="_blank"><strong>M&agrave;n h&igrave;nh</strong></a></td>
			<td>15.6 Inch FHD (1920 x 1080),120Hz, Anti- Glare, WVA, LED-Backlit, Độ s&aacute;ng 250 nit</td>
		</tr>
		<tr>
			<td><strong>Cổng giao tiếp</strong></td>
			<td>
			<ul>
				<li>1 x USB 3.2 Gen 1 Type-C&reg; port&nbsp;</li>
				<li>1 x&nbsp;USB 3.2 Gen 1 Type-A ports (on systems configured with non Type-C&reg;)</li>
				<li>1 USB 2.0 port</li>
				<li>1 headset (headphone and microphone combo) port</li>
				<li>1 HDMI 1.4 port</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank"><strong>B&agrave;n ph&iacute;m</strong></a></td>
			<td>C&oacute; ph&iacute;m số, kh&ocirc;ng LED</td>
		</tr>
		<tr>
			<td><strong>Wireless</strong></td>
			<td>WiFi 802.11ax (Wifi 6)</td>
		</tr>
		<tr>
			<td><strong>LAN</strong></td>
			<td>10/100 Mbps</td>
		</tr>
		<tr>
			<td><strong>Bluetooth</strong></td>
			<td>v5.2</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/webcam" target="_blank"><strong>Webcam</strong></a></td>
			<td>HD Webcam</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>Realtek ALC3204, &acirc;m thanh Realtek</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>3-cell Li-ion, 41 Whr</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home SL + Office Home &amp; Student 2021</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>358.5 x 235.56 x 16.96 mm - 18.99mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>1.60 kg</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Silver</td>
		</tr>
	</tbody>
</table>
', N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop Dell Inspiron 15 N3530 I3U085W11BLU</strong></h2>

<p>Trong thế giới đa dạng của c&aacute;c d&ograve;ng laptop Dell,&nbsp;<strong><a href="https://gearvn.com/collections/laptop-dell-inspiron-series" target="_blank">Dell Inspiron</a></strong>&nbsp;15 N3530 I3U085W11BLU nổi bật l&agrave; một người bạn đồng h&agrave;nh độc đ&aacute;o, linh hoạt v&agrave; mạnh mẽ. Được x&acirc;y dựng để đ&aacute;p ứng đa dạng nhu cầu sử dụng, từ học tập đến c&ocirc;ng việc h&agrave;ng ng&agrave;y, chiếc laptop n&agrave;y kh&ocirc;ng chỉ nổi bật với cấu h&igrave;nh mạnh mẽ m&agrave; c&ograve;n ghi điểm bởi thiết kế đơn giản v&agrave; hiệu suất ổn định.</p>

<h3><strong>Cấu h&igrave;nh ấn tượng</strong></h3>

<p>Cấu h&igrave;nh ấn tượng của Dell Inspiron 15 N3530 l&agrave; một điểm nổi bật đ&aacute;ng ch&uacute; &yacute;. Sử dụng bộ vi xử l&yacute; Intel Core i3-1305U gen 13, m&aacute;y mang đến sức mạnh đ&aacute;ng kể để xử l&yacute; mọi t&aacute;c vụ văn ph&ograve;ng một c&aacute;ch trơn tru v&agrave; mượt m&agrave;. Điều n&agrave;y c&agrave;ng được củng cố bởi 8GB RAM DDR4, gi&uacute;p tăng cường hiệu suất CPU v&agrave; hỗ trợ việc thực hiện nhiều t&aacute;c vụ c&ugrave;ng l&uacute;c một c&aacute;ch mạnh mẽ. Khả năng lưu trữ đ&aacute;ng kinh ngạc của ổ SSD 512GB giải quyết mọi vấn đề về lưu trữ, đồng thời card đồ họa Intel&reg; UHD Graphics gi&uacute;p tối ưu h&oacute;a trải nghiệm khi sử dụng c&aacute;c ứng dụng đồ họa nặng.</p>

<p><img alt="GEARVN Laptop Dell Inspiron 15 N3530 I3U085W11BLU" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-dell-inspiron-15-n3530-i3u085w11blu-3_f8f0fbf1bf9940c1b59e5ef74a336554_1024x1024.png" /></p>

<blockquote>
<p><strong>&gt;&gt;Xem th&ecirc;m:&nbsp;<a href="https://gearvn.com/blogs/thu-thuat-giai-dap/top-5-laptop-gia-re-cho-sinh-vien-mua-tuu-truong" target="_blank">5 mẫu laptop gi&aacute; rẻ cho sinh vi&ecirc;n m&ugrave;a tựu trường 2022</a>.</strong></p>
</blockquote>

<h3><strong>Thiết kế Dell Inspiron 15 đơn giản, thu h&uacute;t</strong></h3>

<p><a href="https://gearvn.com/collections/laptop-dell-hoc-tap-va-lam-viec" target="_blank">Laptop Dell</a>&nbsp;Inspiron 15 được h&atilde;ng sản xuất v&ocirc; c&ugrave;ng đơn giản nhưng lại v&ocirc; c&ugrave;ng bền bỉ. Với những người đ&atilde; sở hữu cho m&igrave;nh những con laptop từ Dell chắc hẳn kh&ocirc;ng qu&aacute; xa lạ về độ bền m&agrave; n&oacute; mang lại. Vỏ m&aacute;y bao phủ bởi một lớp m&agrave;u Silver đơn giản nhưng kh&ocirc;ng hề đơn điệu với phần logo Dell in ch&igrave;m ch&iacute;nh giữa bề mặt m&aacute;y. Nếu c&ocirc;ng việc của bạn thường xuy&ecirc;n phải di chuyển th&igrave; đừng lo khi trọng lượng si&ecirc;u nhẹ của m&aacute;y sẽ dễ d&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn đi đến bất cứ đ&acirc;u.&nbsp;</p>

<p><img alt="GEARVN Laptop Dell Inspiron 15 N3530 I3U085W11BLU" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-dell-inspiron-15-n3530-i3u085w11blu-1_bf10f5c38e9343e084c0f5908b8e3588_1024x1024.png" /></p>

<h3><strong>M&agrave;n h&igrave;nh g&oacute;c rộng, độ sắc n&eacute;t cao</strong></h3>

<p>M&agrave;n h&igrave;nh 15.6 inch với độ ph&acirc;n giải FHD (1920x1080) của Dell Inspiron 15 tạo ra một kh&ocirc;ng gian l&agrave;m việc rộng lớn v&agrave; trải nghiệm giải tr&iacute; đỉnh cao. Đường viền m&agrave;n h&igrave;nh được thiết kế hẹp, mở rộng kh&ocirc;ng gian hiển thị v&agrave; tạo cảm gi&aacute;c thoải m&aacute;i. Chất lượng h&igrave;nh ảnh ch&acirc;n thực, m&agrave;u sắc sống động c&ugrave;ng độ chống l&oacute;a tốt l&agrave;m tăng trải nghiệm sử dụng.</p>

<p><img alt="GEARVN Laptop Dell Inspiron 15 N3530 I3U085W11BLU" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-dell-inspiron-15-n3530-i3u085w11blu-4_49c518e3a6f9465796d16e74360dae36_1024x1024.png" /></p>

<h3><strong>Cổng giao tiếp đa dạng</strong></h3>

<p>Với cổng kết nối đa dạng, Dell Inspiron 15 l&agrave; sự lựa chọn th&ocirc;ng minh cho những người muốn kết nối với c&aacute;c thiết bị ngoại vi. Với cổng USB Type-C, USB Type-A, USB 2.0, cổng HDMI 1.4 v&agrave; cổng tai nghe/microphone combo, chiếc laptop n&agrave;y đ&aacute;p ứng mọi nhu cầu kết nối của người d&ugrave;ng.</p>

<p><img alt="GEARVN Laptop Dell Inspiron 15 N3530 I3U085W11BLU" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-dell-inspiron-15-n3530-i3u085w11blu-6_544fd71158d94fadbc4e2c5bd6e7e408_1024x1024.png" /></p>

<p>T&oacute;m lại,&nbsp;<a href="https://gearvn.com/collections/laptop" target="_blank">laptop</a>&nbsp;Dell Inspiron 15 N3530 I3U085W11BLU kh&ocirc;ng chỉ l&agrave; sự kết hợp tuyệt vời giữa hiệu suất v&agrave; thiết kế m&agrave; c&ograve;n đ&aacute;p ứng đầy đủ nhu cầu đa dạng của người sử dụng. Cho d&ugrave; bạn l&agrave; sinh vi&ecirc;n chuẩn bị cho m&ugrave;a tựu trường hay nh&acirc;n vi&ecirc;n văn ph&ograve;ng đ&ograve;i hỏi hiệu suất ổn định, chiếc laptop n&agrave;y đ&aacute;ng để xem x&eacute;t v&agrave; đầu tư.</p>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 28, 2, 20, 0, 14690000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (38, N'Chuột Logitech G102 LightSync Black', 593010.0000, 1, 30, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết chuột Logitech G102 Lightsync RGB Black</strong></h2>

<p>D&ugrave; c&oacute; mức gi&aacute; rất b&igrave;nh d&acirc;n nhưng&nbsp;<a href="https://gearvn.com/collections/chuot-logitech">chuột Logitech</a>&nbsp;G102 Lightsync RGB&nbsp;lại được trang bị led&nbsp; RGB 16,8 triệu m&agrave;u .Chọn một m&agrave;u hay trộn 3 m&agrave;u, hiệu ứng c&oacute; sẵn&nbsp;hay tạo hiệu ứng của ri&ecirc;ng bạn . Sự lựa chọn l&agrave; của bạn !&nbsp;Bạn&nbsp;c&ograve;n c&oacute; thể đồng bộ chuột với thiết bị LIGHTSYNC của Logitech G kh&aacute;c gi&uacute;p g&oacute;c m&aacute;y&nbsp;trở n&ecirc;n đồng bộ v&agrave;&nbsp;độc đ&aacute;o hơn.</p>

<h3><strong>Cảm biến cấp độ chơi game</strong></h3>

<p>Theo d&otilde;i con trỏ ch&iacute;nh x&aacute;c v&agrave; đạt hiệu suất phản hồi nhanh nhạy nhờ v&agrave;o cảm biến cấp độ chơi game. Với độ nhạy c&oacute; thể t&ugrave;y chỉnh từ 200 - 8.000 DPI c&ugrave;ng&nbsp;<a href="https://gearvn.com/collections/feet-chuot">feet chuột</a>&nbsp;chất lượng, h&atilde;y chọn mức độ ph&ugrave; hợp với sở th&iacute;ch chơi của bạn. Sử dụng phần mềm HUB G của Logitech để lập tr&igrave;nh l&ecirc;n tới 5 chế độ thiết lập sẵn.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-logitech-g102-black-1_2692c33e46f440f081a4e59d0d6fd11a_grande.jpg" style="border-style:none" /></p>

<h3><strong>Đ&aacute;ng tin cậy v&agrave; c&oacute; thiết kế ph&ugrave; hợp</strong></h3>

<p>&nbsp;</p>

<p>Một trong những d&ograve;ng&nbsp;<a href="https://gearvn.com/pages/chuot-may-tinh" target="_blank">chuột m&aacute;y t&iacute;nh</a>&nbsp;sở hữu thiết kế s&aacute;u n&uacute;t cổ điển đem đến cả sự thoải m&aacute;i lẫn tự tin để bạn c&oacute; thể kh&aacute;m ph&aacute;, s&aacute;ng tạo v&agrave; chơi như &yacute; muốn. Sử dụng phần mềm HUB G của Logitech để g&aacute;n c&aacute;c lệnh trong tr&ograve; chơi, điều khiển hệ thống hoặc tổ hợp ph&iacute;m v&agrave; đơn giản h&oacute;a việc chơi game của bạn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-logitech-g102-black-2_251b456676be4bc9a594802b7916fbea_grande.jpg" style="border-style:none" /></p>

<h3><strong>Lực ấn được tối ưu ho&aacute;</strong></h3>

<p>C&aacute;c n&uacute;t ch&iacute;nh b&ecirc;n tr&aacute;i v&agrave; phải c&oacute; hệ thống ứng lực n&uacute;t bằng l&ograve; xo kim loại độc quyền của Logitech G, đem đến sự ch&iacute;nh x&aacute;c khi nhấn n&uacute;t v&agrave; trải nghiệm đồng nhất - từ c&uacute; nhấp n&agrave;y đến c&uacute; nhấp kh&aacute;c. Hứa hẹn đ&acirc;y sẽ l&agrave; một trong những phụ kiện chơi game b&ecirc;n cạnh c&aacute;c d&ograve;ng&nbsp;<a href="https://gearvn.com/pages/ban-phim-may-tinh" target="_blank">b&agrave;n ph&iacute;m cơ</a>,&nbsp;<a href="https://gearvn.com/collections/tai-nghe-bluetooth-chinh-hang" target="_blank">tai nghe Bluetooth</a>&nbsp;chơi game mang đến cho bạn cảm x&uacute;c thăng hoa với c&aacute;c tựa game y&ecirc;u th&iacute;ch.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-logitech-g102-black-3_7dcedd9cdd56474bb9d83dc723691581_grande.jpg" style="border-style:none" /></p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu</strong></p>
			</td>
			<td>
			<p>Logitech</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>T&ecirc;n sản phẩm</strong></p>
			</td>
			<td>
			<p>Logitech G102 Lightsync RGB</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Thiết kế</strong></p>
			</td>
			<td>
			<p>Đối xứng - Ambidextrous</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Mắt đọc</strong></p>
			</td>
			<td>
			<p>Mercury Sensor</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Điểm ảnh tr&ecirc;n 1 inch (DPI)</strong></p>
			</td>
			<td>
			<p>8000</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>IPS</strong></p>
			</td>
			<td>
			<p>200</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Gia tốc</strong></p>
			</td>
			<td>
			<p>30g</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tần số phản hồi</strong></p>
			</td>
			<td>
			<p>1000Hz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Chất liệu vỏ</strong></p>
			</td>
			<td>
			<p>Nhựa ABS</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>M&agrave;u sắc</strong></p>
			</td>
			<td>
			<p>Đen</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Số lượng n&uacute;t bấm</strong></p>
			</td>
			<td>
			<p>6</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Switch</strong></p>
			</td>
			<td>
			<p>Omron</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tuổi thọ</strong></p>
			</td>
			<td>
			<p>50 triệu lần nhấn</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>LED</strong></p>
			</td>
			<td>
			<p>RGB Lightsync</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kết nối</strong></p>
			</td>
			<td>
			<p>USB</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ d&agrave;i d&acirc;y (cm)</strong></p>
			</td>
			<td>
			<p>210</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước (mm)</strong></p>
			</td>
			<td>
			<p>D&agrave;i 116.6 x Rộng 62.15 x Cao 38.2</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trọng lượng (gr)</strong></p>
			</td>
			<td>
			<p>85g (kh&ocirc;ng cable)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phần mềm</strong></p>
			</td>
			<td>
			<p>Logitech G-Hub</p>
			</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 29, 9, 7, 0, 599000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (39, N'Laptop Dell Inspiron T7420 N4I5021W Silver', 24641100.0000, 1, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop Dell Inspiron T7420 N4I5021W Silver</strong></h2>

<p><strong>Laptop&nbsp;<a href="https://gearvn.com/collections/laptop-dell-inspiron-series" target="_blank">Dell Inspiron</a>&nbsp;T7420 N4I5021W</strong>&nbsp;l&agrave; một si&ecirc;u phẩm mới đến từ nh&agrave; Dell. Ở ph&acirc;n kh&uacute;c&nbsp;<a href="https://gearvn.com/pages/laptop-van-phong" target="_blank">laptop văn ph&ograve;ng</a>, Dell Inspiron T7420 đ&atilde; ho&agrave;n th&agrave;nh xuất sắc nhiệm vụ của m&igrave;nh khi c&oacute; thể thực hiện đa nhiệm tốt, hiệu năng ổn định, chất lượng hiển thị h&igrave;nh ảnh đẹp mắt v&agrave; thiết kế sang trọng, tinh tế. Đ&acirc;y ch&iacute;nh l&agrave; sự lựa chọn th&iacute;ch hợp cho những ai y&ecirc;u th&iacute;ch sự mới mẻ, năng động v&agrave; tinh tế.</p>

<p><img alt="GEARVN - Laptop Dell Inspiron T7420 N4I5021W Silver" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-t7420-n4i5021w-silver-1_3f06f9f7b9384142a70c3de86fff4375.png" /></p>

<h3><strong>Thiết kế Dell Inspiron T7420 năng động, tinh tế</strong></h3>

<p>Dell Inspiron T7420 N4I5021W được ho&agrave;n thiện từ chất liệu nhựa bền v&agrave; đẹp. M&agrave;u bạc đem lại cảm gi&aacute;c sang trọng cho người d&ugrave;ng. Với trọng lượng si&ecirc;u nhẹ chỉ 1.57kg, Dell Inspiron T7420 lu&ocirc;n trong tư thế sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn đi đến bất cứ đ&acirc;u. Thiết kế n&agrave;y hướng đến đa dạng người d&ugrave;ng, đặc biệt l&agrave; c&aacute;c bạn trẻ y&ecirc;u th&iacute;ch sự gọn g&agrave;ng v&agrave; linh hoạt.</p>

<p><img alt="GEARVN - Laptop Dell Inspiron T7420 N4I5021W Silver" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-t7420-n4i5021w-silver-5_575a27dd08e04c3fb9bdcfa8a21bd4b8.png" /></p>

<p>Đặc biệt, Dell Inspiron T7420 c&oacute; thiết kế bản lề gập 360 độ, cho ph&eacute;p bạn dễ d&agrave;ng sử dụng m&aacute;y ở nhiều tư thế kh&aacute;c nhau khi học tập, l&agrave;m việc, họp mặt với đối t&aacute;c. B&ecirc;n cạnh đ&oacute;, Dell c&ograve;n ưu &aacute;i cho chiếc laptop mỏng nhẹ cao cấp n&agrave;y một m&agrave;n h&igrave;nh cảm ứng đa điểm. V&igrave; vậy, bạn c&oacute; thể thỏa sức s&aacute;ng tạo, thực hiện mọi thao t&aacute;c nhanh ch&oacute;ng ngay tr&ecirc;n m&agrave;n h&igrave;nh laptop m&agrave; kh&ocirc;ng cần d&ugrave;ng chuột hay&nbsp;<a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank">b&agrave;n ph&iacute;m</a>.</p>

<h3><strong>B&agrave;n ph&iacute;m tiện lợi v&agrave; khả năng bảo mật n&acirc;ng cao</strong></h3>

<p>Dell Inspiron T7420 được trang bị một tổ hợp b&agrave;n ph&iacute;m mới. Với k&iacute;ch thước rộng r&atilde;i, c&aacute;c ph&iacute;m bấm &ecirc;m, độ nảy tốt v&agrave; h&agrave;nh tr&igrave;nh ph&iacute;m s&acirc;u cho cảm gi&aacute;c thoải m&aacute;i khi sử dụng k&eacute;o d&agrave;i. Hơn nữa, laptop c&ograve;n được t&iacute;ch hợp đ&egrave;n nền để thuận tiện khi nhập liệu v&agrave; g&otilde; văn bản trong điều kiện thiếu s&aacute;ng.</p>

<p><img alt="GEARVN - Laptop Dell Inspiron T7420 N4I5021W Silver" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-t7420-n4i5021w-silver-8_0a5ce274e2ba48f39678485ec3d894e3.png" /></p>

<p>Laptop c&ograve;n hỗ trợ t&iacute;nh năng bảo mật th&ocirc;ng qua cảm biến v&acirc;n tay. Giờ đ&acirc;y, mọi thao t&aacute;c bảo mật, tắt mở m&agrave;n h&igrave;nh lu&ocirc;n diễn ra nhanh ch&oacute;ng v&agrave; an to&agrave;n chỉ bằng một lần chạm. Bạn kh&ocirc;ng cần phải ghi nhớ mật khẩu hay thực hiện qu&aacute; nhiều thủ tục rắc rối để đảo mật m&aacute;y t&iacute;nh nữa.</p>

<h3><strong>Hiệu suất của Dell Inspiron 14 5410 cực kỳ ấn tượng</strong></h3>

<p>Dell Inspiron T7420 c&oacute; tốc độ xung nhịp cơ bản 3.30 GHz v&agrave; đạt tối đa Turbo Boost 4.40 GHz đến từ bộ CPU Intel Core i5, c&ugrave;ng bộ nhớ đệm 12MB mang lại hiệu năng xử l&yacute; tốt c&aacute;c t&aacute;c vụ văn ph&ograve;ng cơ bản một c&aacute;ch mượt m&agrave;.</p>

<p><img alt="GEARVN - Laptop Dell Inspiron T7420 N4I5021W Silver" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-t7420-n4i5021w-silver-4_680ff4d822df4ac7bbbe8f340f2b125a.png" /></p>

<p>Card đồ họa Intel Iris Xe Graphics được t&iacute;ch hợp với con chip Intel Gen 12 gi&uacute;p giải quyết tốt c&aacute;c t&aacute;c vụ li&ecirc;n quan đến chất lượng hiển thị h&igrave;nh ảnh, độ ch&iacute;nh x&aacute;c về m&agrave;u sắc, chi tiết độ ph&acirc;n giải, độ tương phản của h&igrave;nh ảnh. Bạn c&oacute; thể thao t&aacute;c chỉnh sửa h&igrave;nh ảnh 2D, video tr&ecirc;n c&aacute;c phần mềm Adobe hay chơi một số t&aacute;c vụ game giải tr&iacute; c&oacute; cấu h&igrave;nh đồ họa tương đối tr&ecirc;n chiếc laptop n&agrave;y.</p>

<p><img alt="GEARVN - Laptop Dell Inspiron T7420 N4I5021W Silver" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-t7420-n4i5021w-silver-3_83125c83488f4ea8a23581d1c54fa746.png" /></p>

<p>B&ecirc;n cạnh đ&oacute;, 8GB RAM chuẩn&nbsp;<a href="https://gearvn.com/collections/ram-ddr4" target="_blank">DDR4</a>&nbsp;cho khả đa nhiệm mượt m&agrave;. Bạn c&oacute; thể c&ugrave;ng l&uacute;c vừa học tập, l&agrave;m việc, vừa lướt web v&agrave; nghe nhạc giải tr&iacute;, việc chuyển đổi qua lại giữa c&aacute;c tab cũng &quot;smooth like butter&quot;. C&aacute;c hiện tượng như giật lag, đứng m&aacute;y cũng kh&ocirc;ng c&ograve;n diễn ra tr&ecirc;n chiếc laptop văn ph&ograve;ng của nh&agrave; Dell. Ngo&agrave;i ra, bạn c&oacute; thể n&acirc;ng cấp RAM tối đa 16GB cũng như ổ cứng SSD để tăng tốc độ phản hồi v&agrave; n&acirc;ng cao trải nghiệm sử dụng.</p>

<h3><strong>Chất lượng m&agrave;n h&igrave;nh hiển thị</strong></h3>

<p>Dell Inspiron T7420 N4I5021W sở hữu m&agrave;n h&igrave;nh 14 inch, độ ph&acirc;n giải Full HD (1920 x 1080) cho chất lượng hiển thị h&igrave;nh ảnh v&ocirc; c&ugrave;ng sắc n&eacute;t v&agrave; sống động. N&oacute; sẽ mang đến cho bạn trải nghiệm xem phim, video ca nhạc sống động như thật qua từng khung h&igrave;nh, chất lượng hiển thị h&igrave;nh ảnh tuyệt vời nhờ sự hỗ trợ của c&ocirc;ng nghệ Wide Viewing Angle (WVA).</p>

<p><img alt="GEARVN - Laptop Dell Inspiron T7420 N4I5021W Silver" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-t7420-n4i5021w-silver-6_faca6c3bfac943759b2223590804d5f5.png" /></p>

<p>C&oacute; thể n&oacute;i, Dell Inspiron T7420 N4I5021W l&agrave; chiếc laptop với thiết kế hiện đại 2 trong 1 c&ugrave;ng những thiết lập, n&acirc;ng cấp mới v&ocirc; c&ugrave;ng ấn tượng đ&aacute;ng để bạn trải nghiệm.</p>

<h3><strong>Khả năng kết nối đa dạng</strong></h3>

<p>Ngo&agrave;i ra, Dell cũng đ&atilde; đa dạng phạm vi cổng kết nối. Dọc theo cả hai th&acirc;n m&aacute;y l&agrave; c&aacute;c cổng USB Type C, USB 3.2, HDMI, jack cắm tai nghe 3.5 mm gi&uacute;p qu&aacute; tr&igrave;nh kết nối v&agrave; truyền dữ liệu được tiến h&agrave;nh nhanh ch&oacute;ng v&agrave; hiệu quả.</p>

<p><img alt="GEARVN - Laptop Dell Inspiron T7420 N4I5021W Silver" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-t7420-n4i5021w-silver-10_2f6eb9bdf8cf4823a714f3dcb5b320f9.png" /></p>

<p><img alt="GEARVN - Laptop Dell Inspiron T7420 N4I5021W Silver" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-t7420-n4i5021w-silver-9_59c1f16bd1ab406982e5aaa6539369c3.png" /></p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank">CPU</a></strong></td>
			<td>Intel Core i5-1235U 3.30GHz upto 4.40GHz, 12MB Cache</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank">RAM</a></strong></td>
			<td>8GB (1x8GB) DDR4 3200MHz (2x SO-DIMM socket, up to 16GB SDRAM)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/o-cung-di-dong-hdd-box" target="_blank"><strong>Ổ lưu trữ</strong></a></td>
			<td>512GB&nbsp;<a href="https://gearvn.com/collections/ssd-m-2-pcie-gen-3x4" target="_blank">M.2 PCIe NVMe SSD</a></td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/pages/man-hinh" target="_blank"><strong>M&agrave;n h&igrave;nh</strong></a></td>
			<td>14 inch FHD+ (1920x1200), 60Hz, Touch, WVA, TrueLife, Narrow Border, Pen Support</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank">Card m&agrave;n h&igrave;nh</a></strong></td>
			<td>Intel Iris Xe Graphics</td>
		</tr>
		<tr>
			<td><strong>Kết nối USB</strong></td>
			<td>2 USB 3.2 Gen 2x1 Type-C with PowerDelivery and Video<br />
			1 USB 3.2 Gen 1 Type A port<br />
			1 headset (headphone and microphone combo) port<br />
			1 HDMI 1.4 port</td>
		</tr>
		<tr>
			<td><strong>Bảo mật</strong></td>
			<td>Finger Print</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank">Webcam</a></strong></td>
			<td>720p at 30 fps, HD RGB camera</td>
		</tr>
		<tr>
			<td><strong>Khe cắm thẻ nhớ</strong></td>
			<td>1 SD-card slot</td>
		</tr>
		<tr>
			<td><strong>Wifi + Bluetooth</strong></td>
			<td>Intel Wi-Fi 6E (6GHz) AX211 2x2 Bluetooth 5.2 Wireless Card</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>4Cell 54Whrs</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home + Office Home &amp; Student 2021</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Bạc</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>1.57 kg</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước&nbsp;</strong></td>
			<td>314 x 227.5 x 15.7~18.5mm</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 30, 2, 20, 0, 24890000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (40, N'Laptop Dell Vostro 5620 V6I5001W1 Gray', 22824200.0000, 2, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết Laptop Dell Vostro 5620 V6I5001W1 Gray</strong></h2>

<p>Dell Vostro 5620 V6I5001W1 l&agrave; d&ograve;ng&nbsp;<a href="https://gearvn.com/collections/laptop-hoc-sinh-sinh-vien" target="_blank">laptop sinh vi&ecirc;n</a>&nbsp;sở hữu thiết kế mỏng nhẹ với nhiều t&iacute;nh năng nổi bật gi&uacute;p bạn n&acirc;ng cao th&agrave;nh t&iacute;ch học tập, tăng th&ecirc;m trải nghiệm với c&aacute;c tựa game m&igrave;nh y&ecirc;u th&iacute;ch. Đặc biệt, với trọng lượng chưa đến 2kg bạn ho&agrave;n to&agrave;n c&oacute; thể cất gọn trong balo mang đi đến bất kỳ đ&acirc;u.</p>

<h3><strong>Bộ xử l&yacute; Intel Core i5-1240P mạnh mẽ</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-laptop-dell-inspiron-5620-v6i5001w1-gray" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-5620-v6i5001w1-gray_c60bedd65bd64c02bb0d4f927d88b5dc_grande.png" /></p>

<p>&nbsp;</p>

<p>Để xử l&yacute; được mọi t&aacute;c vụ từ học tập cho đến chơi game giải tr&iacute; Laptop Dell Vostro 5620 V6I5001W1 được trang bị bộ xử l&yacute; CPU Intel Core i5-1240P mạnh mẽ. Được biết đ&acirc;y l&agrave; d&ograve;ng CPU Intel sở hữu hiệu năng vượt trội, hoạt động ổn định mượt m&agrave;.</p>

<h3><strong>Hiển thị đầy đủ th&ocirc;ng tin qua m&agrave;n h&igrave;nh Full HD 16inch</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-laptop-dell-inspiron-5620-v6i5001w1-gray" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-5620-v6i5001w1-gray-2_2b3baeec3eeb42cdbf6262c6b8bfc400_grande.png" /></p>

<p>&nbsp;</p>

<p>M&agrave;n h&igrave;nh với k&iacute;ch thước 16 inch gi&uacute;p hiển thị đầy đủ th&ocirc;ng tin cần thiết khi chơi game, l&agrave;m việc v&agrave; học tập. Khả năng hiển thị h&igrave;nh ảnh sắc n&eacute;t, r&otilde; n&eacute;t với m&agrave;u sắc ch&acirc;n thực v&agrave; sống động với độ ph&acirc;n giải FullHD.</p>

<p>Kh&ocirc;ng dừng lại ở đ&oacute;, c&ugrave;ng sự kết hợp giữa c&ocirc;ng nghệ chống ch&oacute;i Anti Glare v&agrave; WVA gi&uacute;p cho người d&ugrave;ng c&oacute; nhiều g&oacute;c nh&igrave;n m&agrave; kh&ocirc;ng bị biến dạng g&acirc;y kh&oacute; chịu, dễ d&agrave;ng chia sẻ th&ocirc;ng tin m&agrave; kh&ocirc;ng cần xoay m&aacute;y.</p>

<h3><strong>RAM 8GB theo chuẩn DDR4 hỗ trợ xử l&yacute; mọi t&aacute;c tụ</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-laptop-dell-inspiron-5620-v6i5001w1-gray" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-5620-v6i5001w1-gray-5_ddda10f83bee4b26818a13a5bcde843f_grande.png" /></p>

<p>&nbsp;</p>

<p>Laptop Dell Vostro 5620 V6I5001W1 được trang bị RAM 8GB DDR4 mang đến khả năng xử l&yacute; đa nhiệm cho mọi c&ocirc;ng việc.</p>

<h3><strong>B&agrave;n ph&iacute;m hỗ trợ LED tiện lợi khi sử dụng</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-laptop-dell-inspiron-5620-v6i5001w1-gray" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-5620-v6i5001w1-gray-1_319950fb958d4559837f668b0b85ef58_grande.png" /></p>

<p>&nbsp;</p>

<p>Sử dụng layout b&agrave;n ph&iacute;m Fullsize tiện lợi c&ugrave;ng cụm ph&iacute;m numpad gi&uacute;p bạn nhập liệu, soạn thảo văn bản v&agrave; t&iacute;nh to&aacute;n dễ d&agrave;ng hơn. Với c&aacute;c ph&iacute;m bấm được thiết kế đặc biệt hạn chế bấm sai ph&iacute;m v&agrave; tăng tốc độ đ&aacute;nh m&aacute;y. Kết hợp c&ugrave;ng phần led đơn sắc độc đ&aacute;o kh&ocirc;ng kh&aacute;c g&igrave;&nbsp;<a href="https://gearvn.com/pages/ban-phim-may-tinh" target="_blank">b&agrave;n ph&iacute;m cơ</a>, sẽ gi&uacute;p bạn phấn khởi hơn khi chơi game, tạo th&ecirc;m cảm hứng s&aacute;ng tạo trong c&ocirc;ng việc.</p>

<h3><strong>&Acirc;m thanh Realtek Audio cho ra chất &acirc;m to, mạnh mẽ</strong></h3>

<p><img alt="GEARVN-laptop-dell-inspiron-5620-v6i5001w1-gray" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-5620-v6i5001w1-gray-6_769071afec9042dcb11e3ffd018e1ccd_grande.png" /></p>

<p>Ngo&agrave;i l&agrave; một chiếc&nbsp;<a href="https://gearvn.com/collections/laptop-cao-cap-mong-nhe" target="_blank">laptop mỏng nhẹ</a>, Dell Vostro 5620 V6I5001W1 sở hữu hệ thống &acirc;m thanh chất lượng. Mọi &acirc;m thanh truyền ra đều được xử l&yacute; theo c&ocirc;ng nghệ&nbsp;&nbsp;Realtek Audio mang đến những trải nghiệm giải tr&iacute; cực kỳ đ&atilde; nhờ chất &acirc;m to r&otilde;, mạnh mẽ.</p>

<h3><strong>Cổng kết nối đa dạng</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-laptop-dell-inspiron-5620-v6i5001w1-gray" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-5620-v6i5001w1-gray-3_e2c556ebadac4cf5aade2fbb6189470b_grande.png" /></p>

<p>&nbsp;</p>

<p>Mặc d&ugrave; sở hữu thiết kế độc đ&aacute;o mỏng nhẹ với t&ocirc;ng m&agrave;u sang trọng nhưng Dell Vostro 5620 V6I5001W1 được trang bị đầy đủ cổng kết nối đa dạng để người chơi c&oacute; thể kết nối với c&aacute;c thiết bị ngoại vi như&nbsp;<a href="https://gearvn.com/pages/chuot-may-tinh" target="_blank">chuột m&aacute;y t&iacute;nh</a>, b&agrave;n ph&iacute;m rời,&nbsp;<a href="https://gearvn.com/pages/tai-nghe-may-tinh" target="_blank">tai nghe m&aacute;y t&iacute;nh</a>&nbsp;v&agrave; nhiều phụ kiện kh&aacute;c để n&acirc;ng cao trải nghiệm.</p>

<ul>
	<li>
	<p>2 USB 3.2 Gen 1 Type-A ports</p>
	</li>
	<li>
	<p>1 USB 3.2 Gen 2x1 Type-C port with Power Delivery and DisplayPort</p>
	</li>
	<li>
	<p>1 Audio jack</p>
	</li>
	<li>
	<p>1 HDMI 1.4 port</p>
	</li>
	<li>
	<p>1 Power-adapter port</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><img alt="GEARVN-laptop-dell-inspiron-5620-v6i5001w1-gray" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-inspiron-5620-v6i5001w1-gray-4_9974895cacfe43dea92d76fa4e80fa60_grande.png" /></p>

<p>&nbsp;</p>

<p>Ngo&agrave;i ra, Dell Vostro 5620 V6I5001W1 c&ograve;n cung cấp cổng LAN (RJ45) hỗ trợ kết nối mạng d&acirc;y để c&oacute; đường truyền nhanh v&agrave; ổn định.</p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank"><strong>CPU</strong></a></td>
			<td>Intel Core i5-1240P (12 MB cache, 12 cores, 16 threads, up to 4.40 GHz Turbo)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/ram-pc" target="_blank"><strong>RAM</strong></a></td>
			<td>1 x 8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/hdd-o-cung-pc" target="_blank"><strong>Ổ cứng</strong></a></td>
			<td>256GB&nbsp;<a href="https://gearvn.com/collections/ssd-o-cung-the-ran" target="_blank">SSD</a>&nbsp;M.2 PCIE&nbsp;</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/vga-card-man-hinh" target="_blank"><strong>Card đồ họa</strong></a></td>
			<td>Intel Iris Xe Graphics (with dual channel memory)<br />
			Intel&reg; UHD Graphics</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/pages/man-hinh" target="_blank"><strong>M&agrave;n h&igrave;nh</strong></a></td>
			<td>16 inch FHD+ 60Hz, Non-Touch, AG, Wide Viewing Angle, 250 nits, ComfortView</td>
		</tr>
		<tr>
			<td><strong>Cổng giao tiếp</strong></td>
			<td>
			<ul>
				<li>2 USB 3.2 Gen 1 Type-A ports</li>
				<li>1 USB 3.2 Gen 2x1 Type-C port with Power Delivery and DisplayPort</li>
				<li>1 Audio jack</li>
				<li>1 HDMI 1.4 port</li>
				<li>1 Power-adapter port</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank"><strong>B&agrave;n ph&iacute;m</strong></a></td>
			<td>C&oacute; đ&egrave;n b&agrave;n ph&iacute;m</td>
		</tr>
		<tr>
			<td><strong>Bảo mật</strong></td>
			<td>C&oacute; bảo mật v&acirc;n tay</td>
		</tr>
		<tr>
			<td><strong>Wireless + Bluetooth</strong></td>
			<td>Intel Wi-Fi 6 (6GHz) 802.11ax Bluetooth 5.2 Wireless Card</td>
		</tr>
		<tr>
			<td><strong>Đọc thẻ nhớ</strong></td>
			<td>1 SD-card slot</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>Stereo speakers with Waves MaxxAudio Pro, 2 W x 2 = 4 W</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/webcam" target="_blank"><strong>Webcam</strong></a></td>
			<td>1080p at 30 fps FHD camera<br />
			Dual-array microphones</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>4-cell Li-ion, 54 Wh</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home SL + Office Home &amp; Student 2021</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>356.78 x&nbsp;251.9 x 18.3mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>1.9 kg</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Gray&nbsp;</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 31, 2, 20, 0, 23290000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (41, N'Laptop gaming Lenovo LOQ 15IRH8 82XV00QQVN', 20570200.0000, 2, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Lenovo LOQ 15IRH8 82XV00QQVN</strong></h2>

<p>Kh&ocirc;ng c&ograve;n đứng ngo&agrave;i cho cuộc đua trong ng&agrave;nh&nbsp;<a href="https://gearvn.com/pages/laptop-gaming" target="_blank">laptop gaming</a>, Lenovo đang dần cải thiện chất lượng của sản phẩm, kh&ocirc;ng chỉ về thiết kế m&agrave; c&ograve;n đ&oacute; c&ograve;n l&agrave; hiệu năng v&agrave; c&ocirc;ng nghệ b&ecirc;n trong. Ch&agrave;o mừng bạn đến với d&ograve;ng sản phẩm laptop gaming&nbsp;<strong>Lenovo LOQ 15IRH8 82XV00QQVN</strong>.</p>

<p><img alt="GEARVN Laptop gaming Lenovo LOQ 15IRH8 82XV00QQVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-lenovo-loq-15irh8-82xv00qqvn-1_5a15c9c4de7742a4b554930d09c0a1e4_1024x1024.png" /></p>

<h3><strong>Thiết kế ti&ecirc;n tiến với sự nổi bật</strong></h3>

<p>N&acirc;ng cấp to&agrave;n bộ về mặt h&igrave;nh ảnh, Lenovo LOQ 15IRH8 82XV00QQVN như một bước tiến d&agrave;i d&agrave;nh cho d&ograve;ng&nbsp;<a href="https://gearvn.com/collections/laptop-gaming-lenovo" target="_blank">laptop gaming Lenovo</a>. Từng g&oacute;c cạnh được trau chuốt với độ tỉ mỉ cực cao kết hợp c&ugrave;ng với khu vực mặt A được l&agrave;m b&oacute;ng kho&aacute;c l&ecirc;n lớp m&agrave;u Storm Grey v&ocirc; c&ugrave;ng sang trọng v&agrave; cuốn h&uacute;t, chiếc laptop Lenovo đ&atilde; đem một c&aacute;i nh&igrave;n mới đến với người d&ugrave;ng. Phần logo mới cũng được đặt tr&ecirc;n khu vực g&oacute;c cạnh để tăng t&iacute;nh nhận diện thương hiệu cho Lenovo LOQ 15IRH8 82XV00QQVN.</p>

<p><img alt="GEARVN Laptop gaming Lenovo LOQ 15IRH8 82XV00QQVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-lenovo-loq-15irh8-82xv00qqvn-8_850ebe62f4f3435d9230d829e255747c_1024x1024.png" /></p>

<p>Khu vực bản lề được t&acirc;n trang với phần mở rộng để đem đến c&aacute;i nh&igrave;n cao cấp hơn cho Lenovo LOQ 15IRH8 82XV00QQVN. V&agrave; b&ecirc;n dưới sẽ khu vực tản nhiệt với những khe tho&aacute;t nhiệt được thiết kế nhằm tối ưu lượng kh&ocirc;ng kh&iacute; lưu th&ocirc;ng trong hay ngo&agrave;i, nhằm mang tới hiệu năng hoạt động mạnh mẽ nhất cho chiếc&nbsp;<a href="https://gearvn.com/collections/laptop" target="_blank">laptop</a>.</p>

<h3><strong>Mạnh mẽ với những n&acirc;ng cấp</strong></h3>

<p>Để xứng đ&aacute;ng với sự n&acirc;ng cấp mới mẻ của Lenovo LOQ 15IRH8 82XV00QQVN, Lenovo đ&atilde; mang đến cho chiến binh của m&igrave;nh cấu h&igrave;nh mới nhất v&agrave; mạnh mẽ nhất. Xử l&yacute; mọi c&ocirc;ng việc với tốc độ cao của&nbsp;<a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank">CPU Intel</a>&nbsp;thuộc về thế hệ Intel Gen 12, i5-12450H. Sở hữu cho m&igrave;nh tốc độ xử l&yacute; l&ecirc;n đến 4.4GHz c&ugrave;ng những c&ocirc;ng nghệ xử l&yacute; ti&ecirc;n tiến của P-Core v&agrave; E-Core, hứa hẹn đem đến tốc độ xử l&yacute; t&aacute;c vụ l&yacute; tưởng cho mọi c&ocirc;ng việc. Đảm bảo cho việc xử l&yacute; đa t&aacute;c vụ, 8 GB&nbsp;<a href="https://gearvn.com/collections/ram-pc-ddr5" target="_blank">RAM DDR5</a>&nbsp;tr&ecirc;n Lenovo LOQ 15IRH8 82XV00QQVN tự tin đ&aacute;p ứng ho&agrave;n hảo cho khả năng xử l&yacute; nhiều c&ocirc;ng việc c&ugrave;ng l&uacute;c.</p>

<p><img alt="GEARVN Laptop gaming Lenovo LOQ 15IRH8 82XV00QQVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-lenovo-loq-15irh8-82xv00qqvn-2_498f698dac56482eafeb56a066aca32d_1024x1024.png" /></p>

<p>L&agrave; một chiếc laptop gaming chắc chắn ch&uacute;ng ta kh&ocirc;ng thể thiếu khả năng xử l&yacute; đồ họa từ những chiếc card đồ họa. Lenovo LOQ 15IRH8 82XV00QQVN trang bị cho m&igrave;nh GPU RTX 2050 v&ocirc; c&ugrave;ng uy t&iacute;n với cho những t&aacute;c vụ li&ecirc;n quan nhiều đến đồ họa. Sản phẩm từ Lenovo đảm bảo sự mượt m&agrave; cho mọi khung h&igrave;nh khi được xử l&yacute; v&agrave; tr&igrave;nh chiếu l&ecirc;n m&agrave;n h&igrave;nh.</p>

<p><img alt="GEARVN Laptop gaming Lenovo LOQ 15IRH8 82XV00QQVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-lenovo-loq-15irh8-82xv00qqvn-3_f8e280f84be04fae811bc927af2ab1de_1024x1024.png" /></p>

<p>Tất cả mọi dữ liệu sẽ được Lenovo LOQ 15IRH8 82XV00QQVN lưu trữ trong ổ cứng SSD với dung lượng 512GB. Kh&ocirc;ng gian lưu trữ l&yacute; tưởng cho mọi dữ liệu như phim, ảnh, t&agrave;i liệu học tập v&agrave; l&agrave;m việc với tốc độ đọc, mở nhanh ch&oacute;ng để đ&aacute;p ứng nhu cầu sử dụng li&ecirc;n tục.</p>

<h3><strong>Khung h&igrave;nh 15 inch chất lượng v&agrave; uy t&iacute;n</strong></h3>

<p>Mọi chi tiết v&agrave; h&igrave;nh ảnh sẽ được hiển thị tr&ecirc;n Lenovo LOQ 15IRH8 82XV00QQVN với m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước 15 inch. Với độ ph&acirc;n giải&nbsp;<a href="https://gearvn.com/collections/do-phan-giai-full-hd-1080p" target="_blank">Full HD</a>&nbsp;tr&ecirc;n tấm nền IPS gi&uacute;p cho mọi pixel được thể hiện r&otilde; n&eacute;t v&agrave; c&oacute; g&oacute;c nh&igrave;n rộng hơn. Độ s&aacute;ng 350 nits để mọi điểm ảnh được nổi bật hơn v&agrave; 45% NTSC cho những khung cảnh v&agrave; vật thể trở n&ecirc;n sống động.&nbsp;</p>

<p><img alt="GEARVN Laptop gaming Lenovo LOQ 15IRH8 82XV00QQVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-lenovo-loq-15irh8-82xv00qqvn-4_72bdb6abd16c4c35a07294793d47fdb3_1024x1024.png" /></p>

<p>Đ&aacute;p ứng nhu cầu gaming cho mọi game thủ, tần số qu&eacute;t&nbsp;<a href="https://gearvn.com/collections/man-hinh-144hz" target="_blank">144Hz</a>&nbsp;tr&ecirc;n Lenovo LOQ 15IRH8 82XV00QQVN đủ để bạn h&agrave;i l&ograve;ng với mọi chuyển động mượt m&agrave; trong tựa game y&ecirc;u th&iacute;ch của m&igrave;nh. C&ocirc;ng nghệ G-Sync sẽ hỗ trợ cho khả năng đồng bộ v&agrave; n&acirc;ng cấp h&igrave;nh ảnh để đem đến trải nghiệm chơi game c&ugrave;ng nền đồ họa bắt mắt nhất c&oacute; thể.</p>

<h3><strong>Đầy đủ cổng kết nối cần thiết</strong></h3>

<p>Đ&aacute;p ứng cho mọi nhu cầu sử dụng hiện nay, Lenovo LOQ 15IRH8 82XV00QQVN được trang bị cho m&igrave;nh những cổng kết nối th&ocirc;ng dụng nhất, bao gồm USB 3.2 Gen1/Gen2, USB Type-C 3.2 Gen 2, cổng HDMI (hỗ trợ 8K/60Hz), cổng Ethernet (RJ-45) v&agrave; combo jack audio 3.5mm. Chỉ cần bạn muốn th&igrave; tất cả những cổng kết nối tr&ecirc;n Lenovo LOQ 15IRH8 82XV00QQVN sẽ đ&aacute;p ứng từ c&ocirc;ng việc tr&igrave;nh chiếu văn ph&ograve;ng đến khả năng kết nối với c&aacute;c thiết bị ngoại vị kh&aacute;c.</p>

<p><img alt="GEARVN Laptop gaming Lenovo LOQ 15IRH8 82XV00QQVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-lenovo-loq-15irh8-82xv00qqvn-9_f066d91999ee444581136b6033ec132c_1024x1024.png" /></p>

<p>Kh&ocirc;ng thể qu&ecirc;n đến khả năng kết nối Internet kh&ocirc;ng d&acirc;y tạo n&ecirc;n sự tiện lợi tr&ecirc;n Lenovo LOQ 15IRH8 82XV00QQVN. Hỗ trợ WiFi 6 cho tốc độ v&agrave; đường truyền mạnh mẽ nhất với băng th&ocirc;ng rộng cho bạn thoải m&aacute;i lướt web d&ugrave; ở ngo&agrave;i qu&aacute;n c&agrave; ph&ecirc; hay ở trong nh&agrave;.</p>

<h3><strong>Thoải m&aacute;i với b&agrave;n ph&iacute;m RGB Backlit</strong></h3>

<p>Lenovo LOQ 15IRH8 82XV00QQVN sở hữu cho m&igrave;nh b&agrave;n ph&iacute;m RGB 4 v&ugrave;ng&nbsp;với những ph&iacute;m bấm cho diện t&iacute;ch tiếp x&uacute;c lớn. Điều n&agrave;y mang lại cảm gi&aacute;c g&otilde; cực kỳ thoải m&aacute;i v&agrave; đảm bảo sự ch&iacute;nh x&aacute;c, giảm thiểu lỗi g&otilde; sai ch&iacute;nh tả hay nhầm ph&iacute;m.</p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank"><strong>CPU</strong></a></td>
			<td>Intel&reg; Core&trade; i5-12450H, 8 Cores (4P + 4E) / 12 Threads, P-core 2.0 / 4.4GHz, E-core 1.5 / 3.3GHz, 12MB</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ram-pc" target="_blank">RAM</a></strong></td>
			<td>8GB DDR5 4800MHz (2x SO-DIMM socket, up to 16GB SDRAM)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/hdd-o-cung-laptop" target="_blank"><strong>Ổ cứng</strong></a></td>
			<td>512GB&nbsp;<a href="https://gearvn.com/collections/ssd-o-cung-the-ran" target="_blank">SSD</a>&nbsp;M.2 2242 PCIe 4.0x4 NVMe (2 Slots: M2 2242 PCIe 4.0 x4 Slot, M.2 2280 PCIe 4.0 x4 Slot)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/vga-card-man-hinh" target="_blank"><strong>Card đồ họa</strong></a></td>
			<td>NVIDIA&reg; GeForce RTX&trade; 2050 4GB GDDR6, Boost Clock 1575MHz, TGP 70W</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/pages/man-hinh" target="_blank"><strong>M&agrave;n h&igrave;nh</strong></a></td>
			<td>15.6&quot; FHD (1920x1080) IPS 350nits Anti-glare, 45% NTSC, 144Hz, G-SYNC</td>
		</tr>
		<tr>
			<td><strong>Cổng kết nối</strong></td>
			<td>
			<ul>
				<li>1x USB 3.2 Gen 1</li>
				<li>2x USB 3.2 Gen 2</li>
				<li>1x USB-C&reg; 3.2 Gen 2 (support data transfer, Power Delivery 140W and DisplayPort&trade; 1.4)</li>
				<li>1x HDMI&reg;, up to 8K/60Hz</li>
				<li>1x Ethernet (RJ-45)</li>
				<li>1x Headphone / microphone combo jack (3.5mm)</li>
				<li>1x Power connector</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank"><strong>B&agrave;n ph&iacute;m</strong></a></td>
			<td>4-Zone RGB Backlit, English</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>High Definition (HD) Audio, Realtek&reg; ALC3287 codec</td>
		</tr>
		<tr>
			<td><strong>Chuẩn Lan</strong></td>
			<td>100/1000M</td>
		</tr>
		<tr>
			<td><strong>Wifi + Bluetooth</strong></td>
			<td>Wi-Fi 6 11ax, 2x2 + BT5.1</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/webcam" target="_blank"><strong>Webcam</strong></a></td>
			<td>FHD 1080p with E-shutter</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh&nbsp;&nbsp; &nbsp;</strong></td>
			<td><a href="https://gearvn.com/blogs/thu-thuat-giai-dap/windows-11-22h2" target="_blank">Windows 11</a>&nbsp;Home</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>Integrated 60Wh</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>2.4 kg</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Storm Grey</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước&nbsp;&nbsp; &nbsp;</strong></td>
			<td>359.6 x 264.8 x 22.1-25.2 mm</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 32, 2, 21, 0, 20990000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (42, N'Laptop Lenovo Ideapad Slim 5 16IAH8 83BG001XVN', 17238200.0000, 2, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;laptop Lenovo Ideapad Slim 5 16IAH8 83BG001XVN</strong></h2>

<p><a href="https://gearvn.com/pages/laptop-van-phong" target="_blank">Laptop văn ph&ograve;ng</a>, ph&acirc;n kh&uacute;c sản phẩm cực k&igrave; &ldquo;n&oacute;ng&rdquo; với lượng người d&ugrave;ng v&agrave; nhu cầu sử dụng cao đến từ học sinh - sinh vi&ecirc;n hay d&acirc;n văn ph&ograve;ng ch&iacute;nh hiệu. Kh&ocirc;ng c&ograve;n độc quyền với những &ldquo;&ocirc;ng ho&agrave;ng&rdquo;, nay ch&uacute;ng ta c&ugrave;ng đ&oacute;n ch&agrave;o một t&acirc;n binh đến từ Lenovo với series Ideapad Slim 5 của m&igrave;nh. GEARVN xin giới thiệu model&nbsp;<strong>Lenovo Ideapad Slim 5 16IAH8 83BG001XVN</strong>&nbsp;ngay sau đ&acirc;y!</p>

<h3><strong>Vẻ ngo&agrave;i sang trọng v&agrave; đậm n&eacute;t tinh tế</strong></h3>

<p>Bước đến với thị trường laptop văn ph&ograve;ng l&agrave; một t&acirc;n binh, Lenovo Ideapad Slim 5 16IAH8 vẫn tự tin khi sở hữu cho m&igrave;nh một vẻ ngo&agrave;i đậm chất,&hellip; văn ph&ograve;ng. Kh&ocirc;ng cần sắc sảo như những người anh em&nbsp;<a href="https://gearvn.com/collections/laptop-lenovo-legion">Legion 5</a>, Lenovo Ideapad Slim 5 kho&aacute;c cho m&igrave;nh m&agrave;u Cloud Grey đẹp mắt c&ugrave;ng mặt A h&agrave;o nho&aacute;ng. Chiếc&nbsp;<a href="https://gearvn.com/collections/laptop">laptop</a>&nbsp;đem đến sự tự tin v&agrave; thoải m&aacute;i nhất định đi được đồng h&agrave;nh c&ugrave;ng người d&ugrave;ng ở mọi m&ocirc;i trường l&agrave;m việc, học tập. K&iacute;ch thước mỏng chỉ ~ 17.9mm với trọng lượng khoảng 1.89kg, Lenovo Ideapad Slim 5 dễ d&agrave;ng để cho v&agrave;o balo v&agrave; mang laptop ra khỏi thủ đ&ocirc; hay th&agrave;nh phố.</p>

<p><img alt="GEARVN Laptop Lenovo Ideapad Slim 5 16IAH8 83BG001XVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-ideapad-slim-5-16iah8-83bg001xvn-1_09d95488f56d47289275800442b5745b.jpg" /></p>

<h3><strong>Cấu h&igrave;nh sức mạnh tuyệt vời cho c&ocirc;ng việc</strong></h3>

<p>Để c&oacute; thể phục vụ cho mọi nhu cầu hay t&aacute;c vụ của người d&ugrave;ng, Lenovo đ&atilde; trang bị cho sản phẩm của m&igrave;nh &ldquo;bộ n&atilde;o&rdquo; xử l&yacute; mạnh mẽ từ&nbsp;<a href="https://gearvn.com/collections/cpu-intel-core-i5" target="_blank">Intel&reg; Core&trade; i5</a>-12450H. Xung nhịp cao c&ugrave;ng 8&nbsp;nh&acirc;n 12&nbsp;luồng đảm bảo tốc độ xử l&yacute; mọi c&ocirc;ng việc văn ph&ograve;ng nhanh ch&oacute;ng v&agrave; mượt m&agrave;. Kết hợp với đ&oacute; l&agrave; dung lượng&nbsp;<a href="https://gearvn.com/collections/ram-pc-ddr5" target="_blank">RAM DDR5</a>&nbsp;l&ecirc;n đến 16GB, bạn c&oacute; thể thoải m&aacute;i thao t&aacute;c đa t&aacute;c vụ mượt m&agrave; v&agrave; n&acirc;ng cao hiệu quả c&ocirc;ng việc.</p>

<p><img alt="GEARVN Laptop Lenovo Ideapad Slim 5 16IAH8 83BG001XVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-ideapad-slim-5-16iah8-83bg001xvn-5_b0fcef74786e492cb8d1d193669bf27f.jpg" /></p>

<p>Mọi dữ liệu sẽ được Lenovo Ideapad Slim 5 16IAH8 lưu trữ ở kh&ocirc;ng gian bộ nhớ l&ecirc;n đến 512GB SSD. Nhờ vậy, bạn c&oacute; thể thoải m&aacute;i lưu trữ mọi file c&ocirc;ng việc, phần mềm tr&ecirc;n chiếc&nbsp;<a href="https://gearvn.com/collections/laptop-lenovo-hoc-tap-va-lam-viec">laptop Lenovo</a>&nbsp;th&acirc;n y&ecirc;u m&agrave; kh&ocirc;ng ngại c&aacute;c vấn đề về t&igrave;nh trạng đầy bộ nhớ.</p>

<h3><strong>Khung h&igrave;nh sắc n&eacute;t với m&agrave;n h&igrave;nh FullHD</strong></h3>

<p>Khả năng hiển thị của&nbsp;Lenovo Ideapad Slim 5 16IAH8 vượt trội so với k&igrave; vọng của mọi người với một chiếc laptop văn ph&ograve;ng. K&iacute;ch thước 16 inch với tấm nền IPS đảm bảo khả năng quan s&aacute;t thuận tiện nhất đến với người d&ugrave;ng; c&aacute;c chi tiết được trau chuốt từ độ chuẩn m&agrave;u đạt 45% sRGB, độ s&aacute;ng đạt 300nits để mang đến những h&igrave;nh ảnh sống động v&agrave; ch&acirc;n thực chẳng thua k&eacute;m g&igrave; những&nbsp;<a href="https://gearvn.com/pages/man-hinh" target="_blank">m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh</a>.</p>

<p><img alt="GEARVN Laptop Lenovo Ideapad Slim 5 16IAH8 83BG001XVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-ideapad-slim-5-16iah8-83bg001xvn-7_7a49636675b7417e90d16f6b7937f602.jpg" /></p>

<h3><strong>Đầy đủ kết nối cần thiết cho nhu cầu</strong></h3>

<p>Đ&aacute;p ứng cho mọi nhu cầu sử dụng trong m&ocirc;i trường văn ph&ograve;ng v&agrave; gi&aacute;o dục, ta kh&ocirc;ng thể thiếu những cổng kết nối tr&ecirc;n Lenovo Ideapad Slim 5 16IAH8 với c&aacute;c cổng như USB Type-C 3.2 Gen 1 (hỗ trợ sạc), USB 3.2 Gen 1 kết nối với c&aacute;c thiết bị ngoại vi như&nbsp;<a href="https://gearvn.com/collections/gaming-gear">gaming gear</a>, HDMI 1.4b, khe đọc thẻ nhớ v&agrave; combo jack audio 3.5mm. Từ giải tr&iacute; đến l&agrave;m việc, Lenovo Ideapad Slim 5 sẽ tự tin ho&agrave;n th&agrave;nh mọi c&ocirc;ng việc m&agrave; bạn giao ph&oacute;.</p>
', N'<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly"><strong>CPU</strong></a></td>
			<td>Intel&reg; Core&trade; i5-12450H, 8 Cores (4P + 4E) / 12 Threads, P-core 2.0 / 4.4GHz, E-core 1.5 / 3.3GHz, 12MB</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/ram-pc"><strong>Ram</strong></a></td>
			<td>16GB Onboard LPDDR5 4800Mhz</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/ssd-o-cung-the-ran"><strong>SSD</strong></a></td>
			<td>512GB SSD M.2 2242 PCIe&reg; 4.0x4 NVMe</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/vga-card-man-hinh"><strong>Card đồ họa</strong></a></td>
			<td>Intel&reg; UHD Graphics</td>
		</tr>
		<tr>
			<td><strong>M&agrave;n h&igrave;nh</strong></td>
			<td>16&quot; WUXGA (1920x1200) IPS 300nits Anti-glare, 45% NTSC, T&Uuml;V Low Blue Light</td>
		</tr>
		<tr>
			<td><strong>Cổng giao tiếp</strong></td>
			<td>
			<ul>
				<li>1x USB 3.2 Gen 1</li>
				<li>1x USB 3.2 Gen 1 (Always On)</li>
				<li>2x USB-C&reg; 3.2 Gen 1 (support data transfer, Power Delivery 3.0 and DisplayPort&trade; 1.4)</li>
				<li>1x HDMI&reg; 1.4b</li>
				<li>1x microSD card reader</li>
				<li>1x Headphone / microphone combo jack (3.5mm)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank"><strong>B&agrave;n ph&iacute;m</strong></a></td>
			<td>B&agrave;n ph&iacute;m ti&ecirc;u chuẩn, c&oacute; LED đơn sắc</td>
		</tr>
		<tr>
			<td><strong>Chu&acirc;̉n LAN</strong></td>
			<td>Kh&ocirc;ng hỗ trợ</td>
		</tr>
		<tr>
			<td><strong>Chuẩn WIFI</strong></td>
			<td>Wi-Fi&reg; 6, 11ax 2x2</td>
		</tr>
		<tr>
			<td><strong>Bluetooth</strong></td>
			<td>Bluetooth&reg; 5.1</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/webcam" target="_blank">Webcam</a></strong></td>
			<td>FHD 1080p with Privacy Shutter</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>Integrated 56.6Wh</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>1.89 kg</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Cloud Grey</td>
		</tr>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>356 x 251 x 17.9 mm&nbsp;</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 33, 2, 21, 0, 17590000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (43, N'Laptop Lenovo Yoga Slim 6 14IRH8 83E0000VVN', 24740100.0000, 1, 40, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop Lenovo Yoga Slim 6 14IRH8 83E0000VVN</strong></h2>

<p>Lenovo Yoga Slim 6 14IRH8 83E0000VVN&nbsp;l&agrave; chiếc&nbsp;<a href="http://gearvn.com/collections/laptop-hoc-tap-va-lam-viec-tren-20-trieu" target="_blank">laptop học tập v&agrave; l&agrave;m việc</a>&nbsp;ph&ugrave; hợp cho c&aacute;c bạn sinh vi&ecirc;n hoặc nh&acirc;n vi&ecirc;n văn ph&ograve;ng. Thiết kế sang trọng, thời thượng kết hợp c&ugrave;ng bộ cấu h&igrave;nh được x&acirc;y dựng mạnh mẽ cho c&aacute;c t&aacute;c vụ h&agrave;ng ng&agrave;y. Đ&acirc;y sẽ l&agrave; lựa chọn tối ưu cho những bạn đang t&igrave;m kiếm một chiếc laptop vừa học vừa l&agrave;m v&agrave; giải tr&iacute; trong tầm gi&aacute;. C&ugrave;ng GEARVN t&igrave;m hiểu chi tiết hơn về sản phẩm nh&agrave; Lenovo n&agrave;y nh&eacute;!</p>

<p><img alt="GEARVN - Laptop Lenovo Yoga Slim 6 14IRH8 83E0000VVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-yoga-slim-6-14irh8-83e0000vvn-1_6edd4979876146e2849ee55b8292257c_1024x1024.png" /></p>

<h3><strong>Thiết kế thời thượng, sang trọng</strong></h3>

<p><a href="https://gearvn.com/collections/laptop-lenovo-hoc-tap-va-lam-viec" target="_blank">Laptop Lenovo</a>&nbsp;Yoga Slim 6 14IRH8 sở hữu vẻ bề ngo&agrave;i sang trọng, từng đường n&eacute;t được chau chuốt tỉ mỉ. Kho&aacute;c l&ecirc;n to&agrave;n bộ m&aacute;y l&agrave; m&agrave;u&nbsp;Misty Grey&nbsp;kết hợp c&ugrave;ng phần logo thương hiệu được đặt v&ocirc; c&ugrave;ng tinh tế. K&iacute;ch thước&nbsp;312 x 221 x 14.9&nbsp;mm kh&aacute; gọn v&agrave; trọng lượng chỉ 1.35 Kg thuận lợi hơn cho qu&aacute; tr&igrave;nh di chuyển đi bất cứ đ&acirc;u. Bản lề chắc chắn với khả năng gập 180 độ linh hoạt.&nbsp;</p>

<p><img alt="GEARVN - Laptop Lenovo Yoga Slim 6 14IRH8 83E0000VVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-yoga-slim-6-14irh8-83e0000vvn-13_0f6a71d542b8471d963ece445d13985d_1024x1024.png" /></p>

<h3><strong>Cấu h&igrave;nh vượt trội tr&ecirc;n laptop Lenovo Yoga Slim 6 14IRH8 83E0000VVN</strong></h3>

<p>Laptop&nbsp;<a href="https://gearvn.com/collections/laptop-lenovo-yoga-series" target="_blank">Lenovo Yoga</a>&nbsp;Slim 6 14IRH8&nbsp;sử dụng CPU Intel Core i7-13700H&nbsp;với xung nhịp l&ecirc;n đến 5.0GHz. Mọi thao t&aacute;c văn ph&ograve;ng đều được giải quyết nhanh ch&oacute;ng từ cơ bản đến n&acirc;ng cao. L&agrave; một trong những sản phẩm m&aacute;y t&iacute;nh d&agrave;nh cho đồ họa n&ecirc;n laptop Lenovo Yoga Slim 6 c&ograve;n được trang bị VGA onboard&nbsp;Intel&reg; Iris&reg; Xe Graphics&nbsp;. Đ&aacute;p ứng mọi y&ecirc;u cầu xử l&yacute; h&igrave;nh ảnh, video mượt m&agrave; để những nh&agrave; thiết kế thỏa sức s&aacute;ng tạo.&nbsp;</p>

<p><img alt="GEARVN - Laptop Lenovo Yoga Slim 6 14IRH8 83E0000VVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-yoga-slim-6-14irh8-83e0000vvn-4_12444d104a7a4ba79c2918205c0bda3b_1024x1024.png" /></p>

<p>Ngo&agrave;i ra chiếc&nbsp;<a href="https://gearvn.com/collections/laptop-do-hoa" target="_blank">laptop đồ họa</a>&nbsp;Yoga Slim 6 14IRH8 c&ograve;n sở hữu RAM 16GB LPDDR5x 5200MHz cho qu&aacute; tr&igrave;nh xử l&yacute; đa nhiệm hiệu quả. Khi người d&ugrave;ng thao t&aacute;c mở hay chuyển qua lại giữa nhiều cửa sổ ứng dụng đều trơn tru. Kho lưu trữ SSD 512GB mang lại kh&ocirc;ng gian lưu trữ c&aacute;c dữ liệu quan trọng v&agrave; cần thiết phục vụ nhu cầu l&agrave;m việc v&agrave; học tập hằng ng&agrave;y.</p>

<h3><strong>M&agrave;n h&igrave;nh 14inch chất lượng cao</strong></h3>

<p>N&acirc;ng tầm trải nghiệm người d&ugrave;ng hơn khi&nbsp;<a href="https://gearvn.com/collections/laptop" target="_blank">laptop</a>&nbsp;Lenovo Yoga Slim 6 sở hữu m&agrave;n h&igrave;nh 14 inch. Độ ph&acirc;n giải WUXGA (19200x1200) c&ugrave;ng tấm nền OLED mang lại h&igrave;nh ảnh ch&acirc;n thực v&agrave; m&agrave;u sắc tươi s&aacute;ng. Độ s&aacute;ng m&agrave;n h&igrave;nh l&ecirc;n đến 400nits Glossy kết hợp c&ugrave;ng&nbsp;100% DCI-P3,&nbsp;DisplayHDR&trade; True Black 500 kết xuất h&igrave;nh ảnh m&atilde;n nh&atilde;n với độ ch&iacute;nh x&aacute;c chi tiết v&agrave; m&agrave;u sắc cao.&nbsp;</p>

<p><img alt="GEARVN - Laptop Lenovo Yoga Slim 6 14IRH8 83E0000VVN" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-yoga-slim-6-14irh8-83e0000vvn-8_2238fade6b474f1588b511a484f67def_1024x1024.png" /></p>

<h3><strong>Cổng giao tiếp&nbsp;</strong></h3>

<p>Dọc theo 2 cạnh b&ecirc;n của laptop Lenovo Yoga Slim 6 l&agrave; c&aacute;c cổng kết nối để người d&ugrave;ng li&ecirc;n kết với c&aacute;c thiết bị ngoại vi phục vụ cho nhu cầu sử dụng. C&aacute;c cổng đ&oacute; l&agrave;: 2x Thunderbolt 4, 1x USB 3.2 Gen 1, 1x Headphone/microphone combo jack (3.5mm), 1x HDMI 2.1. B&ecirc;n cạnh đ&oacute; n&uacute;t nguồn c&ograve;n t&iacute;ch hợp v&acirc;n tay để việc mở m&aacute;y nhanh ch&oacute;ng hơn chỉ với một chạm.&nbsp;</p>
', N'<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly">CPU</a></strong></td>
			<td>Intel&reg; Core&trade; i7-13700H, 14 Cores (6P + 8E) / 20 Threads, P-core 2.4 / 5.0GHz, E-core 1.8 / 3.7GHz, 24MB</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ram-pc">Ram</a></strong></td>
			<td>16GB LPDDR5x 5200MHz Onboard&nbsp;dual-channel&nbsp;(Kh&ocirc;ng n&acirc;ng cấp)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ssd-o-cung-the-ran">SSD</a></strong></td>
			<td>512GB SSD M.2 2242 PCIe&reg; 4.0x4 NVMe (1 slot, n&acirc;ng cấp tối đa 1TB)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/vga-card-man-hinh">Card đồ họa</a></strong></td>
			<td>Intel&reg; Iris&reg; Xe Graphics</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/pages/man-hinh" target="_blank">M&agrave;n h&igrave;nh</a></strong></td>
			<td>14&quot; WUXGA (1920x1200) OLED 400nits Glossy, 100% DCI-P3, 60Hz, Eyesafe&reg;, Dolby&reg; Vision&trade;, DisplayHDR&trade; True Black 500</td>
		</tr>
		<tr>
			<td><strong>Cổng giao tiếp</strong></td>
			<td>
			<ul>
				<li>1x HDMI&reg; 2.1, up to 4K/60Hz</li>
				<li>1x Headphone / microphone combo jack (3.5mm)</li>
				<li>1x USB 3.2 Gen 1 (Always On)</li>
				<li>2x Thunderbolt&trade; 4 / USB4&reg; 40Gbps (support data transfer, Power Delivery 3.0 and DisplayPort&trade; 1.4)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong>B&agrave;n ph&iacute;m</strong></td>
			<td>B&agrave;n ph&iacute;m ti&ecirc;u chuẩn, c&oacute; LED đơn sắc</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>Stereo speakers, 2W x2, optimized with Dolby&reg; Atmos&reg;</td>
		</tr>
		<tr>
			<td><strong>Đọc thẻ nhớ</strong></td>
			<td>MicroSD Card Reader</td>
		</tr>
		<tr>
			<td><strong>Chu&acirc;̉n LAN</strong></td>
			<td>None</td>
		</tr>
		<tr>
			<td><strong>Chuẩn WIFI</strong></td>
			<td>Wi-Fi 6 11ax (2x2)</td>
		</tr>
		<tr>
			<td><strong>Bluetooth</strong></td>
			<td>Bluetooth 5.1</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/webcam" target="_blank">Webcam</a></strong></td>
			<td>FHD 1080p + IR with Privacy Shutter, ToF Sensor</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>Integrated 65Wh</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>1.35 kg</td>
		</tr>
		<tr>
			<td><strong>Bảo mật</strong></td>
			<td>V&acirc;n tay</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Misty Grey</td>
		</tr>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>312 x 221 x 14.9 mm</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 34, 2, 21, 0, 24990000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (44, N' Màn Hình Asus TUF GAMING VG249Q3A 24" Fast IPS 180Hz Gsync Chuyên Game', 3990000.0000, NULL, 40, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh Asus TUF GAMING VG249Q3A 24&ldquo; Fast IPS 180Hz Gsync chuy&ecirc;n game</strong></h2>

<p><strong><a href="https://gearvn.com/collections/man-hinh-asus" target="_blank">M&agrave;n h&igrave;nh Asus</a>&nbsp;TUF GAMING VG249Q3A&nbsp;</strong>rộng 24 inch, sử dụng tấm nền IPS, độ ph&acirc;n giải&nbsp;<a href="https://gearvn.com/collections/do-phan-giai-full-hd-1080p" target="_blank">Full HD</a>&nbsp;với tốc độ l&agrave;m mới cực nhanh. M&agrave;n h&igrave;nh được thiết kế d&agrave;nh cho c&aacute;c game thủ chuy&ecirc;n nghiệp v&agrave; những người chơi muốn h&ograve;a m&igrave;nh v&agrave;o c&aacute;c tr&ograve; chơi thực sự. Kh&ocirc;ng chỉ vậy, c&ocirc;ng nghệ ELMB độc quyền cho ph&eacute;p phản hồi 1ms&nbsp;v&agrave; sự kết hợp của c&ocirc;ng nghệ đồng bộ h&oacute;a th&iacute;ch ứng của để&nbsp;mang đến cho người d&ugrave;ng m&agrave;n h&igrave;nh mượt m&agrave; v&agrave; trải nghiệm chơi game tuyệt vời.</p>

<p><img alt="GEARVN - Màn hình Asus TUF GAMING VG249Q3A 24“ Fast IPS 180Hz Gsync chuyên game" src="https://file.hstatic.net/200000722513/file/an-hinh-asus-tuf-gaming-vg249q3a-24-fast-ips-180hz-gsync-chuyen-game-1_3992aef2c7bb4437a4aa6ca9b86bb5eb.png" /></p>

<h3><strong>M&agrave;n h&igrave;nh 24 inch với tấm nền IPS hiển thị m&agrave;u sắc tốt hơn</strong></h3>

<p>M&agrave;n h&igrave;nh Asus TUF GAMING VG249Q1A sở hữu m&agrave;n h&igrave;nh k&iacute;ch thước&nbsp;<a href="https://gearvn.com/collections/man-hinh-24-inch" target="_blank">24 inch</a>, tấm nền IPS, độ ph&acirc;n giải Full HD (1920 x&nbsp;1080) mang đến h&igrave;nh ảnh r&otilde; n&eacute;t từ mọi g&oacute;c độ. M&agrave;n h&igrave;nh g&oacute;c rộng 178 độ đảm bảo hạn chế thấp nhất sự biến dạng v&agrave; thay đổi m&agrave;u sắc ngay cả khi bạn đang đứng c&aacute;ch xa m&agrave;n h&igrave;nh.</p>

<p><img alt="GEARVN - Màn hình Asus TUF GAMING VG249Q3A 24" src="https://file.hstatic.net/200000722513/file/hinh-asus-tuf-gaming-vg249q3a-24-fast-ips-180hz-gsync-chuyen-game-__3__5775862b4e60474cbb935948b89f7a9d_1024x1024.jpg" /></p>

<h3><strong>Tốc độ l&agrave;m mới 180Hz si&ecirc;u nhanh</strong></h3>

<p>Tốc độ l&agrave;m mới cũng được &eacute;p xung l&ecirc;n đến 180Hz gi&uacute;p loại trừ khả năng bị giật, lag m&agrave;n h&igrave;nh v&agrave; mang đến cho bạn ưu thế trong c&aacute;c tựa game bắn s&uacute;ng, đua xe, chiến lược thời gian thực v&agrave; thể thao. Tốc độ l&agrave;m mới n&agrave;y cho ph&eacute;p bạn chơi game với cấu h&igrave;nh h&igrave;nh ảnh ở mức cao nhất v&agrave; phản ứng tức th&igrave; với những nội dung hiện tr&ecirc;n m&agrave;n h&igrave;nh.</p>

<p><img alt="GEARVN - Màn hình Asus TUF GAMING VG249Q3A 24" src="https://file.hstatic.net/200000722513/file/inh-asus-tuf-gaming-vg249q3a-24-fast-ips-180hz-gsync-chuyen-game-__10__114aefe7bab84f1eb3b90c317c84bc27_1024x1024.jpg" /></p>

<h3><strong>Trải nghiệm chơi game mượt m&agrave;</strong></h3>

<p>Asus TUF GAMING VG249Q3A sở hữu c&ocirc;ng nghệ ELMB độc quyền mới nhất của ASUS - L&agrave;m mờ chuyển động cực thấp ELMB (Extreme Low Motion Blur), c&ugrave;ng thời gian phản hồi 1ms GtG, loại bỏ hiện tượng nh&ograve;e m&agrave;n h&igrave;nh v&agrave; chuyển động chậm. Đồng thời, n&oacute; cũng l&agrave;m cho c&aacute;c đối tượng chuyển động r&otilde; r&agrave;ng v&agrave; sắc n&eacute;t hơn. Nhờ đ&oacute;, tr&ograve; chơi hiển thị cũng sẽ mượt m&agrave; v&agrave; đẹp mắt hơn.</p>

<p><img alt="GEARVN - Màn hình Asus TUF GAMING VG249Q3A 24" src="https://file.hstatic.net/200000722513/file/inh-asus-tuf-gaming-vg249q3a-24-fast-ips-180hz-gsync-chuyen-game-__11__589d1e2097754b01ba0c56c75335f8e7_1024x1024.jpg" /></p>

<p>B&ecirc;n cạnh đ&oacute;, Asus TUF GAMING VG249Q3A c&ograve;n được trang bị c&ocirc;ng nghệ đồng bộ h&oacute;a th&iacute;ch ứng từ AMD - AMD Freesync, hạn chế tối đa t&igrave;nh trạng x&eacute; m&agrave;n h&igrave;nh, giật lag thường thấy ở những&nbsp;<a href="https://gearvn.com/pages/man-hinh" target="_blank">m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh</a>&nbsp;th&ocirc;ng thường, mang đến trải nghiệm chơi game tuyệt vời cho game thủ.</p>

<h3><strong>Thiết kế m&agrave;n h&igrave;nh&nbsp;ấn tượng</strong></h3>

<p>M&agrave;n h&igrave;nh Asus TUF GAMING VG249Q3A mang vẻ ngo&agrave;i cứng c&aacute;p, năng động v&igrave; được lấy cảm hứng thiết kế từ m&aacute;y bay chiến đấu t&agrave;ng h&igrave;nh. Bảng điều khiển ph&iacute;a sau c&oacute; c&aacute;c chi tiết giống như h&igrave;nh đ&ocirc;i c&aacute;nh tạo cảm gi&aacute;c tốc độ cho người d&ugrave;ng. Ch&acirc;n đế nhỏ gọn, tối giản đảm bảo sự ổn định nhưng vẫn kh&ocirc;ng k&eacute;m phần sang trọng.</p>

<p><img alt="GEARVN - Màn hình Asus TUF GAMING VG249Q3A 24" src="https://file.hstatic.net/200000722513/file/hinh-asus-tuf-gaming-vg249q3a-24-fast-ips-180hz-gsync-chuyen-game-__4__a44a820ddf6b449c9247890b0a8cd438_1024x1024.jpg" /></p>

<p>Ngo&agrave;i ra, Asus TUF GAMING VG249Q3A c&ograve;n t&iacute;ch hợp một số c&ocirc;ng nghệ ti&ecirc;n tiến kh&aacute;c như Shadow Boost gi&uacute;p n&acirc;ng cao chất lượng h&igrave;nh ảnh hiển thị ở những v&ugrave;ng tối m&agrave; vẫn tr&aacute;nh được t&igrave;nh trạng bị phơi s&aacute;ng qu&aacute; nhiều ở những v&ugrave;ng s&aacute;ng hay cổng kết nối đa dạng bao gồm DisplayPort 1.2, hai cổng HDMI (V1.4) v&agrave; jack cắm 3,5mm gi&uacute;p bạn c&oacute; thể kết nối với nhiều thiết bị kh&aacute;c nhau v&agrave; mang đến trải nghiệm tuyệt vời nhất.</p>
', N'<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong>Nh&agrave; sản xuất</strong></td>
			<td>ASUS</td>
		</tr>
		<tr>
			<td><strong>Bảo h&agrave;nh</strong></td>
			<td>36 th&aacute;ng</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước m&agrave;n h&igrave;nh</strong></td>
			<td>24 inch</td>
		</tr>
		<tr>
			<td><strong>Tỉ lệ khung h&igrave;nh</strong></td>
			<td>16:9</td>
		</tr>
		<tr>
			<td><strong>M&agrave;n h&igrave;nh hiển thị&nbsp;</strong></td>
			<td>527.04 x 296.46 mm</td>
		</tr>
		<tr>
			<td><strong>Tấm nền</strong></td>
			<td>Fast IPS</td>
		</tr>
		<tr>
			<td><strong>G&oacute;c hiển thị</strong></td>
			<td>178&deg;/ 178&deg;</td>
		</tr>
		<tr>
			<td><strong>Độ ph&acirc;n giải&nbsp;</strong></td>
			<td>1920 x 1080</td>
		</tr>
		<tr>
			<td><strong>Độ s&aacute;ng</strong></td>
			<td>250cd/㎡</td>
		</tr>
		<tr>
			<td><strong>Loại m&agrave;n h&igrave;nh</strong></td>
			<td>LED</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc hiển thị</strong></td>
			<td>16.7 triệu&nbsp;m&agrave;u sắc, sRGB&nbsp;99%</td>
		</tr>
		<tr>
			<td><strong>Thời gian phản hồi</strong></td>
			<td>1ms(GTG)</td>
		</tr>
		<tr>
			<td><strong>Tần số qu&eacute;t</strong></td>
			<td>180Hz</td>
		</tr>
		<tr>
			<td><strong>Kh&ocirc;ng nhấp nh&aacute;y</strong></td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td><strong>Pixel Pitch</strong></td>
			<td>0.2745mm</td>
		</tr>
		<tr>
			<td><strong>Tương phản tĩnh&nbsp;</strong></td>
			<td>1000:1</td>
		</tr>
		<tr>
			<td><strong>Tương phản động</strong></td>
			<td>10000000:1</td>
		</tr>
		<tr>
			<td><strong>Đầu cắm</strong></td>
			<td>DisplayPort 1.2 x 1<br />
			HDMI(v2.0) x 2<br />
			Earphone Jack : Yes</td>
		</tr>
		<tr>
			<td><strong>Ti&ecirc;u thu điện</strong></td>
			<td>Power Consumption : &lt;18W<br />
			Power Saving Mode : &lt;0.5W<br />
			Power Off Mode : &lt;0.3W<br />
			Voltage : 100-240V, 50/60Hz</td>
		</tr>
		<tr>
			<td><strong>Thiết kế</strong></td>
			<td>Tilt : Yes (+23&deg; ~ -5&deg;)</td>
		</tr>
		<tr>
			<td><strong>Treo tường&nbsp;</strong></td>
			<td>100 x 100mm</td>
		</tr>
		<tr>
			<td><strong>Loa</strong></td>
			<td>2W x 2</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>541 x 394 x 174 mm (C&oacute; ch&acirc;n đế)<br />
			541 x 323 x 58 mm (Kh&ocirc;ng ch&acirc;n đế)<br />
			600 x 405 x 168 mm (Đ&oacute;ng g&oacute;i)</td>
		</tr>
		<tr>
			<td><strong>Khối lượng&nbsp;</strong></td>
			<td>3.5 Kg&nbsp;(C&oacute; ch&acirc;n đế)<br />
			2.9 Kg&nbsp;(Kh&ocirc;ng ch&acirc;n đế)<br />
			5.5 Kg&nbsp;(Đ&oacute;ng g&oacute;i)</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện</strong></td>
			<td>DisplayPort cable<br />
			HDMI cable<br />
			L-shaped Screwdriver<br />
			Power cord<br />
			Quick start guide<br />
			Warranty Card</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 12, CAST(N'2023-12-25' AS Date), 1, 35, 10, 22, 0, 3990000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (45, N'Chuột Logitech G502 X Plus LightSpeed White', 3501000.0000, 10, 30, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết chuột Logitech G502 X Plus LightSpeed White</strong></h2>

<p><a href="https://gearvn.com/collections/chuot-logitech" target="_blank">Chuột Logitech</a>&nbsp;G502 X PLUS White l&agrave; sản phẩm mới nhất của series G502 đ&igrave;nh đ&aacute;m. Được thiết kế lại v&agrave; cải tiến với c&ocirc;ng nghệ chơi game hiện đại, bao gồm c&ocirc;ng tắc Lightforce lai quang học - cơ học&nbsp;đầu ti&ecirc;n, Lightspeed kh&ocirc;ng d&acirc;y, LIGHT SYNC RGB v&agrave; cảm biến quang học Hero&nbsp;25K,&nbsp;<strong>Logitech G502 X PLUS&nbsp;</strong>chắc chắn l&agrave; một trong những&nbsp;<a href="https://gearvn.com/collections/gaming-gear" target="_blank">gaming gear</a>&nbsp;đ&aacute;ng mua nhất cho game thủ thời gian sắp tới.</p>

<p><img alt="GEARVN - Chuột Logitech G502 X Plus LightSpeed White" src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g502-x-plus-lightspeed-white-1_890b34211e5a458e89b10e5c495be118.png" /></p>

<h3><strong>Switch LightForce lai quang học - cơ học</strong></h3>

<p>C&aacute;c ph&iacute;m switch quang học lai cơ học đột ph&aacute;, đạt được cấp độ mới về tốc độ v&agrave; độ tin cậy th&ocirc;ng qua k&iacute;ch hoạt quang học. Song song đ&oacute;, k&iacute;ch hoạt cơ học giữ lại phản hồi r&otilde; r&agrave;ng, trực quan m&agrave; người chơi y&ecirc;u th&iacute;ch.&nbsp;</p>

<h3><strong>Hỗ trợ đ&egrave;n RGB Light Sync</strong></h3>

<p>C&ocirc;ng nghệ RGB Light Sync cho ph&eacute;p chiếu s&aacute;ng to&agrave;n phổ động với khả năng kiểm so&aacute;t ho&agrave;n to&agrave;n khoảng 16,8 triệu m&agrave;u sống động trong d&atilde;y 8 đ&egrave;n LED. T&iacute;nh năng ph&aacute;t hiện chơi chủ động&nbsp;sẽ tự động tắt đ&egrave;n khi bạn d&ugrave;ng tay che n&oacute;, gi&uacute;p tiết kiệm pin. Người d&ugrave;ng c&oacute; thể t&ugrave;y chỉnh mọi thứ tr&ecirc;n&nbsp;phần mềm trực quan&nbsp;G HUB, bao gồm c&aacute; nh&acirc;n h&oacute;a n&acirc;ng cao v&agrave; c&aacute;c hiệu ứng phương tiện kh&aacute;c trong &quot;hệ sinh th&aacute;i&quot; của Logitech c&oacute; thể kể đến như&nbsp;<a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank">b&agrave;n ph&iacute;m</a>,&nbsp;<a href="https://gearvn.com/pages/tai-nghe-may-tinh" target="_blank">tai nghe m&aacute;y t&iacute;nh</a>,....</p>

<p><img alt="GEARVN - Chuột Logitech G502 X Plus LightSpeed White" src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g502-x-plus-lightspeed-white-3_4d40ff828e874d0abd2d5bd9030e8883.png" /></p>

<h3><strong>C&ocirc;ng nghệ Lightspeed kh&ocirc;ng d&acirc;y</strong></h3>

<p>Kết nối cấp độ chuy&ecirc;n nghiệp, hiện c&oacute; giao thức được cập nhật, đ&aacute;p ứng nhanh hơn 68% so với thế hệ trước. Với hiệu suất đ&aacute;ng kinh ngạc của c&ocirc;ng nghệ Lightspeed, Logitech G502 X PLUSđược đ&aacute;nh gi&aacute; l&agrave; một trong những d&ograve;ng&nbsp;<a href="https://gearvn.com/collections/chuot-wireless" target="_blank">chuột kh&ocirc;ng d&acirc;y</a>&nbsp;sở hữu độ trễ cực thấp, tốc độ phản hồi cao. Đồng thời, c&oacute; thể đạt được thời lượng pin l&ecirc;n đến 130 giờ khi tắt RGB v&agrave; l&ecirc;n đến 37 giờ khi bật RGB.</p>

<p><img alt="GEARVN - Chuột Logitech G502 X Plus LightSpeed White" src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g502-x-plus-lightspeed-white-4_6e0e0e5f371247bbb2539cd29daae072.png" /></p>

<h3><strong>Cảm biến Hero 25K</strong></h3>

<p>C&aacute;c cảm biến chơi game hiện đại tr&ecirc;n c&aacute;c d&ograve;ng chuột gaming Logitech đều&nbsp;đạt được độ ch&iacute;nh x&aacute;c ở cấp độ micromet th&ocirc;ng qua việc l&agrave;m mịn, lọc v&agrave; tăng tốc. Cảm biến Hero&nbsp;25K mang lại hiệu suất, độ ch&iacute;nh x&aacute;c v&agrave; tiết kiệm năng lượng chưa từng c&oacute; với khả năng theo d&otilde;i vượt trội v&agrave; mức ti&ecirc;u thụ năng lượng th&ocirc;ng minh.</p>

<h3><strong>C&ocirc;ng tắc DPI v&agrave; con lăn ở chế độ k&eacute;p</strong></h3>

<p>Logitech đ&atilde; thiết kế lại c&ocirc;ng tắc DPI để người d&ugrave;ng c&oacute; thể chọn cấu h&igrave;nh ph&ugrave; hợp với kiểu tay cầm v&agrave; phong c&aacute;ch chơi game ri&ecirc;ng biệt của m&igrave;nh. Bạn ho&agrave;n to&agrave;n c&oacute; thể th&aacute;o v&agrave; lật ngược lại để đưa n&oacute; gần ng&oacute;n tay c&aacute;i của bạn hơn hoặc thay thế n&oacute; bằng nắp n&uacute;t đi k&egrave;m. B&ecirc;n cạnh đ&oacute;, con lăn tr&ecirc;n Logitech G502 X PLUS cũng được trang bị hai chế độ tiện lợi. Cuộn tự do nhẹ nh&agrave;ng v&agrave; si&ecirc;u nhạy. Hoặc chế độ nhạy c&oacute;c để cuộn ch&iacute;nh x&aacute;c hơn.</p>

<p><img alt="GEARVN - Chuột Logitech G502 X Plus LightSpeed White" src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g502-x-plus-lightspeed-white-2_4ec6830349224735bab77c3314c28527.png" /></p>

<h3><strong>Tương th&iacute;ch với PowerPlay</strong></h3>

<p>PowerPlay đ&atilde; khiến việc sạc pin trở th&agrave;nh dĩ v&atilde;ng khi n&oacute; c&oacute; thể tự động sạc nhanh thiết bị bất kể l&uacute;c chơi game hay kh&ocirc;ng l&agrave;m g&igrave; cả. Hoạt động bằng cơ chế sạc pin kh&ocirc;ng d&acirc;y độc đ&aacute;o, bạn kh&ocirc;ng cần lo lắng&nbsp;<a href="https://gearvn.com/pages/chuot-may-tinh" target="_blank">chuột m&aacute;y t&iacute;nh</a>&nbsp;hết pin đột ngột khi đang chơi game nữa.</p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><strong>Cảm biến</strong></p>
			</td>
			<td>HERO 25K</td>
		</tr>
		<tr>
			<td><strong>Kết nối</strong></td>
			<td>C&ocirc;ng nghệ kh&ocirc;ng d&acirc;y LIGHTSPEED</td>
		</tr>
		<tr>
			<td>
			<p><strong>DPI</strong></p>
			</td>
			<td>100 &ndash; 25.600</td>
		</tr>
		<tr>
			<td><strong>Led</strong></td>
			<td>Chiếu s&aacute;ng RGB 8 v&ugrave;ng</td>
		</tr>
		<tr>
			<td><strong>Cổng sạc</strong></td>
			<td>USB-C</td>
		</tr>
		<tr>
			<td><strong>Thời lượng pin</strong></td>
			<td>L&ecirc;n đến&nbsp;130 giờ (37 giờ khi bật RGB)</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tăng tốc tối đa</strong></p>
			</td>
			<td>&gt; 40G2</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tốc độ tối đa</strong></p>
			</td>
			<td>&gt; 400 IPS&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p><strong>N&uacute;t</strong></p>
			</td>
			<td>13 N&uacute;t điều khiển c&oacute; thể lập tr&igrave;nh</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước</strong></p>
			</td>
			<td>
			<p>131,4 mm x&nbsp;41,1 mm x 79,2 mm</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Trọng lượng</strong></p>
			</td>
			<td>106 g</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tương th&iacute;ch</strong></p>
			</td>
			<td>
			<ul>
				<li>Windows&nbsp;10 trở l&ecirc;n</li>
				<li>macOS 10.14 trở l&ecirc;n</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 36, 9, 7, 0, 3890000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (46, N'Laptop ASUS VivoBook M513UA L1240T', 15120000.0000, 20, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;Laptop ASUS VivoBook M513UA L1240T</strong></h2>

<p><a href="https://gearvn.com/collections/laptop-asus-vivobook-series">Asus VivoBook</a>&nbsp;M513UA&nbsp;thừa hưởng những n&eacute;t đẹp tinh tế của d&ograve;ng Vivobook đồng thời sở hữu cấu h&igrave;nh mạnh mẽ nhờ sử dụng chip AMD R7 mang đến nhiều trải nhiệm ấn tượng.</p>

<p>&nbsp;</p>

<h3><strong>Thiết kế xứng tầm đẳng cấp</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-vivobook-m513ua-ej033t_91248962985f48a58d59d5262caaa907_1024x1024.png" /></p>

<p>&nbsp;</p>

<p>Laptop ASUS VivoBook M513UA L1240T sở hữu thiết kế của một chiếc&nbsp;<strong><a href="https://gearvn.com/collections/laptop-doanh-nhan" target="_blank">laptop doanh nh&acirc;n</a></strong>&nbsp;sang trọng, lịch l&atilde;m. Những điều ấy đến từ cấu tạo vỏ m&aacute;y từ kim loại cao cấp nguy&ecirc;n khối cho sự chắc chắn cao, bảo vệ ho&agrave;n hảo linh kiện qu&yacute; gi&aacute; b&ecirc;n trong, nắp m&aacute;y được l&agrave;m nh&aacute;m v&agrave; phủ&nbsp;tone x&aacute;m bạc&nbsp;&ndash; m&agrave;u của sự đẳng cấp, logo Vivobook được cắt bằng c&ocirc;ng nghệ cap phủ lớp tr&aacute;ng gương n&ecirc;n tỏa s&aacute;ng nổi bật thu h&uacute;t mọi &aacute;nh nh&igrave;n.</p>

<p>B&ecirc;n cạnh đ&oacute; l&agrave; những đường bo viền tinh tế tạo cảm gi&aacute;c d&agrave;y dặn, vu&ocirc;ng vắn với c&acirc;n nặng l&yacute; tưởng&nbsp;1.7kg&nbsp;v&agrave; k&iacute;ch thước chiều rộng 35.98 x chiều s&acirc;u 23.53 x chiều cao 1.86 cm tr&ecirc;n tay chỉ như cầm cuốn tạp ch&iacute; hết sức gọn nhẹ, tiện dụng để c&oacute; thể sử dụng bất k&igrave; l&uacute;c n&agrave;o.</p>

<p>Cổng kết nối được bố tr&iacute; gọn g&agrave;ng hai b&ecirc;n cạnh m&aacute;y, bao gồm 4 cổng USB phục vụ cho việc truyền/tải dữ liệu ứng dụng nhanh ch&oacute;ng, kết nối hay sạc c&aacute;c thiết bị như&nbsp;<a href="https://gearvn.com/collections/chuot-wireless" target="_blank">chuột kh&ocirc;ng d&acirc;y</a>&nbsp;hoặc b&agrave;n ph&iacute;m một c&aacute;ch đa dạng n&acirc;ng cao hiệu suất cho c&ocirc;ng việc. C&ugrave;ng với cổng HDMI 1.4 thu ph&oacute;ng h&igrave;nh ảnh ra m&agrave;n h&igrave;nh chiếu lớn cho c&aacute;c buổi thuyết tr&igrave;nh hoặc biến chiếc laptop th&agrave;nh rạp chiếu phim mini. Một khe cắm thẻ nhớ v&agrave; một jack cắm 3.5mm để nghe nhạc/ghi &acirc;m thanh&hellip;sống động, trọn vẹn v&agrave; đầy đủ.</p>

<h3><strong>Sử dụng chip AMD thế hệ mới</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-vivobook-m513ua-ej033t-2_3d197d065a324a6285849d8d5d7a5894_1024x1024.png" /></p>

<p>&nbsp;</p>

<p>Asus trang bị cho chiếc&nbsp;<a href="https://gearvn.com/pages/laptop" target="_blank">laptop</a>&nbsp;n&agrave;y chip&nbsp;AMD Ryzen 7-5700U hỗ trợ cho qu&aacute; tr&igrave;nh phản hồi t&aacute;c vụ nhanh ch&oacute;ng, chạy ứng dụng văn ph&ograve;ng hay thậm ch&iacute; đồ họa n&acirc;ng cao hay game đơn giản một c&aacute;ch mượt m&agrave;, tiết kiệm thời gian khởi động m&aacute;y để n&acirc;ng cao hiệu xuất xử l&yacute; c&ocirc;ng việc tối đa.</p>

<p>Bạn cũng đừng qu&ecirc;n&nbsp;RAM 8GB DDR4 on board&nbsp;v&agrave; ổ cứng dung lượng&nbsp;512GB SSD M.2 NVMe PCle 3.0&nbsp;đ&oacute;ng vai tr&ograve; quan trọng quyết định đến việc thao t&aacute;c qua lại, c&ugrave;ng l&uacute;c tr&ecirc;n nhiều tab/ứng dụng c&oacute; bị giật lag hay kh&ocirc;ng v&agrave; chiếc laptop th&acirc;n y&ecirc;u của m&igrave;nh c&oacute; đủ để lưu trữ tất cả những dữ liệu quan trọng.</p>

<h3><strong>Cảm nhận h&igrave;nh ảnh qua m&agrave;n h&igrave;nh hiện đại</strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-vivobook-m513ua-ej033t-1_46cd152ecf5346b0ac40351774c2eecd_1024x1024.png" /></p>

<p>Chất lượng h&igrave;nh ảnh được cải tiến tối đa th&ocirc;ng qua card đồ họa&nbsp;AMD Radeon Graphics&nbsp;kết hợp với&nbsp;<a href="https://gearvn.com/pages/man-hinh" target="_blank">m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh</a>&nbsp;15.6 inch full HD chống l&oacute;a v&agrave; c&ocirc;ng nghệ tấm nền OLED mang đến những khung h&igrave;nh ch&acirc;n thực, sắc n&eacute;t tạo điều kiện để người d&ugrave;ng tận hưởng những thước phim đẳng cấp, thoải sức s&aacute;ng tạo đồ họa hay bắt kịp những chuyển động trong game trong cả những m&ocirc;i trường thiếu s&aacute;ng.</p>

<p>Phục vụ sự nghiệp livestream, họp zoom hay callvideo&hellip;camera HD 720p&nbsp;được trang bị nơi ch&iacute;nh giữa viền tr&ecirc;n m&agrave;n h&igrave;nh thu h&igrave;nh ảnh tốt hơn từ đ&oacute; phản chiếu được tối đa.</p>

<h3><strong>Sở hữu b&agrave;n ph&iacute;m chuẩn x&aacute;c, kh&ocirc;ng b&iacute; ng&oacute;n tay</strong></h3>

<p>Mẫu&nbsp;<a href="https://gearvn.com/collections/laptop-asus">laptop Asus</a>&nbsp;M513UA được sử dụng mẫu&nbsp;b&agrave;n ph&iacute;m chiclet&nbsp;hiện đại với h&agrave;nh tr&igrave;nh ph&iacute;m 1,4mm cho ph&eacute;p người d&ugrave;ng thao t&aacute;c với ph&iacute;m nhanh v&agrave; chuẩn x&aacute;c, kh&ocirc;ng bị b&iacute; ng&oacute;n khi phải soạn văn bản d&agrave;i hay nhập nhiều dữ liệu. Đặc biệt, ph&iacute;m&nbsp;Enter&nbsp;nổi bật tr&ecirc;n cấu tr&uacute;c liền mạch chung của to&agrave;n b&agrave;n ph&iacute;m nhờ viền v&agrave;ng noen để dễ d&agrave;ng định vị thao t&aacute;c tăng hiệu suất xử l&yacute; c&ocirc;ng việc.</p>

<p>Điểm cộng đ&aacute;ng khen nhất ở d&ograve;ng laptop n&agrave;y l&agrave;&nbsp;bảo mật v&acirc;n tay&nbsp;cho việc đăng nhập chỉ bằng một chạm tiện dụng, cũng từ đ&oacute; m&agrave; những dữ liệu của bạn được bảo vệ tối ưu nhất. Touchpad &ecirc;m v&agrave; mịn, cảm ứng đa điểm sử dụng kh&aacute; thoải m&aacute;i m&agrave; kh&ocirc;ng cần kết nối th&ecirc;m chuột ngo&agrave;i. Để hỗ trợ sự dụng nhiều giờ liền, người d&ugrave;ng c&oacute; thể kết hợp với c&aacute;c loại&nbsp;<a href="https://gearvn.com/collections/ban-phim-duoi-1-trieu" target="_blank">b&agrave;n ph&iacute;m kh&ocirc;ng d&acirc;y</a>&nbsp;c&oacute; tr&ecirc;n thị trường để mang đến hiệu quả cho c&ocirc;ng việc v&agrave; n&acirc;ng cao chất lượng giải tr&iacute;.</p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><strong>CPU</strong></td>
			<td>AMD Ryzen 7-5700U 1.8GHz up to 4.3GHz 8MB</td>
		</tr>
		<tr>
			<td><strong>RAM</strong></td>
			<td>8GB (4GB Onboard + 4GB) DDR4 3200MHz&nbsp;(1x SO-DIMM socket, up to 20GB SDRAM)</td>
		</tr>
		<tr>
			<td><strong>Ổ Cứng</strong></td>
			<td>512GB SSD M.2 PCIE G3X2&nbsp;(C&ograve;n trống 1 khe&nbsp;2.5&quot; SATA)</td>
		</tr>
		<tr>
			<td><strong>VGA</strong></td>
			<td>AMD Radeon Graphics</td>
		</tr>
		<tr>
			<td><strong>M&agrave;n h&igrave;nh</strong></td>
			<td><strong>OLED</strong>&nbsp;15.6&rdquo;&nbsp;FHD (1920 x 1080),&nbsp;60 Hz, 400 nits,&nbsp;<strong>100% DCI-P3</strong></td>
		</tr>
		<tr>
			<td><strong>Cổng giao tiếp</strong></td>
			<td>1x Type-A USB 3.1 (Gen 1)<br />
			1x Type-C USB 3.1 (Gen 1)<br />
			2x Type-A USB 2.0<br />
			1x HDMI<br />
			FingerPrint</td>
		</tr>
		<tr>
			<td><strong>Led-Keyboard</strong></td>
			<td>None</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>Harman Kardon</td>
		</tr>
		<tr>
			<td><strong>Đọc thẻ nhớ</strong></td>
			<td>Micro SD card reader</td>
		</tr>
		<tr>
			<td><strong>NumberPad</strong></td>
			<td>None</td>
		</tr>
		<tr>
			<td><strong>Chuẩn LAN</strong></td>
			<td>None</td>
		</tr>
		<tr>
			<td><strong>Chuẩn WIFI</strong></td>
			<td>Wi-Fi 6 (802.11 ax (2x2))</td>
		</tr>
		<tr>
			<td><strong>Bluetooth</strong></td>
			<td>v5.0</td>
		</tr>
		<tr>
			<td><strong>Webcam</strong></td>
			<td>HD Camera</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 10 Home</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>3 Cells 42WHrs</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>1.8kg</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Bạc</td>
		</tr>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>35.98 x 23.53 x 1.86 ~ 1.86 (cm)</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành nếu có lỗi từ nhà sản xuất', 12, CAST(N'2023-12-25' AS Date), 1, 37, 2, 22, 0, 18900000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (47, N'Laptop Asus ZenBook Flip OLED UP3404VA KN039W', 30510000.0000, 10, 50, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop Asus ZenBook Flip OLED UP3404VA KN039W</strong></h2>

<p>Asus ZenBook Flip OLED UP3404VA KN039W mang đến một si&ecirc;u phẩm&nbsp;<a href="https://gearvn.com/collections/laptop-hoc-tap-va-lam-viec-tren-20-trieu" target="_blank">laptop học tập l&agrave;m việc</a>. Sở hữu sức mạnh từ con chip Intel Gen13 mới nhất để xử l&yacute; mọi c&ocirc;ng việc từ đơn giản đến phức tạp. M&agrave;n h&igrave;nh cảm ứng OLED hứa hẹn sẽ đem lại những trải nghiệm hấp dẫn cho bạn.&nbsp;</p>

<p><img alt="GEARVN Laptop Asus ZenBook Flip OLED UP3404VA KN039W" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-zenbook-flip-oled-up3404va-kn039w-1_d39180f2839e46acad0020a1827c02a9.png" /></p>

<p>&nbsp;</p>

<h3><strong>Thiết kế mỏng nhẹ, sang trọng</strong></h3>

<p>Nổi tiếng với sự đẳng cấp, sang trọng m&agrave; m&igrave;nh mang lại,&nbsp;<a href="https://gearvn.com/collections/laptop-asus-vivobook-series" target="_blank">Asus ZenBook</a>&nbsp;OLED UP3404VA KN039W vẫn sở hữu thiết kế mỏng nhẹ, cứng c&aacute;p thường thấy. Mặt A t&ocirc; điểm bằng những đường sọc c&oacute; chủ đ&iacute;ch tăng th&ecirc;m phần ấn tượng về một n&eacute;t đẹp hiện đại. Bản lề thiết kế th&ocirc;ng minh gập 360 độ nhanh ch&oacute;ng cho ph&eacute;p bạn biến một chiếc laptop th&agrave;nh m&aacute;y t&iacute;nh bản trong t&iacute;ch tắc.&nbsp;</p>

<p><img alt="GEARVN Laptop Asus ZenBook Flip OLED UP3404VA KN039W" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-zenbook-flip-oled-up3404va-kn039w-6_34c7ea7e28d5490da688b20b8733871b.png" /></p>

<h3><strong>Cấu h&igrave;nh mạnh mẽ</strong></h3>

<p>Tuy l&agrave; một chiếc&nbsp;<a href="https://gearvn.com/blogs/thu-thuat-giai-dap/laptop-ultrabook-la-gi-phu-hop-voi-nhung-ai" target="_blank">laptop ultrabook</a>&nbsp;với card đồ họa Intel Iris Xe Graphics (d&ograve;ng card onboard mạnh mẽ nhất hiện nay của nh&agrave; Intel) c&ugrave;ng CPU Intel Core i7-1360P, laptop Asus ZenBook Flip OLED UP3404VA KN039W sở hữu một hiệu năng v&ocirc; c&ugrave;ng ấn tượng&nbsp;m&agrave; &iacute;t d&ograve;ng ultrabook n&agrave;o trong tầm gi&aacute; c&oacute; được.</p>

<p><img alt="GEARVN Laptop Asus ZenBook Flip OLED UP3404VA KN039W" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-zenbook-flip-oled-up3404va-kn039w-4_8b4b0a5927ce4622a3fea7a27647d8e9.png" /></p>

<p>Đa nhiệm mượt m&agrave; c&ugrave;ng l&uacute;c với nhiều tab ứng dụng tr&ecirc;n Asus Zenbook đ&atilde; kh&ocirc;ng c&ograve;n l&agrave; điều mơ ước với bộ nhớ RAM 16GB&nbsp;LPDDR5. Đi c&ugrave;ng l&agrave; ổ cứng SSD 512GB hỗ trợ khởi động m&aacute;y nhanh hơn v&agrave; lưu trữ nhiều th&ocirc;ng tin dữ liệu hơn tr&ecirc;n m&aacute;y một c&aacute;ch an to&agrave;n, nhanh ch&oacute;ng.</p>

<h3><strong>M&agrave;n h&igrave;nh cảm ứng Oled ch&acirc;n thật</strong></h3>

<p>Nếu trước đ&acirc;y m&agrave;n h&igrave;nh Oled chỉ được &aacute;p dụng cho những mẫu laptop cao cấp th&igrave; hiện nay Asus đang bắt đầu &aacute;p dụng cho c&aacute;c d&ograve;ng laptop tầm trung v&agrave;&nbsp;<a href="https://gearvn.com/collections/laptop-hoc-sinh-sinh-vien">laptop cho sinh vi&ecirc;n</a>&nbsp;gi&aacute; rẻ. Với tấm nền Oled hỗ trợ 2.8K với 90Hz refresh rate, 550 nits, 100% DCI-P3 mang đến cho bạn trải nghiệm nh&igrave;n thật sự ấn tượng.&nbsp;H&igrave;nh ảnh hiển thị kh&ocirc;ng chỉ tươi s&aacute;ng, ch&acirc;n thật m&agrave; c&ograve;n gần như kh&ocirc;ng c&oacute; g&oacute;c chết. Từ đ&oacute; gi&uacute;p n&acirc;ng cao trải nghiệm giải tr&iacute; cho người d&ugrave;ng l&ecirc;n một tầm cao mới. Kh&ocirc;ng chỉ như thế m&agrave;n h&igrave;nh Asus ZenBook c&ograve;n hỗ trợ cảm ứng n&ecirc;n việc lướt web, giải tr&iacute; hay l&agrave;m việc c&oacute; phần tiện lợi hơn rất nhiều.</p>

<p><img alt="GEARVN Laptop Asus ZenBook Flip OLED UP3404VA KN039W" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-zenbook-flip-oled-up3404va-kn039w-2_f11aaba77d8b477bbd98d9f166481cfa.png" /></p>

<h3><strong>B&agrave;n ph&iacute;m cứng c&aacute;p, touchpad th&ocirc;ng minh</strong></h3>

<p>Với việc được l&agrave;m bằng nh&ocirc;m n&ecirc;n phần b&agrave;n ph&iacute;m của m&aacute;y rất chắc chắn. Gần như kh&ocirc;ng hề c&oacute; cảm gi&aacute;c bị ch&ugrave;ng xuống khi g&otilde; ph&iacute;m. Tuy rằng chỉ c&oacute; k&iacute;ch thước 14 inch nhưng b&agrave;n ph&iacute;m của m&aacute;y kh&ocirc;ng hề chật chội m&agrave; c&ograve;n kh&aacute; tho&aacute;ng gi&uacute;p việc g&otilde; ph&iacute;m trở n&ecirc;n nhanh ch&oacute;ng v&agrave; chuẩn x&aacute;c hơn.</p>

<p><img alt="GEARVN Laptop Asus ZenBook Flip OLED UP3404VA KN039W" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-zenbook-flip-oled-up3404va-kn039w-7_ad4846e753794abe9e70d0710bc1fb06.png" /></p>

<p>B&ecirc;n cạnh b&agrave;n ph&iacute;m th&igrave; touchpad cũng l&agrave; phần kh&ocirc;ng thể kh&ocirc;ng nhắc đến. Với k&iacute;ch thước chỉ 14 inch c&ugrave;ng b&agrave;n ph&iacute;m nhỏ gọn th&igrave; Asus đ&atilde; rất th&ocirc;ng minh khi cho touchpad hỗ trợ b&agrave;n ph&iacute;m số. Điều n&agrave;y kh&ocirc;ng chỉ tiết kiệm kh&ocirc;ng gian m&agrave; c&ograve;n cho người d&ugrave;ng đầy đủ mọi t&iacute;nh năng m&agrave; một bộ b&agrave;n ph&iacute;m fullsize sở hữu.</p>

<h3><strong>Đa dạng cổng kết nối</strong></h3>

<p>L&agrave; mẫu&nbsp;<a href="https://gearvn.com/collections/laptop" target="_blank">laptop</a>&nbsp;ultrabook n&ecirc;n hiển nhi&ecirc;n Asus ZenBook Flip OLED UP3404VA KN039W cần rất nhiều cổng kết nối để hỗ trợ cho c&ocirc;ng việc. M&aacute;y được trang bị:</p>

<ul>
	<li>1x USB 3.2 Gen 2 Type-A</li>
	<li>2x Thunderbolt&trade; 4 supports display / power delivery</li>
	<li>1x HDMI 2.0b</li>
	<li>1x 3.5mm Combo Audio Jack</li>
</ul>

<p>&nbsp;</p>

<p><img alt="GEARVN Laptop Asus ZenBook Flip OLED UP3404VA KN039W" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-zenbook-flip-oled-up3404va-kn039w-10_a6b9859b328a458b9221a0f0e402ef3c.png" /></p>

<p>&nbsp;</p>

<h3><strong>Độ bền cao</strong></h3>

<p><a href="https://gearvn.com/collections/laptop-asus">Laptop Asus</a>&nbsp;ZenBook OLED sử dụng khung nh&ocirc;m n&ecirc;n m&aacute;y c&oacute; hiệu quả tản nhiệt tốt, khả năng chịu lực hiệu quả. Bởi l&agrave;m từ chất liệu nh&ocirc;m n&ecirc;n khung m&aacute;y chống biến dạng kh&aacute; tốt khi va đập, từ đ&oacute; gi&uacute;p người d&ugrave;ng thoải m&aacute;i hơn trong qu&aacute; tr&igrave;nh sử dụng.</p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly">CPU</a></strong></td>
			<td>Intel&reg; Core&trade; i7-1360P Processor 2.2 GHz (18MB Cache, up to 5.0 GHz, 12 cores, 16 Threads)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ram-pc">RAM</a></strong></td>
			<td>16GB LPDDR5 onboard (kh&ocirc;ng n&acirc;ng cấp)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/hdd-o-cung-laptop" target="_blank">Ổ cứng</a></strong></td>
			<td>512GB M.2 NVMe&trade; PCIe&reg; 4.0&nbsp;<a href="https://gearvn.com/collections/ssd-o-cung-the-ran">SSD</a></td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/vga-card-man-hinh">Card đồ họa</a></strong></td>
			<td>Intel Iris Xe Graphics</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/pages/man-hinh">M&agrave;n h&igrave;nh</a></strong></td>
			<td>14.0-inch, 2.8K (2880 x 1800) OLED 16:10, 90Hz refresh rate, 550nits, 100% DCI-P3, PANTONE Validated,&nbsp;<strong>Touch screen</strong>, With stylus support, Screen-to-body ratio: 87 ％</td>
		</tr>
		<tr>
			<td><strong>Cổng kết nối</strong></td>
			<td>
			<ul>
				<li>1x USB 3.2 Gen 2 Type-A</li>
				<li>2x Thunderbolt&trade; 4 supports display / power delivery</li>
				<li>1x HDMI 2.0b</li>
				<li>1x 3.5mm Combo Audio Jack</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ban-phim-may-tinh/">B&agrave;n ph&iacute;m</a></strong></td>
			<td>Support NumberPad<br />
			Backlit Chiclet Keyboard</td>
		</tr>
		<tr>
			<td><strong>Camera</strong></td>
			<td>720p HD camera With privacy shutter</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>Harman/kardon (Premium) with Cortana and Alexa voice-recognition support</td>
		</tr>
		<tr>
			<td><strong>Wifi + Bluetooth</strong></td>
			<td>Wi-Fi 6E(802.11ax) (Dual band) 2*2 + Bluetooth 5.2</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>75WHrs, 3S1P, 3-cell Li-ion</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>1.5 kg</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Ponder Blue</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>31.10 x 22.30 x 1.59 ~ 1.59 cm</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 38, 2, 22, 0, 33900000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (48, N'Laptop Lenovo Ideapad 1 14ALC7 82R30077VN', 12591000.0000, 10, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop&nbsp;Laptop Lenovo Ideapad</strong></h2>

<p>&nbsp;</p>

<p>Bạn cần t&igrave;m một chiếc&nbsp;<a href="https://gearvn.com/collections/laptop">laptop</a>&nbsp;cơ động c&oacute; thể c&ugrave;ng bạn đến bất cứ đ&acirc;u. Vậy&nbsp;<strong>Laptop Lenovo Ideapad 1 14ALC7 82R30077VN</strong>&nbsp;c&oacute; thể l&agrave; người bạn đồng h&agrave;nh tuyệt vời của bạn. Với thiết kế mỏng nhẹ chỉ c&oacute; 1.38kg bạn sẽ kh&ocirc;ng cảm thấy qu&aacute; nặng nề khi mang theo người bạn n&agrave;y.</p>

<p><img alt="Laptop Lenovo Ideapad 1 14ALC7" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-ideapad-1-14alc7-82r30077vn-1_dd3f8604524248a09050700d3e15ea9b_grande.png" /></p>

<h3><strong>Xử l&yacute; đa nhiệm với CPU AMD Ryzen 7</strong></h3>

<p>Tuy được xem l&agrave; một laptop văn ph&ograve;ng nhưng Laptop Lenovo Ideapad 1 14ALC7 lại sở hữu cho m&igrave;nh sức mạnh của AMD&nbsp;<a href="https://gearvn.com/collections/cpu-amd-ryzen-7">Ryzen 7</a>&nbsp;gi&uacute;p bạn thoải m&aacute;i trong việc sử dụng những ứng dụng thiết kế đồ hoạ cơ bản. Kết hợp th&ecirc;m sự hỗ trợ từ&nbsp;<a href="https://gearvn.com/collections/ddr4-16g">16GB RAM,</a>&nbsp; Laptop Lenovo Ideapad 1 14ALC7 cho ph&eacute;p người d&ugrave;ng c&oacute; thể chuyển c&aacute;c tab l&agrave;m việc kh&aacute;c nhau một c&aacute;ch mượt m&agrave;.&nbsp;</p>

<p><img alt="Laptop Lenovo Ideapad 1 14ALC7" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-ideapad-1-14alc7-82r30077vn-6_acee3e8d9c10488286fc5bdae5df55cd_grande.png" /></p>

<h3><strong>Trải nghiệm h&igrave;nh ảnh đa sắc m&agrave;u.&nbsp;</strong></h3>

<p>Lenovo Ideapad 1 14ALC7 sở hữu cho m&igrave;nh m&agrave;n h&igrave;nh 14inch với độ ph&acirc;n giải Full HD, mang đến sự trải nghiệm về h&igrave;nh ảnh cho người d&ugrave;ng tốt nhất.&nbsp;</p>

<h3><strong>Giải tr&iacute; với bộ đồ hoạ tuyệt đỉnh c&ugrave;ng Card AMD Radeon Graphics</strong></h3>

<p>Sở hữu card đồ hoạ như AMD Radeon Graphics kết hợp với m&agrave;n h&igrave;nh Full HD, Laptop Lenovo Ideapad 1 14ALC7 v&agrave;&nbsp;<a href="https://gearvn.com/collections/chuot-may-tinh">chuột gaming</a>&nbsp;bạn sẽ c&oacute; thể chiến được nhiều con game y&ecirc;u cầu cấu h&igrave;nh đồ hoạ cao. Th&ecirc;m v&agrave;o đ&oacute; l&agrave; SSD 512GB bạn c&oacute; thể trải nghiệm nhiều con game kh&aacute;c nhau m&agrave; kh&ocirc;ng sợ d&ugrave;ng lượng bị cạn kiệt một c&aacute;ch nhanh ch&oacute;ng</p>

<p><img alt="Laptop Lenovo Ideapad 1 14ALC7" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-ideapad-1-14alc7-82r30077vn-2_3da8c6a0c5b24c16bfb423b74ccb7be8_grande.png" /></p>

<h3><strong>Bảo mật h&igrave;nh ảnh tuyệt đối</strong></h3>

<p>Bạn c&oacute; thể thoải m&aacute;i tham gia c&aacute;c cuộc họp ở mọi nơi nhờ chiếc Webcam 720P của Laptop Lenovo Ideapad 1 14ALC7. Kh&ocirc;ng chỉ vậy m&agrave; lần n&agrave;y&nbsp;<a href="https://gearvn.com/collections/laptop-lenovo-hoc-tap-va-lam-viec">laptop Lenovo</a>&nbsp;c&oacute; ph&aacute;t triển th&ecirc;m t&iacute;nh năng Private camera gi&uacute;p bảo mật h&igrave;nh ảnh c&aacute; nh&acirc;n của bạn trong những l&uacute;c kh&ocirc;ng cần thiết tăng t&iacute;nh năng bảo mật cho người d&ugrave;ng.&nbsp;</p>

<p><img alt="Laptop Lenovo Ideapad 1 14ALC7" src="https://file.hstatic.net/200000722513/file/gearvn-laptop-lenovo-ideapad-1-14alc7-82r30077vn-3_6c165ca51128439c998aff146a3a688a_grande.png" /></p>
', N'<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly"><strong>CPU</strong></a></td>
			<td>AMD Ryzen&trade; 7 5700U (8C / 16T, 1.8 / 4.3GHz, 4MB L2 / 8MB L3)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/ram-pc"><strong>Ram</strong></a></td>
			<td>16GB (2x8GB) DDR4 3200MHz (8GB Onboard + 8GB So-Dimm, max 16GB)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/ssd-o-cung-the-ran"><strong>SSD</strong></a></td>
			<td>512GB SSD M.2 2242 PCIe&reg; 4.0x4 NVMe&reg; (Kh&ocirc;ng n&acirc;ng cấp)</td>
		</tr>
		<tr>
			<td><a href="https://gearvn.com/collections/vga-card-man-hinh"><strong>Card đồ họa</strong></a></td>
			<td>Integrated AMD Radeon&trade; Graphics</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/pages/man-hinh">M&agrave;n h&igrave;nh</a></strong></td>
			<td>14&quot; FHD (1920x1080) IPS 250nits Anti-glare</td>
		</tr>
		<tr>
			<td><strong>Cổng giao tiếp</strong></td>
			<td>1x Card reader<br />
			1x HDMI&reg; 1.4b<br />
			1x Headphone / microphone combo jack (3.5mm)<br />
			1x Power connector<br />
			1x USB 2.0<br />
			1x USB 3.2 Gen 1<br />
			1x USB-C&reg; 3.2 Gen 1 (support data transfer only)</td>
		</tr>
		<tr>
			<td><strong>B&agrave;n ph&iacute;m</strong></td>
			<td>B&agrave;n ph&iacute;m ti&ecirc;u chuẩn, Kh&ocirc;ng LED</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>Stereo speakers, 1.5W x2, Dolby&reg; Audio&trade;</td>
		</tr>
		<tr>
			<td><strong>Chu&acirc;̉n LAN</strong></td>
			<td>None</td>
		</tr>
		<tr>
			<td><strong>Chuẩn WIFI</strong></td>
			<td>Wi-Fi 6, 11ac 2x2</td>
		</tr>
		<tr>
			<td><strong>Bluetooth</strong></td>
			<td>Bluetooth&reg; 5.0</td>
		</tr>
		<tr>
			<td><strong>Webcam</strong></td>
			<td>HD 720p with Privacy Shutter</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home&nbsp;Single Language</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>Integrated 42Wh</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>1.38 kg</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Cloud Grey</td>
		</tr>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>325.3 x 216.5 x 17.9 mm&nbsp;</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 39, 2, 21, 0, 13990000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (49, N'Laptop LG Gram 2022 14Z90Q G.AJ53A5', 25032000.0000, 20, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop LG Gram 2022 14Z90Q G.AJ53A5</strong></h2>

<p>Nếu LG Gram 2020 đ&atilde; mang đến cho bạn những trải nghiệm tuyệt vời LG Gram 2022 14Z90Q G.AJ53A5 c&ograve;n sẽ l&agrave;m được nhiều điều mới lạ hơn, tuyệt vời hơn. H&atilde;y c&ugrave;ng xem qua si&ecirc;u phẩm&nbsp;<a href="https://gearvn.com/collections/laptop-lg" target="_blank">laptop LG</a>&nbsp;mới nhất năm nay c&oacute; g&igrave; nh&eacute;.</p>

<p><img alt="GEARVN - Laptop LG Gram 2022 14Z90Q G.AJ53A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-2022-14z90q-g-aj53a5-1_32856e132c6b48cdbe3a00cd175d7cbc.png" /></p>

<h3><strong>Thiết kế nhỏ gọn v&agrave; tiện lợi</strong></h3>

<p>Sở hữu t&ocirc;ng m&agrave;u đen tinh tế v&agrave; sang trọng, logo Gram được chạm khắc ở mặt lưng để gia tăng độ nhận dạng thương hiệu. Phần th&acirc;n m&aacute;y được ho&agrave;n thiện ho&agrave;n to&agrave;n bằng kim loại l&agrave;m từ hợp kim magie - được sử dụng l&agrave;m vật liệu m&aacute;y bay rất nhẹ v&agrave; si&ecirc;u bền.</p>

<p><img alt="GEARVN - Laptop LG Gram 2022 14Z90Q G.AJ53A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-2022-14z90q-g-aj53a5-8_ca24d8c00b274a01bc51affcafb57a3e.png" /></p>

<blockquote>
<p><strong>&gt;&gt;Xem th&ecirc;m:&nbsp;<a href="https://gearvn.com/blogs/thu-thuat-giai-dap/laptop-mong-nhe-cho-dan-van-phong" target="_blank">4 laptop mỏng nhẹ cho d&acirc;n văn ph&ograve;ng tốt nhất 2022</a>.</strong></p>
</blockquote>

<p>C&oacute; thể n&oacute;i LG Gram 2022 14Z90Q G.AJ53A5 l&agrave; một trong những chiếc laptop nhẹ nhất hiện tại. Chỉ khoảng 1kg, bạn c&oacute; thể dễ d&agrave;ng mang LG Gram 2022 đi đến bất cứ đ&acirc;u.</p>

<h3><strong>Hiệu suất LG Gram 2022 14Z90Q G.AJ53A5 ấn tượng</strong></h3>

<p>L&agrave; một chiếc&nbsp;<a href="https://gearvn.com/collections/laptop-hoc-sinh-sinh-vien" target="_blank">laptop cho sinh vi&ecirc;n</a>&nbsp;v&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng n&ecirc;n hiệu suất của LG Gram 2022 14Z90Q G.AJ53A5 cũng đạt mức ổn định để bạn c&oacute; thể sử dụng đa t&aacute;c vụ một c&aacute;ch trơn tru v&agrave; mượt m&agrave;. Với CPU Intel Core i5&nbsp;thế hệ 12, 8GB RAM v&agrave; ổ lưu trữ 256GB&nbsp;<a href="https://gearvn.com/collections/ssd-o-cung-the-ran" target="_blank">SSD</a>&nbsp;hứa hẹn mang đến trải nghiệm tuyệt vời cho người d&ugrave;ng.</p>

<p><img alt="GEARVN - Laptop LG Gram 2022 14Z90Q G.AJ53A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-2022-14z90q-g-aj53a5-2_61f67602bc064e98b40a1ac5930cc1ce.png" /></p>

<p>B&ecirc;n cạnh đ&oacute;, card đồ họa&nbsp;<a href="https://gearvn.com/blogs/thu-thuat-giai-dap/intel-iris-xe-graphics-la-gi" target="_blank">Intel Iris Xe&nbsp;Graphics</a>, LG Gram 2022 mang đến hiệu suất đồ họa cao hơn nhiều lần so với nhiều thế hệ trước. V&igrave; vậy, n&oacute; hỗ trợ s&aacute;ng tạo nội dung chuy&ecirc;n nghiệp với m&atilde; h&oacute;a HEVC nhanh hơn gấp 2 lần v&agrave; cho ph&eacute;p bạn trải nghiệm h&igrave;nh ảnh tuyệt đẹp th&ocirc;ng qua khả năng ph&aacute;t lại video 4K HDR mượt m&agrave;.</p>

<h3><strong>M&agrave;n h&igrave;nh hiển thị chất lượng</strong></h3>

<p>LG Gram 2022 14Z90Q G.AJ53A5 sở hữu m&agrave;n h&igrave;nh k&iacute;ch 14 inch, độ ph&acirc;n giải WUXGA (1920x1200), tỷ lệ 16:10 kết hợp với tấm nền IPS mang đến h&igrave;nh ảnh ch&iacute;nh x&aacute;c v&agrave; r&otilde; r&agrave;ng th&ocirc;ng qua độ ch&iacute;nh x&aacute;c m&agrave;u sắc vượt trội m&agrave; kh&ocirc;ng bị biến dạng ở mọi g&oacute;c xem.</p>

<p><img alt="GEARVN - Laptop LG Gram 2022 14Z90Q G.AJ53A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-2022-14z90q-g-aj53a5-3_22101fa961e644038c632ff7a9b8eaaf.png" /></p>

<h3><strong>Thời lượng pin khủng</strong></h3>

<p>Thời lượng pin l&ecirc;n đến 72 Whr, bạn c&oacute; thể sử dụng laptop l&ecirc;n đến 18.5 giờ đồng hồ. Bạn cứ việc thoải m&aacute;i l&agrave;m việc m&agrave; kh&ocirc;ng cần lo lắng laptop hết pin giữa chừng.</p>

<p>Cổng Thunderbolt kh&ocirc;ng những cho ph&eacute;p hiển thị l&ecirc;n đến 5k, truyền dữ liệu với băng th&ocirc;ng c&oacute; tốc độ l&ecirc;n đến 40Gb/gi&acirc;y m&agrave; n&oacute; c&ograve;n hỗ trợ sạc pin cho thiết bị m&agrave; kh&ocirc;ng cần c&aacute;p nguồn ri&ecirc;ng, tất cả c&ugrave;ng đồng thời tr&ecirc;n một d&acirc;y c&aacute;p duy nhất.</p>

<p><img alt="GEARVN - Laptop LG Gram 2022 14Z90Q G.AJ53A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-2022-14z90q-g-aj53a5-4_2c7656643f8c4fc2945996216f21211b.png" /></p>
', N'<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank">CPU</a></strong></td>
			<td>Intel Core i5-1240P&nbsp;3.3GHz up to 4.4GHz 12MB</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ram-pc" target="_blank">RAM</a></strong></td>
			<td>8GB LPDDR5 5200MHz (Onboard)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/hdd-o-cung-pc" target="_blank">&Ocirc;̉ cứng</a></strong></td>
			<td>256GB&nbsp;<a href="https://gearvn.com/collections/ssd-m-2-pcie-gen-3x4" target="_blank">PCIe NVMe M.2 SSD</a>&nbsp;(2 slot, c&ograve;n trống 1 khe M.2)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/vga-card-man-hinh" target="_blank">Card đồ họa</a></strong></td>
			<td>Intel Iris Xe Graphics</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/pages/man-hinh" target="_blank">M&agrave;n h&igrave;nh</a></strong></td>
			<td>14 inch WUXGA (1920x1200), 16:10, IPS, DCI-P3 99%, LGD, 350 nits, Anti-Glare</td>
		</tr>
		<tr>
			<td><strong>Cổng giao tiếp</strong></td>
			<td>2x Thunderbolt 4 supports display / power delivery<br />
			2x USB 3.2 Gen2<br />
			1x HDMI<br />
			1x 3.5mm Combo Audio Jack</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank">B&agrave;n ph&iacute;m</a></strong></td>
			<td>LED trắng</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>HD Audio with DTS:X Ultra</td>
		</tr>
		<tr>
			<td><strong>Đọc thẻ nhớ</strong></td>
			<td>UFS, Micro SD</td>
		</tr>
		<tr>
			<td><strong>Chu&acirc;̉n LAN</strong></td>
			<td>10/100 với đầu chuyển RJ45&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Chuẩn WIFI</strong></td>
			<td>Intel Wi-Fi 6E AX211 (2x2)</td>
		</tr>
		<tr>
			<td><strong>Bluetooth</strong></td>
			<td>v5.1</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/webcam" target="_blank">Webcam</a></strong></td>
			<td>Webcam IR FHD IR with Dual Mic</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>72WHr</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>999 g</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>X&aacute;m</td>
		</tr>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>312 x 213,9 x 16,8 mm</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 40, 2, 8, 0, 31290000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (50, N'Laptop LG Gram Style 14Z90RS GAH54A5', 33141500.0000, 15, 50, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop LG Gram Style 14Z90RS GAH54A5</strong></h2>

<p>LG Gram Style 14Z90RS GAH54A5 khơi nguồn cảm hứng l&agrave;m việc với thiết kế tinh xảo, kiểu d&aacute;ng thời thượng&nbsp;chuẩn&nbsp;<a href="https://gearvn.com/collections/laptop" target="_blank">laptop</a>&nbsp;hiện đại năm nay. Thu h&uacute;t bởi ngoại h&igrave;nh sang trọng c&ugrave;ng hiệu năng hoạt động&nbsp;đỉnh cao cho mọi y&ecirc;u cầu học tập v&agrave; l&agrave;m việc hằng ng&agrave;y của người d&ugrave;ng. C&ugrave;ng GEARVN t&igrave;m hiểu chi tiết về sản phẩm&nbsp;LG Gram Style n&agrave;y nh&eacute;!</p>

<p><img alt="GEARVN Laptop LG Gram Style 14Z90RS GAH54A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-style-14z90rs-gah54a5-1_e9329c8abeef491bb8e4b573cbb7b274.png" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h3><strong>Thiết kế laptop mỏng nhẹ si&ecirc;u bền&nbsp;</strong></h3>

<p>Đặc điểm đầu ti&ecirc;n m&agrave; bất cứ ai cũng bị m&ecirc; hoặc từ&nbsp;LG Gram Style l&agrave; vẻ bề ngo&agrave;i của n&oacute;. Lớp vỏ được trang ho&agrave;ng với t&ocirc;ng m&agrave;u bắt mắt với sắc độ biến ảo đầy tinh tế. T&ugrave;y v&agrave;o g&oacute;c độ &aacute;nh s&aacute;ng chiếu v&agrave;o m&agrave; m&aacute;y phản xạ ra một h&igrave;nh d&aacute;ng kh&aacute;c nhau.&nbsp;Chiếc laptop với trọng lượng si&ecirc;u nhẹ&nbsp;999 gram, d&agrave;y khoảng 1.59cm sẵn s&agrave;ng cho một ng&agrave;y l&agrave;m việc d&agrave;i. Hiện thực h&oacute;a mong muốn sở hữu&nbsp;<a href="https://gearvn.com/collections/laptop-cao-cap-mong-nhe" target="_blank">laptop mỏng nhẹ</a>&nbsp;trong tầm tay.</p>

<p>&nbsp;</p>

<p><img alt="GEARVN - Laptop LG Gram Style 14Z90RS GAH54A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-style-14z90rs-gah54a5-1_bdf6ea6355dc4426813b952b4422013f_1024x1024.jpg" /></p>

<p>&nbsp;</p>

<p>Mỏng nhẹ nhưng kh&ocirc;ng thể đ&aacute;nh gi&aacute; rằng chiếc laptop&nbsp;14Z90RS GAH54A5 kh&ocirc;ng đủ chắc chắn v&agrave; bền l&acirc;u. Trải qua 7 b&agrave;i kiểm tra khắt nghiệt về độ b&ecirc;n theo chuẩn qu&acirc;n đội MIL-STD-810H đ&atilde; gi&uacute;p LG khẳng định sản phẩm của ch&iacute;nh họ c&oacute; độ chắc chắn v&agrave; bền bỉ theo thời gian khi đồng h&agrave;nh c&ugrave;ng người d&ugrave;ng. Nếu bạn cần một chiếc laptop di động cao cũng như sự cứng c&aacute;p khỏi những va chạm th&igrave;&nbsp;LG Gram&nbsp;sẽ l&agrave; lựa chọn ph&ugrave; hợp m&agrave; bạn kh&ocirc;ng thể bỏ qua.&nbsp;</p>

<h3><strong>H&igrave;nh ảnh hiển thị r&otilde; n&eacute;t&nbsp;</strong></h3>

<p>LG Gram Style 14Z90RS GAH54A5 sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 14 inch với độ ph&acirc;n giải cao&nbsp;WQXGA+ 2K8 (2880 x 1800). Tần số qu&eacute;t 90Hz cho khả năng chuyển đổi h&igrave;nh ảnh mượt m&agrave; tr&ecirc;n từng chi tiết. Độ s&aacute;ng 500nits v&agrave; DCI-P3 100% n&acirc;ng cấp hiển thị với chất lượng h&igrave;nh ảnh tương s&aacute;ng, ch&acirc;n thực. Giải tr&iacute; bằng những tựa game nhẹ hay xem những bộ phim y&ecirc;u th&iacute;ch đều trọn vẹn từng gi&acirc;y từng ph&uacute;t.&nbsp;</p>

<p><img alt="GEARVN - Laptop LG Gram Style 14Z90RS GAH54A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-style-14z90rs-gah54a5-2_54f8905de3774be68de4c98a02947940_1024x1024.jpg" /></p>

<p>&nbsp;</p>

<p>Tỷ lệ m&agrave;n h&igrave;nh 16:10 ho&agrave;n hảo gi&uacute;p bạn quan s&aacute;t to&agrave;n bộ th&ocirc;ng tin tr&ecirc;n&nbsp;<a href="https://gearvn.com/collections/monitor-lg" target="_blank">m&agrave;n h&igrave;nh LG</a>&nbsp;14Z90RS GAH54A5 tốt hơn. Tiết kiệm thời gian cuộn trang khi nghi&ecirc;n cứu t&agrave;i liệu. Tấm nền OLED trang bị khả năng chống ch&oacute;i Anti-Glare đảm bảo hiệu suất khi gặp phải &aacute;nh s&aacute;ng mặt trời ch&oacute;i chang&nbsp;hay những nơi c&oacute; cường độ &aacute;nh s&aacute;ng cao.&nbsp;</p>

<h3><strong>Hiệu suất hoạt động cao&nbsp;</strong></h3>

<p>LG Gram Style 14Z90RS GAH54A5 l&agrave; chiếc&nbsp;<a href="https://gearvn.com/collections/laptop-hoc-tap-va-lam-viec-tren-20-trieu" target="_blank">laptop học tập v&agrave; l&agrave;m việc</a>&nbsp;thế hệ mới. Sử dụng sức mạnh từ con chip Intel&nbsp;Core i5-1340P Gen 13 mới nhất. Sẵn s&agrave;ng mọi th&aacute;ch thức từ c&ocirc;ng việc đến giải tr&iacute;. Card đồ họa&nbsp;t&iacute;ch hợp&nbsp;Intel Iris Xe Graphics&nbsp;c&ograve;n hỗ trợ chất lượng&nbsp;xử l&yacute; khung h&igrave;nh đẹp mắt tr&ecirc;n từng trải nghiệm.&nbsp;</p>

<p><img alt="GEARVN - Laptop LG Gram Style 14Z90RS GAH54A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-style-14z90rs-gah54a5-3_de36bc2b6d3b49b0a235eb8df242ef63_grande.jpg" /></p>

<p>&nbsp;</p>

<p>Tốc độ đa nhiệm tr&ecirc;n LG Gram Style&nbsp;cũng mượt m&agrave; hơn khi đồng h&agrave;nh c&ugrave;ng l&agrave;&nbsp;16GB LPDDR5&nbsp;6000MHz. Ổ cứng&nbsp;512GB SSD NVME mang đến kh&ocirc;ng gian lưu trữ khổng lồ cho c&aacute;c dữ liệu quan trọng. Đồng thời hỗ trợ việc khởi động m&aacute;y nhanh hơn những ổ HDD truyền thống.&nbsp;</p>

<h3><strong>Thời lượng pin cao&nbsp;</strong></h3>

<p>Sử dụng vi&ecirc;n pin dung lượng cao&nbsp;72WHr để mang đến thời gian l&agrave;m việc tốt l&ecirc;n đến 15 giờ đồng hồ. LG Gram Style đảm bảo trải nghiệm sử dụng kh&ocirc;ng d&acirc;y tốt nhất tr&ecirc;n những sản phẩm laptop LG Gram của họ.&nbsp;</p>

<p><img alt="GEARVN - Laptop LG Gram Style 14Z90RS GAH54A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-style-14z90rs-gah54a5-4_62c8e278494a403394521fe845345c9f_1024x1024.jpg" /></p>

<p>&nbsp;</p>

<h3><strong>Kết nối linh hoạt&nbsp;&nbsp;</strong></h3>

<p>14Z90RS GAH54A5&nbsp;d&ugrave; mỏng nhẹ nhưng vẫn trang bị đầy đủ c&aacute;c cổng kết nối phổ biến. Ngo&agrave;i những cổng USB 3.2, Micro SD, hay jack tai nghe 3.5mm th&igrave;&nbsp;<a href="https://gearvn.com/collections/laptop-lg-gram" target="_blank">laptop LG Gram</a>&nbsp;c&ograve;n trang bị th&ecirc;m&nbsp;giao diện 2 cổng Thunderbolt 4. Kết nối nhiều hơn, tốc độ nhanh hơn cho qu&aacute; tr&igrave;nh sử dụng liền mạch.&nbsp;</p>

<p><img alt="GEARVN - Laptop LG Gram Style 14Z90RS GAH54A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-style-14z90rs-gah54a5-5_3545660ef23245769280e7aac53f8063_grande.jpg" /></p>

<h3><strong>Giải tr&iacute; đỉnh cao c&ugrave;ng Dolby Atmos</strong></h3>

<p>Kh&ocirc;ng dừng lại ở khả năng l&agrave;m việc v&agrave; học tập, LG Gram Style 14Z90RS GAH54A5 mang lại&nbsp;những gi&acirc;y ph&uacute;t thư gi&atilde;n th&ocirc;ng qua những bộ phim, những b&agrave;i h&aacute;t với hệ thống loa &acirc;m thanh v&ograve;m Dolby Atmos. Chiếc laptop LG sẽ gi&uacute;p bạn ch&igrave;m đắm v&agrave;o những bản nhạc hay h&ograve;a m&igrave;nh v&agrave;o bộ phim y&ecirc;u th&iacute;ch với &acirc;m thanh ch&acirc;n thực.</p>
', N'<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank">CPU</a></strong></td>
			<td>Intel Core i5-1340P (12 Cores: 4P + 8E, P: 1.9 up to 4.6 GHz / E: 1.4 up to 3.4 GHz) 12 MB Cache</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ram-pc" target="_blank">RAM</a></strong></td>
			<td>16GB LPDDR5&nbsp;6000MHz (Dual Channel, Onboard, kh&ocirc;ng n&acirc;ng cấp)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/hdd-o-cung-pc" target="_blank">&Ocirc;̉ cứng</a></strong></td>
			<td>512GB&nbsp;<a href="https://gearvn.com/collections/ssd-m-2-pcie-gen-3x4" target="_blank">PCIe NVMe M.2 SSD</a>&nbsp;(2 slot, c&ograve;n trống 1 khe M.2)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/vga-card-man-hinh" target="_blank">Card đồ họa</a></strong></td>
			<td>Intel Iris Xe Graphics</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/pages/man-hinh" target="_blank">M&agrave;n h&igrave;nh</a></strong></td>
			<td>14 inch WQXGA+ 2K8 (2880 x 1800), 16:10, OLED 90Hz 0.2ms, DCI-P3 100%, LGD, 500 nits, Anti-Glare Flow Refrection</td>
		</tr>
		<tr>
			<td><strong>Cổng giao tiếp</strong></td>
			<td>
			<ul>
				<li>2x USB Type C (Thunderbolt 4, Display Port, Power Delivery)</li>
				<li>1x USB 3.2 Gen2</li>
				<li>1x DC in</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank">B&agrave;n ph&iacute;m</a></strong></td>
			<td>LED trắng</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>Dolby Atmos</td>
		</tr>
		<tr>
			<td><strong>Đọc thẻ nhớ</strong></td>
			<td>Micro SD</td>
		</tr>
		<tr>
			<td><strong>Chu&acirc;̉n LAN</strong></td>
			<td>10/100 with RJ45 adapter (T&ugrave;y chọn)</td>
		</tr>
		<tr>
			<td><strong>Chuẩn WIFI</strong></td>
			<td>Intel&reg; Wireless-AX211 (802.11ax, 2x2, Dual Band, BT Combo)</td>
		</tr>
		<tr>
			<td><strong>Bluetooth</strong></td>
			<td>v5.1</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/webcam" target="_blank">Webcam</a></strong></td>
			<td>FHD IR Webcam (Nhận diện khu&ocirc;n mặt Hello Windows)&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>72 Wh Li-Ion, Thời lượng pin l&ecirc;n đến 15 giờ (Video playback)</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>999 gram</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Trắng</td>
		</tr>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>31.16 cm x 21.39 cm x 1.59 &nbsp;cm</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 41, 2, 8, 0, 38990000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (51, N'Laptop LG Gram Ultra Slim 15Z90RT GAH55A5', 36541500.0000, 15, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop LG Gram Ultra Slim 15Z90RT GAH55A5</strong></h2>

<p>LG Gram Ultra Slim 15Z90RT GAH55A5 mang đến l&agrave;n gi&oacute; mới cho d&ograve;ng sản phẩm&nbsp;<a href="https://gearvn.com/collections/laptop-hoc-tap-va-lam-viec-tren-20-trieu" target="_blank">laptop học tập v&agrave; l&agrave;m việc</a>. Thiết kế trẻ trung, năng động với khả năng di động cao c&ugrave;ng hiệu năng vượt trội đ&aacute;p ứng mọi c&ocirc;ng việc. Hứa hẹn sẽ l&agrave; một trong những đối thủ đ&aacute;ng gờm m&agrave; nhiều thương hiệu laptop tr&ecirc;n thị trường phải d&egrave; chừng. C&ugrave;ng GEARVN t&igrave;m hiểu chi tiết về sản phẩm n&agrave;y nh&eacute;.&nbsp;</p>

<p><img alt="GEARVN Laptop LG Gram Ultra Slim 15Z90RT GAH55A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-ultra-slim-15z90rt-gah55a5-1_b130fe06f01d43f29329b7e061d83978.png" /></p>

<p>&nbsp;</p>

<h3><strong>Ngoại h&igrave;nh nhỏ gọn, chắc chắn&nbsp;</strong></h3>

<p>LG Gram Ultra Slim mang đến trọng lượng ho&agrave;n hảo cho mọi sự di chuyển. Chỉ nặng khoảng 990gram d&agrave;y khoảng 1.09mm việc mang v&aacute;c cả một ng&agrave;y d&agrave;i cũng kh&ocirc;ng c&ograve;n l&agrave; vấn đề qu&aacute; lớn. Đạt chuẩn&nbsp;<a href="https://gearvn.com/collections/laptop-cao-cap-mong-nhe" target="_blank">laptop mỏng nhẹ</a>&nbsp;kh&ocirc;ng chỉ ph&ugrave; hợp với ph&aacute;i nữ m&agrave; c&ograve;n ph&ugrave; hợp với ph&aacute;i nam.&nbsp;</p>

<p><img alt="GEARVN Laptop LG Gram Ultra Slim 15Z90RT GAH55A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-ultra-slim-15z90rt-gah55a5-6_fc6e10f2799b4fa0884ead3c291169bd_1024x1024.jpg" /></p>

<p>&nbsp;</p>

<p>Độ bền đạt chuẩn qu&acirc;n đội MIL-STD-810H,&nbsp;<a href="https://gearvn.com/collections/laptop" target="_blank">laptop</a>&nbsp;15Z90RT GAH55A5 phải trải qua 7 b&agrave;i kiểm tra khắt khe để mang đến sản phẩm tốt nhất cho người d&ugrave;ng. Trở th&agrave;nh chiếc laptop si&ecirc;u nhẹ, si&ecirc;u bền sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn mọi l&uacute;c mọi nơi.&nbsp;</p>

<h3><strong>Chất lượng h&igrave;nh ảnh sắc n&eacute;t&nbsp;</strong></h3>

<p>15Z90RT GAH55A5 trang bị&nbsp;k&iacute;ch thước m&agrave;n h&igrave;nh&nbsp;15.6 inch tỷ lệ 16:9. Tấm nền OLED 60Hz r&otilde; n&eacute;t từng chi tiết mang đến trải nghiệm m&atilde;n nh&atilde;n c&ugrave;ng laptop LG Gram Ultra Slim. Độ s&aacute;ng 500nits, độ phủ m&agrave;u DCI-P3 100% với khả năng xử l&yacute; m&agrave;u sắc đa dạng hơn. Đi k&egrave;m l&agrave; c&ocirc;ng nghệ chống ch&oacute;i Anti-Glare đảm bảo trọn vẹn từng gi&acirc;y từng ph&uacute;t khi giải tr&iacute; bằng những bộ phim hay l&agrave;m thiết kế đồ họa. H&igrave;nh ảnh ch&iacute;nh x&aacute;c với độ ch&acirc;n thực cao sẽ gi&uacute;p bạn c&oacute; tầm nh&igrave;n tốt hơn trong c&ocirc;ng việc v&agrave; giải tr&iacute; hằng ng&agrave;y.&nbsp;</p>

<p><img alt="GEARVN Laptop LG Gram Ultra Slim 15Z90RT GAH55A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-ultra-slim-15z90rt-gah55a5-5_7cce335d22be47359433d679786a7259_1024x1024.jpg" /></p>

<p>&nbsp;</p>

<h3><strong>Hiệu năng l&agrave;m việc cao&nbsp;</strong></h3>

<p>LG Gram Ultra Slim trang bị sức mạnh vượt trội để đ&aacute;p ứng nhu cầu l&agrave;m việc từ thấp đến cao. Con chip CPU Intel&nbsp;Core i5-1340P Gen 13 mới nhất tốc độ xung nhịp cao xử l&yacute; tinh gọn c&aacute;c thao t&aacute;c được y&ecirc;u cầu. Đa nhiệm mượt m&agrave; c&ugrave;ng&nbsp;16GB LPDDR5&nbsp;6000MHz. Chuyển đổi giữa nhiều cửa sổ l&agrave;m việc kh&ocirc;ng c&ograve;n giật lag kh&oacute; chịu. Lưu trữ dữ liệu thoải m&aacute;i c&ugrave;ng kh&ocirc;ng gian SSD đến&nbsp;512GB. Tốc độ đọc v&agrave; ghi nhanh hơn, sao lưu nhiều th&ocirc;ng tin hơn. Tất cả sẵn s&agrave;ng cho mọi c&ocirc;ng việc được y&ecirc;u cầu.&nbsp;</p>

<p><img alt="GEARVN Laptop LG Gram Ultra Slim 15Z90RT GAH55A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-ultra-slim-15z90rt-gah55a5-2_84468e62e9be4a69b2ed98bae8550369_1024x1024.jpg" /></p>

<p>&nbsp;</p>

<h3><strong>Thời lượng pin d&ugrave;ng cao&nbsp;</strong></h3>

<p><a href="https://gearvn.com/collections/laptop-lg-gram" target="_blank">Laptop&nbsp;LG Gram</a>&nbsp;Ultra Slim sử dụng vi&ecirc;n pin&nbsp;60 Wh Li-Ion để mang đến thời gian sử dụng tối ưu. L&agrave;m việc cả một ng&agrave;y d&agrave;i một c&aacute;ch tốt hơn. Hạn chế gi&aacute;n đoạn v&igrave; cạn năng lượng.&nbsp;</p>

<h3><strong>Kết nối đa dạng hơn&nbsp;</strong></h3>

<p>LG Gram Ultra Slim trang bị cổng Thunderbolt 4 để tốc độ truyền tải dữ liệu nhanh hơn. Hơn hết việc kết nối với m&agrave;n h&igrave;nh ngo&agrave;i cũng trở n&ecirc;n dễ d&agrave;ng hơn nếu nhu cầu của bạn l&agrave; hiển thị tr&ecirc;n nhiều m&agrave;n h&igrave;nh với nhiều nội dung hơn.&nbsp;</p>

<p><img alt="GEARVN Laptop LG Gram Ultra Slim 15Z90RT GAH55A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-ultra-slim-15z90rt-gah55a5-8_2f16a95794af42fc87a673be133364b2_1024x1024.jpg" /></p>

<p>&nbsp;</p>

<p>Việc truyền tải tệp tin giữa LG Gram Ultra Slim v&agrave; c&aacute;c thiết bị di động Android hay iOS&nbsp;cũng trở n&ecirc;n đơn giản hơn với phần mềm&nbsp;Intel&reg; Unison&trade;.&nbsp;</p>

<p><img alt="GEARVN Laptop LG Gram Ultra Slim 15Z90RT GAH55A5" src="https://file.hstatic.net/1000026716/file/gearvn-laptop-lg-gram-ultra-slim-15z90rt-gah55a5-3_0fc8f6e38a0e4e53855436cab84b37b5_1024x1024.jpg" /></p>
', N'<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank">CPU</a></strong></td>
			<td>Intel Core i5-1340P (12 Cores: 4P + 8E, P: 1.9 up to 4.6 GHz / E: 1.4 up to 3.4 GHz) 12 MB Cache</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ram-pc" target="_blank">RAM</a></strong></td>
			<td>16GB LPDDR5&nbsp;6000MHz (Dual Channel, Onboard, kh&ocirc;ng n&acirc;ng cấp)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/hdd-o-cung-pc" target="_blank">&Ocirc;̉ cứng</a></strong></td>
			<td>512GB&nbsp;<a href="https://gearvn.com/collections/ssd-m-2-pcie-gen-3x4" target="_blank">PCIe NVMe M.2 SSD</a>&nbsp;(2 slot, c&ograve;n trống 1 khe M.2)</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/vga-card-man-hinh" target="_blank">Card đồ họa</a></strong></td>
			<td>Intel Iris Xe Graphics</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/pages/man-hinh" target="_blank">M&agrave;n h&igrave;nh</a></strong></td>
			<td>15.6 inch FHD (1920*1080), 16:9, OLED 60Hz, DCI-P3 100%, LGD, 500 nits, Anti-Glare Flow Refrection</td>
		</tr>
		<tr>
			<td><strong>Cổng giao tiếp</strong></td>
			<td>2x USB Type C (Thunderbolt 4, Display Port, Power Delivery)<br />
			1x USB 4 Gen3x2 Type C (Power Delivery)<br />
			1x DC in</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/ban-phim-may-tinh" target="_blank">B&agrave;n ph&iacute;m</a></strong></td>
			<td>LED trắng</td>
		</tr>
		<tr>
			<td><strong>Audio</strong></td>
			<td>Dolby Atmos</td>
		</tr>
		<tr>
			<td><strong>Đọc thẻ nhớ</strong></td>
			<td>Micro SD</td>
		</tr>
		<tr>
			<td><strong>Chu&acirc;̉n LAN</strong></td>
			<td>10/100 with RJ45 adapter (T&ugrave;y chọn)</td>
		</tr>
		<tr>
			<td><strong>Chuẩn WIFI</strong></td>
			<td>Intel&reg; Wireless-AX211 (802.11ax, 2x2, Dual Band, BT Combo)</td>
		</tr>
		<tr>
			<td><strong>Bluetooth</strong></td>
			<td>v5.1</td>
		</tr>
		<tr>
			<td><strong><a href="https://gearvn.com/collections/webcam" target="_blank">Webcam</a></strong></td>
			<td>FHD IR Webcam (Nhận diện khu&ocirc;n mặt Hello Windows)&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Hệ điều h&agrave;nh</strong></td>
			<td>Windows 11 Home</td>
		</tr>
		<tr>
			<td><strong>Pin</strong></td>
			<td>60 Wh Li-Ion</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>990 gram</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc</strong></td>
			<td>Đen</td>
		</tr>
		<tr>
			<td><strong>Kích thước</strong></td>
			<td>35.6 cm x 22.76 cm x 10.99~12.55 mm&nbsp;</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 42, 2, 8, 0, 42990000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (52, N'Màn hình ASUS VZ27EHF 27" IPS 100Hz viền mỏng', 3306500.0000, 15, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh ASUS VZ27EHF 27&ldquo; IPS 100Hz viền mỏng</strong></h2>

<p><strong><a href="https://gearvn.com/collections/man-hinh-asus" target="_blank">M&agrave;n h&igrave;nh ASUS</a>&nbsp;VZ27EHF 27 inch IPS 100Hz viền mỏng</strong>&nbsp;l&agrave; một sản phẩm&nbsp;<a href="https://gearvn.com/pages/man-hinh" target="_blank">m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh</a>&nbsp;mới từ nh&agrave; Asus. ASUS VZ27EHF tr&igrave;nh l&agrave;ng với một diện mạo mới v&ocirc; c&ugrave;ng h&uacute;t mắt khi sở hữu đường viền si&ecirc;u mỏng gi&uacute;p h&igrave;nh ảnh hiển thị được liền mạch v&agrave; đẹp mắt hơn. Ngo&agrave;i ra, ASUS cũng trang bị rất nhiều t&iacute;nh năng v&agrave; c&ocirc;ng nghệ mới độc quyền tr&ecirc;n chiếc m&agrave;n h&igrave;nh Asus n&agrave;y để n&acirc;ng cao trải nghiệm của người d&ugrave;ng.</p>

<p><img alt="GEARVN - Màn hình ASUS VZ27EHF 27“ IPS 100Hz viền mỏng" src="https://file.hstatic.net/200000722513/file/gearvn-man-hinh-asus-vz27ehf-27-ips-100hz-vien-mong-1_4e85b4e20677428f81fbc60cb85e626b.png" /></p>

<h3><strong>Thiết kế m&agrave;n h&igrave;nh kh&ocirc;ng khung ấn tượng</strong></h3>

<p>M&agrave;n h&igrave;nh ASUS VZ27EHF sở hữu&nbsp;<a href="https://gearvn.com/collections/man-hinh-27-inch" target="_blank">m&agrave;n h&igrave;nh 27 inch</a>, cấu h&igrave;nh si&ecirc;u mỏng tạo n&ecirc;n cảm quan h&igrave;nh ảnh đẹp mắt v&agrave; thu h&uacute;t. Thiết kế kh&ocirc;ng khung ấn tượng, l&agrave;m cho n&oacute; trở n&ecirc;n l&yacute; tưởng cho c&aacute;c thiết lập đa m&agrave;n h&igrave;nh gần như liền mạch, mang đến cho bạn một cấp độ đắm ch&igrave;m mới. Tấm nền IPS hiệu suất cao c&ugrave;ng với g&oacute;c nh&igrave;n rộng 178 độ hứa hẹn mang đến h&igrave;nh ảnh ch&acirc;n thật v&agrave; sống động nhất từ mọi g&oacute;c nh&igrave;n.</p>

<p><img alt="GEARVN - Màn hình ASUS VZ27EHF 27“ IPS 100Hz viền mỏng" src="https://file.hstatic.net/200000722513/file/gearvn-man-hinh-asus-vz27ehf-27-ips-100hz-vien-mong-6_10867dd6f9e1439d984b0e965fa49ca0.png" /></p>

<p>ASUS VZ27EHF sở hữu một vẻ ngo&agrave;i nhỏ, gọn, tiện lợi v&agrave; kh&ocirc;ng chiếm qu&aacute; nhiều diện t&iacute;ch kh&ocirc;ng gian l&agrave;m việc. Cấu h&igrave;nh si&ecirc;u mỏng của m&agrave;n h&igrave;nh Asus gi&uacute;p tổng thể th&ecirc;m phần tinh tế v&agrave; thẩm mỹ.</p>

<h3><strong>Độ ph&acirc;n giải 100Hz mới nhất</strong></h3>

<p>Nếu những model m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh phổ th&ocirc;ng trước đ&acirc;y của nh&agrave; Asus sẽ được trang bị tần số qu&eacute;t 75Hz, th&igrave; với m&agrave;n h&igrave;nh ASUS VZ27EHF lại được n&acirc;ng cấp l&ecirc;n đến 100Hz.&nbsp;<a href="https://gearvn.com/collections/man-hinh-100hz" target="_blank">M&agrave;n h&igrave;nh 100Hz</a>&nbsp;trung h&ograve;a giữa&nbsp;<a href="https://gearvn.com/collections/man-hinh-75hz" target="_blank">m&agrave;n h&igrave;nh 75Hz</a>&nbsp;v&agrave;&nbsp;<a href="https://gearvn.com/collections/man-hinh-144hz" target="_blank">144Hz</a>, cung cấp khả năng t&aacute;i tạo h&igrave;nh ảnh sắc n&eacute;t, ch&acirc;n thật.</p>

<p><img alt="GEARVN - Màn hình ASUS VZ27EHF 27“ IPS 100Hz viền mỏng" src="https://file.hstatic.net/200000722513/file/gearvn-man-hinh-asus-vz27ehf-27-ips-100hz-vien-mong-8_2fe88188bfbe452597eaae5acb6fd6ac_1024x1024.png" /></p>

<h3><strong>C&ocirc;ng nghệ độc quyền tr&ecirc;n ASUS VZ27EHF</strong></h3>

<p>C&ocirc;ng nghệ Adaptive-Sync / FreeSync tr&ecirc;n m&agrave;n h&igrave;nh ASUS VZ27EHF gi&uacute;p loại bỏ hiện tượng&nbsp;<a href="https://gearvn.com/blogs/thu-thuat-giai-dap/xe-man-hinh-la-gi" target="_blank">x&eacute; m&agrave;n h&igrave;nh</a>&nbsp;v&agrave; tốc độ khung h&igrave;nh giật h&igrave;nh, mang đến cho bạn h&igrave;nh ảnh liền mạch v&agrave; chơi game mượt m&agrave;. Điều n&agrave;y mang lại cho bạn lợi thế trong c&aacute;c tr&ograve; chơi bắn s&uacute;ng g&oacute;c nh&igrave;n thứ nhất, đua xe, chiến lược thời gian thực v&agrave; thể thao.</p>

<p><img alt="GEARVN - Màn hình ASUS VZ27EHF 27“ IPS 100Hz viền mỏng" src="https://file.hstatic.net/200000722513/file/gearvn-man-hinh-asus-vz27ehf-27-ips-100hz-vien-mong-9_161e9f9c103e4e2b93632f498ebe46eb_1024x1024.png" /></p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, c&ocirc;ng nghệ ASUS Eye Care v&agrave; c&ocirc;ng nghệ khử nhấp nh&aacute;y của ASUS được chứng nhận bởi TUV Rheinland gi&uacute;p giảm nhấp nh&aacute;y để mang lại trải nghiệm xem thoải m&aacute;i. C&ocirc;ng nghệ n&agrave;y gi&uacute;p giảm mỏi mắt v&agrave; c&aacute;c bệnh c&oacute; hại kh&aacute;c, đặc biệt l&agrave; khi bạn phải tiếp x&uacute;c với m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh qu&aacute; l&acirc;u.</p>

<h3><strong>GamePlus</strong></h3>

<p>C&aacute;c ph&iacute;m n&oacute;ng GamePlus độc quyền của ASUS với chữ thập, bộ đếm thời gian, bộ đếm FPS v&agrave; căn chỉnh m&agrave;n h&igrave;nh mang đến cho bạn những cải tiến khi chơi game để gi&uacute;p bạn tận dụng tối đa tr&ograve; chơi của m&igrave;nh. T&iacute;nh năng n&agrave;y được đồng ph&aacute;t triển với c&aacute;c game thủ chuy&ecirc;n nghiệp để cho ph&eacute;p họ luyện tập v&agrave; cải thiện kỹ năng chơi game của m&igrave;nh.</p>
', N'<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>27 inch</td>
		</tr>
		<tr>
			<td><strong>Tỷ lệ khung h&igrave;nh</strong></td>
			<td>16:9</td>
		</tr>
		<tr>
			<td><strong>Khu vực hiển thị</strong></td>
			<td>597.89 x 336.31 mm</td>
		</tr>
		<tr>
			<td><strong>Xử l&yacute; bề mặt</strong></td>
			<td>Chống ch&oacute;i</td>
		</tr>
		<tr>
			<td><strong>Loại m&agrave;n h&igrave;nh</strong></td>
			<td>LED</td>
		</tr>
		<tr>
			<td><strong>Tấm nền</strong></td>
			<td>IPS</td>
		</tr>
		<tr>
			<td><strong>G&oacute;c nh&igrave;n</strong></td>
			<td>178&deg;/ 178&deg;</td>
		</tr>
		<tr>
			<td><strong>Pixel Pitch</strong></td>
			<td>0.311mm</td>
		</tr>
		<tr>
			<td><strong>Độ ph&acirc;n giải</strong></td>
			<td>Full HD (1920 x 1080)</td>
		</tr>
		<tr>
			<td><strong>Độ s&aacute;ng</strong></td>
			<td>250cd/㎡</td>
		</tr>
		<tr>
			<td><strong>Tỷ lệ tương phản tĩnh</strong></td>
			<td>1300:1</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u sắc hiển thị</strong></td>
			<td>16.7 triệu m&agrave;u sắc</td>
		</tr>
		<tr>
			<td><strong>Thời gian phản hồi</strong></td>
			<td>1ms MPRT</td>
		</tr>
		<tr>
			<td><strong>Tần số qu&eacute;t</strong></td>
			<td>100Hz</td>
		</tr>
		<tr>
			<td><strong>Flicker-free</strong></td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td><strong>T&iacute;nh năng video</strong></td>
			<td>Trace Free Technology,&nbsp;SPLENDID Technology,&nbsp;Color Temp. Selection,&nbsp;GamePlus,&nbsp;QuickFit,&nbsp;HDCP,&nbsp;VRR Technology,&nbsp;Motion Sync,&nbsp;Low Blue Light,&nbsp;Eye Care+ Technology</td>
		</tr>
		<tr>
			<td><strong>Cổng kết nối</strong></td>
			<td>HDMI(v1.4) x 1</td>
		</tr>
		<tr>
			<td><strong>Cường độ t&iacute;n hiệu</strong></td>
			<td>Digital Signal Frequency : 24~83 KHz (H) / 48~75 Hz (V)<br />
			Analog Signal Frequency : 24~83 KHz (H) / 48~75 Hz (V)</td>
		</tr>
		<tr>
			<td><strong>Điện năng ti&ecirc;u thụ</strong></td>
			<td>Ti&ecirc;u thụ: &lt;21W<br />
			Chế độ tiết kiệm năng lượng: &lt;0.5W<br />
			Chế độ tắt: &lt;0.3W<br />
			Điện thế: 100-240V, 50/60Hz</td>
		</tr>
		<tr>
			<td><strong>Kỹ thuật thiết kế</strong></td>
			<td>Nghi&ecirc;ng: Yes (+23&deg;&nbsp;~&nbsp;-5&deg;)<br />
			Treo tường VESA: 75x75mm<br />
			Kh&oacute;a Kensington: C&oacute;</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước</strong></td>
			<td>C&oacute; ch&acirc;n đế:&nbsp;612.3x 433.5 x 209.8 mm<br />
			Kh&ocirc;ng c&oacute; ch&acirc;n đế:&nbsp;612.3 x 356.7 x 38.5 mm<br />
			Đ&oacute;ng hộp:&nbsp;67.8 x 53.2 x 12.4 cm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng</strong></td>
			<td>C&oacute; ch&acirc;n đế:&nbsp;3.5 kg<br />
			Kh&ocirc;ng c&oacute; ch&acirc;n đế:&nbsp;3.1 kg<br />
			Tổng trọng lượng: 5.19 kg</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện</strong></td>
			<td>HDMI cable<br />
			Power adapter<br />
			Power cord<br />
			Quick start guide<br />
			Warranty Card</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 43, 10, 22, 0, 3890000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (53, N'Màn hình Dell UltraSharp U2422H 24" IPS', 6196500.0000, 15, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh&nbsp;Dell UltraSharp U2422H 24 inch&nbsp;IPS</strong></h2>

<p>Dell Ultrasharp l&agrave; một trong những series m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh ăn kh&aacute;ch nhất nh&agrave; Dell. Sở hữu thiết kế hiện đại, khả năng t&aacute;i tạo h&igrave;nh ảnh sắc n&eacute;t, đầy đủ cổng kết nối th&ocirc;ng dụng để n&acirc;ng cao trải nghiệm sử dụng, m&agrave;n h&igrave;nh Dell Ultrasharp c&ograve;n c&oacute; gi&aacute; th&agrave;nh tương đối dễ tiếp cận. Một trong những model xuất sắc bạn c&oacute; thể tham khảo phải kể đến&nbsp;<strong>m&agrave;n h&igrave;nh&nbsp;Dell UltraSharp U2422H</strong>.</p>

<h3><strong>Thiết kế đẹp mắt v&agrave; hiện đại</strong></h3>

<p><a href="https://gearvn.com/collections/man-hinh-dell" target="_blank">M&agrave;n h&igrave;nh&nbsp;Dell</a>&nbsp;UltraSharp U2422H sở hữu thiết kế đẹp mắt v&agrave; hiện đại với t&ocirc;ng m&agrave;u trắng tinh tế. Kiểu thiết kế n&agrave;y c&oacute; thể n&oacute;i kh&ocirc;ng giống với ng&ocirc;n ngữ thiết kế đơn giản của&nbsp;<a href="https://gearvn.com/pages/man-hinh" target="_blank">m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh</a>&nbsp;Dell trước đ&acirc;y nhưng vẫn g&acirc;y được dấu ấn tốt trong l&ograve;n người d&ugrave;ng. Phần viền m&agrave;n h&igrave;nh mỏng mang đến trải nghiệm xem tốt hơn. Hơn nữa,&nbsp;Dell UltraSharp U2422H c&ograve;n được trang bị thiết kế c&ocirc;ng th&aacute;i học hiện đại gi&uacute;p bạn dễ d&agrave;ng điều chỉnh m&agrave;n h&igrave;nh để c&oacute; được g&oacute;c nh&igrave;n m&agrave;n h&igrave;nh tốt nhất.</p>

<h3><strong>Kết nối si&ecirc;u tốc 10Gbps</strong></h3>

<p>Khả năng kết nối mở rộng dễ d&agrave;ng kết nối với c&aacute;c thiết bị của bạn với khả năng kết nối to&agrave;n diện, bao gồm DP, HDMI v&agrave; USB si&ecirc;u tốc độ 10Gbps.&nbsp;</p>

<p>C&aacute;c cổng&nbsp;<a href="http://gearvn.com/collections/man-hinh-dell" target="_blank">m&agrave;n h&igrave;nh Dell</a>&nbsp;hỗ trợ&nbsp;truy cập nhanh ở ph&iacute;a trước m&agrave;n h&igrave;nh cho ph&eacute;p kết nối thuận tiện với c&aacute;c thiết bị ngoại vi v&agrave; sạc điện thoại di động với c&ocirc;ng suất l&ecirc;n đến 15W qua USB-C.Kết nối nhanh ch&oacute;ng nhờ cổng USB si&ecirc;u tốc 10Gbps cho ph&eacute;p truyền dữ liệu tốc độ nhanh hơn giữa&nbsp;<a href="https://gearvn.com/pages/pc-gvn" target="_blank">PC</a>&nbsp;v&agrave; c&aacute;c thiết bị ngoại vi được kết nối với m&agrave;n h&igrave;nh, điển h&igrave;nh như&nbsp;<a href="https://gearvn.com/blogs/thu-thuat-giai-dap/ket-noi-macbook-voi-man-hinh-may-tinh" target="_blank">kết nối Macbook với m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh</a>.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422h-24-ips-1_fa6b0e6647174f2289193b614178a590_grande.jpg" /></p>

<h3><strong>Tr&igrave;nh quản l&yacute; đi k&egrave;m th&ocirc;ng minh</strong></h3>

<p>&nbsp;</p>

<p>Hiệu quả ở mọi cấp độ nhờ t&iacute;nh năng sắp xếp dễ d&agrave;ng của tr&igrave;nh quản l&yacute; hiển thị (DDM) của Dell cho ph&eacute;p bạn nhanh ch&oacute;ng xếp v&agrave; xem c&aacute;c ứng dụng của m&igrave;nh cạnh nhau tr&ecirc;n một hoặc nhiều m&agrave;n h&igrave;nh được kết nối để mang lại hiệu quả đa nhiệm. V&agrave; với DDM được cải tiến, bạn sẽ nhận được nhiều bố cục đặt trước hơn nữa. Chuyển đổi liền mạch nhờ t&iacute;nh năng tự động kh&ocirc;i phục ghi nhớ nơi bạn đ&atilde; dừng lại, v&igrave; vậy c&aacute;c ứng dụng sẽ quay trở lại nơi bạn đ&atilde; rời khỏi ch&uacute;ng, ngay cả sau khi bạn đ&atilde; r&uacute;t ph&iacute;ch cắm. Ch&igrave;a kh&oacute;a của sự tiện lợi l&agrave; c&aacute;c ph&iacute;m tắt c&oacute; thể gi&uacute;p bạn tiết kiệm nhiều thời gian hơn, cho ph&eacute;p bạn dễ d&agrave;ng định cấu h&igrave;nh c&agrave;i đặt quản l&yacute; m&agrave;n h&igrave;nh của m&igrave;nh để bạn c&oacute; thể l&agrave;m việc nhanh hơn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422h-24-ips-2_a6c969c4d4544afea649e92b659d9caa_grande.png" /></p>

<h3><strong>Linh hoạt v&agrave; năng suất cao với khả năng điều chỉnh m&agrave;n h&igrave;nh đa dạng</strong></h3>

<p>&nbsp;</p>

<p>Th&ecirc;m kh&ocirc;ng gian để l&agrave;m việc: Tận dụng tối đa kh&ocirc;ng gian b&agrave;n l&agrave;m việc hạn chế của bạn với ch&acirc;n đế nhỏ gọn n&agrave;y.Thiết kế InfinityEdge với khả năng l&agrave;m việc với chế độ xem kh&ocirc;ng bị gi&aacute;n đoạn tr&ecirc;n nhiều m&agrave;n h&igrave;nh với thiết kế gần như kh&ocirc;ng viền n&agrave;y. V&agrave; khi bạn sử dụng thiết lập m&agrave;n h&igrave;nh k&eacute;p của Dell, bạn c&oacute; thể tăng năng suất của m&igrave;nh l&ecirc;n đến 21%. Linh hoạt cho sự thoải m&aacute;i cả ng&agrave;y với khả năng nghi&ecirc;ng, xoay, xoay v&agrave; điều chỉnh độ cao của m&agrave;n h&igrave;nh để ph&ugrave; hợp với nhu cầu của bạn, bạn c&oacute; thể thoải m&aacute;i cả ng&agrave;y.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422h-24-ips-3_93ace5aead81479d8fb1216f01810607_grande.png" /></p>

<h3><strong>Đa dạng cổng kết nối</strong></h3>

<p>Với đa dạng cổng kết nối như HDMI, DP v&agrave; đặc biệt l&agrave; USB tốc độ cao gi&uacute;p khả năng kết nối của m&agrave;n h&igrave;nh để sử dụng đa dạng v&agrave; linh hoạt. Ngo&agrave;i ra c&ograve;n t&iacute;ch hợp th&ecirc;m c&aacute;c&nbsp;cổng USB 3.2 Gen 2&nbsp;hỗ trợ bạn kết nối c&aacute;c thiết bị ngoại vi v&agrave; sao ch&eacute;p dữ liệu dễ d&agrave;ng hơn với tốc độ cao l&ecirc;n đến 10Gbps hoặc sạc điện thoại hay c&aacute;c thiết bị kh&aacute;c.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422h-24-ips-4_9e815cdeb29d482a85ad399f04d699e5_grande.png" /></p>

<h3><strong>Đ&atilde; được chứng nhận v&agrave; đạt được nhiều giải thưởng uy t&iacute;n</strong></h3>

<p>M&agrave;n h&igrave;nh Dell UltraSharp l&agrave; một m&agrave;n h&igrave;nh đạt được nhiều giải thưởng về thiết kế cũng như chất lượng được khẳng định bởi chứng nhận của chuy&ecirc;n gia. Tự h&agrave;o khi mang đến cho bạn một sản phẩm tuyệt vời v&agrave; tối ưu nhất cho c&ocirc;ng việc đồ họa.</p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu:</strong></p>
			</td>
			<td>
			<p>Dell</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Bảo h&agrave;nh:</strong></p>
			</td>
			<td>
			<p>36 th&aacute;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước:</strong></p>
			</td>
			<td>
			<p>24 inch</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ ph&acirc;n giải:</strong></p>
			</td>
			<td>
			<p>FullHD 1920x1080</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tấm nền:</strong></p>
			</td>
			<td>
			<p>IPS</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tần số qu&eacute;t:</strong></p>
			</td>
			<td>
			<p>60 Hz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Thời gian phản hồi:</strong></p>
			</td>
			<td>
			<p>5 ms</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu m&agrave;n h&igrave;nh (phẳng/cong):</strong></p>
			</td>
			<td>
			<p>Phẳng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ s&aacute;ng:</strong></p>
			</td>
			<td>
			<p>250 nits</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>G&oacute;c nh&igrave;n:</strong></p>
			</td>
			<td>
			<p>178&deg; (H) / 178&deg; (V)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khả năng hiển thị m&agrave;u sắc:</strong></p>
			</td>
			<td>
			<p>100% sRGB, 100% Rec709, 85% DCI-P3</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ tương phản tĩnh:</strong></p>
			</td>
			<td>
			<p>1,000:1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ tương phản động:</strong></p>
			</td>
			<td>
			<p>100,000,000:1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Cổng xuất h&igrave;nh:</strong></p>
			</td>
			<td>
			<p>1 x&nbsp;DP 1.4<br />
			1 x&nbsp;HDMI 1.4<br />
			1 x&nbsp;DisplayPort (đầu ra) với MST<br />
			1 x&nbsp;Cổng ngược d&ograve;ng USB Type-C (chỉ dữ liệu 10GPB USB 3.2 Thế hệ 2) - chỉ truyền dữ liệu<br />
			1 x&nbsp;Cổng xuống USB Type-C với khả năng sạc ở mức 15W (Tối đa) - chỉ truyền dữ liệu<br />
			1 x&nbsp;USB si&ecirc;u tốc độ 10Gbps với khả năng sạc BC1.2 ở 2 A (tối đa)<br />
			2 x&nbsp;cổng hạ lưu USB si&ecirc;u tốc độ 10 Gbps (USB 3.2 Gen 2)<br />
			1 x&nbsp;cổng ra &acirc;m thanh</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>T&iacute;nh năng đặc biệt:</strong></p>
			</td>
			<td>
			<p>Hỗ trợ chuẩn VESA 100x100</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khối lượng:</strong></p>
			</td>
			<td>
			<p>3.51&nbsp;kg</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Ti&ecirc;u thụ điện:</strong></p>
			</td>
			<td>
			<p>11.6W</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước chuẩn:</strong></p>
			</td>
			<td>
			<p>538&nbsp;x 363&nbsp;x 180&nbsp;(mm)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện đi k&egrave;m:</strong></p>
			</td>
			<td>
			<p>1 x c&aacute;p DisplayPort</p>

			<p>1 x c&aacute;p USB Type C to&nbsp;A</p>
			</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 44, 10, 20, 0, 7290000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (54, N'Màn hình Dell UltraSharp U2422HE 24" IPS USBC RJ45', 8001000.0000, 10, 35, N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết m&agrave;n h&igrave;nh&nbsp;Dell UltraSharp U2422HE 24&quot; IPS USBC RJ45</strong></h2>

<h3><strong>Sức mạnh từ USB type C v&agrave; cổng LAN RJ45&nbsp;- Kết nối của tương lai</strong></h3>

<p>Kết nối USB-C nhận c&ocirc;ng suất ph&acirc;n phối l&ecirc;n đến 90W (c&ocirc;ng suất ph&acirc;n phối cao nhất trong ph&acirc;n kh&uacute;c) qua USB-C, v&igrave; vậy bạn c&oacute; thể sạc pin m&aacute;y t&iacute;nh x&aacute;ch tay của m&igrave;nh v&agrave; tận hưởng năng suất kh&ocirc;ng bị gi&aacute;n đoạn.&nbsp;</p>

<p>Ngo&agrave;i ra, h&atilde;y tăng tốc thời gian chuyển đổi từ b&agrave;n l&agrave;m việc của bạn bằng một sợi c&aacute;p duy nhất truyền điện, dữ liệu v&agrave; video - tất cả c&ugrave;ng một l&uacute;c. Một trong những d&ograve;ng&nbsp;<a href="https://gearvn.com/pages/man-hinh" target="_blank">m&agrave;n h&igrave;nh</a>&nbsp;nhận kết nối nhanh hơn v&agrave; thuận lợi, nhanh ch&oacute;ng truy cập gi&uacute;p bạn dễ d&agrave;ng sạc v&agrave; kết nối với nhiều loại thiết bị. Đặc biệt với cổng LAN RJ45 hỗ trợ truy cập mạng một c&aacute;ch ổn định cho trải nghiệm tuyệt vời.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45-1_721a0e9b92084975af91d1a63af88b3a_grande.jpg" /></p>

<h3><strong>Tr&igrave;nh quản l&yacute; đi k&egrave;m th&ocirc;ng minh</strong></h3>

<p>&nbsp;</p>

<p>Hiệu quả ở mọi cấp độ nhờ t&iacute;nh năng sắp xếp dễ d&agrave;ng của tr&igrave;nh quản l&yacute; hiển thị (DDM) của Dell cho ph&eacute;p bạn nhanh ch&oacute;ng xếp v&agrave; xem c&aacute;c ứng dụng của m&igrave;nh cạnh nhau tr&ecirc;n một hoặc nhiều m&agrave;n h&igrave;nh được kết nối để mang lại hiệu quả đa nhiệm. V&agrave; với DDM được cải tiến, bạn sẽ nhận được nhiều bố cục đặt trước hơn nữa. Chuyển đổi liền mạch nhờ t&iacute;nh năng tự động kh&ocirc;i phục ghi nhớ nơi bạn đ&atilde; dừng lại, v&igrave; vậy c&aacute;c ứng dụng sẽ quay trở lại nơi bạn đ&atilde; rời khỏi ch&uacute;ng, ngay cả sau khi bạn đ&atilde; r&uacute;t ph&iacute;ch cắm. Ch&igrave;a kh&oacute;a của sự tiện lợi l&agrave; c&aacute;c ph&iacute;m tắt c&oacute; thể gi&uacute;p bạn tiết kiệm nhiều thời gian hơn, cho ph&eacute;p bạn dễ d&agrave;ng định cấu h&igrave;nh c&agrave;i đặt quản l&yacute; m&agrave;n h&igrave;nh của m&igrave;nh để bạn c&oacute; thể l&agrave;m việc nhanh hơn.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45-6_f0e33eb3cce1432da37b787132bd55bd_grande.jpg" /></p>

<h3><strong>Linh hoạt v&agrave; năng suất cao với khả năng điều chỉnh m&agrave;n h&igrave;nh đa dạng</strong></h3>

<p>&nbsp;</p>

<p>Th&ecirc;m kh&ocirc;ng gian để l&agrave;m việc: Tận dụng tối đa kh&ocirc;ng gian b&agrave;n l&agrave;m việc hạn chế của bạn với ch&acirc;n đế nhỏ gọn n&agrave;y. Thiết kế InfinityEdge với khả năng l&agrave;m việc với chế độ xem kh&ocirc;ng bị gi&aacute;n đoạn tr&ecirc;n nhiều m&agrave;n h&igrave;nh với thiết kế gần như kh&ocirc;ng viền n&agrave;y. V&agrave; khi bạn sử dụng thiết lập m&agrave;n h&igrave;nh k&eacute;p của Dell, bạn c&oacute; thể tăng năng suất của m&igrave;nh l&ecirc;n đến 21%. Linh hoạt cho sự thoải m&aacute;i cả ng&agrave;y với khả năng nghi&ecirc;ng, xoay, xoay v&agrave; điều chỉnh độ cao của m&agrave;n h&igrave;nh để ph&ugrave; hợp với nhu cầu của bạn, bạn c&oacute; thể thoải m&aacute;i cả ng&agrave;y.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45-2_567b703e69724d4cb3fa05698d7c5d86_grande.jpg" /></p>

<h3><strong>Đa dạng cổng kết nối</strong></h3>

<p>Với đa dạng cổng kết nối như HDMI, DP v&agrave; đặc biệt l&agrave; USB type C gi&uacute;p khả năng kết nối của m&agrave;n h&igrave;nh để sử dụng đa dạng v&agrave; linh hoạt. Ngo&agrave;i ra c&ograve;n t&iacute;ch hợp th&ecirc;m c&aacute;c&nbsp;cổng USB 3.2 Gen 2&nbsp;hỗ trợ bạn kết nối c&aacute;c thiết bị ngoại vi v&agrave; sao ch&eacute;p dữ liệu dễ d&agrave;ng hơn với tốc độ cao l&ecirc;n đến 10Gbps hoặc sạc điện thoại hay c&aacute;c thiết bị kh&aacute;c.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-dell-ultrasharp-u2422he-24-ips-usbc-rj45-5_89bfa0dceab04e9db9a62fedd3242aa8_grande.jpg" /></p>
', N'<table border="1" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><strong>Thương hiệu:</strong></p>
			</td>
			<td>
			<p>Dell</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Bảo h&agrave;nh:</strong></p>
			</td>
			<td>
			<p>36 th&aacute;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước:</strong></p>
			</td>
			<td>
			<p>24&quot;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ ph&acirc;n giải:</strong></p>
			</td>
			<td>
			<p>FullHD 1920x1080</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tấm nền:</strong></p>
			</td>
			<td>
			<p>IPS</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Tần số qu&eacute;t:</strong></p>
			</td>
			<td>
			<p>60 Hz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Thời gian phản hồi:</strong></p>
			</td>
			<td>
			<p>5 ms</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Kiểu m&agrave;n h&igrave;nh (phẳng/cong):</strong></p>
			</td>
			<td>
			<p>Phẳng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ s&aacute;ng:</strong></p>
			</td>
			<td>
			<p>250 nits</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>G&oacute;c nh&igrave;n:</strong></p>
			</td>
			<td>
			<p>178&deg; (H) / 178&deg; (V)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khả năng hiển thị m&agrave;u sắc:</strong></p>
			</td>
			<td>
			<p>100% sRGB, 100% Rec709, 85% DCI-P3</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ tương phản tĩnh:</strong></p>
			</td>
			<td>
			<p>1,000:1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Độ tương phản động:</strong></p>
			</td>
			<td>
			<p>100,000,000:1</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Cổng xuất h&igrave;nh:</strong></p>
			</td>
			<td>
			<p>1 x Cổng DP 1.4<br />
			1 x Cổng HDMI 1.4<br />
			1 x Cổng DisplayPort (đầu ra) với MST<br />
			1 x Cổng USB Type-C (chế độ Altenrate với Display POrt 1.4, Power Delivery tối đa 90W)<br />
			1 x Cổng ngược d&ograve;ng USB Type-C (chỉ dữ liệu 10GPBs USB 3.2 gen 2)<br />
			1 x Cổng hạ lưu USB Loại C với khả năng sạc ở mức 15W (Tối đa)<br />
			1 x USB si&ecirc;u tốc độ 10Gbps với khả năng sạc BC1.2 ở 2 A (tối đa)<br />
			3 x USB si&ecirc;u tốc độ 10 Gbps (Thế hệ USB 3.2 2) cổng hạ lưu<br />
			1 x cổng ra &acirc;m thanh<br />
			1 x cổng LAN RJ45</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>T&iacute;nh năng đặc biệt:</strong></p>
			</td>
			<td>
			<p>Hỗ trợ chuẩn VESA 100x100</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khối lượng:</strong></p>
			</td>
			<td>
			<p>3.95&nbsp;kg</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Ti&ecirc;u thụ điện:</strong></p>
			</td>
			<td>
			<p>11.8W</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>K&iacute;ch thước chuẩn:</strong></p>
			</td>
			<td>
			<p>538&nbsp;x 363&nbsp;x 180&nbsp;(mm)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Phụ kiện đi k&egrave;m:</strong></p>
			</td>
			<td>
			<p>1 x c&aacute;p DisplayPort</p>

			<p>1 x c&aacute;p USB SuperSpeed ​​- USB Type C to&nbsp;A</p>

			<p>1 x c&aacute;p USB Type C to C</p>
			</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 45, 10, 20, 0, 8890000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [UuDai], [SoLuongTon], [MoTa], [ThongSoKyThuat], [ChinhSachBaoHanh], [ThoiGianBaoHanh], [NgayTao], [TrangThai], [MaHinhAnh], [MaDanhMuc], [MaHang], [SoLuongDaBanRa], [GiaGoc]) VALUES (55, N'Màn hình Lenovo L24q-35 24" IPS 2K 75Hz loa kép 2W', 5975200.0000, 12, 40, N'<h2><strong>Đ&aacute;nh gi&aacute; m&agrave;n h&igrave;nh Lenovo L24q-35 24&ldquo; IPS 2K 75Hz loa k&eacute;p 2W</strong></h2>

<p>Lenovo L24q-35 24&ldquo; IPS 2K 75Hz loa k&eacute;p 2W l&agrave; giải ph&aacute;p&nbsp;<a href="https://gearvn.com/collections/man-hinh-do-hoa" target="_blank">m&agrave;n h&igrave;nh cho đồ họa</a>&nbsp;chuy&ecirc;n game. H&igrave;nh ảnh hiển thị được chau chuốt tỉ mỉ với c&ocirc;ng nghệ m&agrave;n h&igrave;nh tối ưu trải nghiệm chiến game ho&agrave;n hảo.&nbsp;</p>

<p><img alt="Màn hình Lenovo L24q-35 24" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-lenovo-l24q-35-24-ips-2k-75hz-loa-kep-2w-1_23b3c885dc404ed5ba8242c4b634984a.png" /></p>

<h3><strong>Thiết kế chắc chắn dễ d&agrave;ng điều chỉnh</strong></h3>

<p><a href="https://gearvn.com/collections/man-hinh-lenovo" target="_blank">M&agrave;n h&igrave;nh Lenovo</a>&nbsp;L24q-35 24&ldquo; IPS sở hữu phần ch&acirc;n đế chắc chắn. Bạn c&oacute; thể dễ d&agrave;ng điều chỉnh g&oacute;c nh&igrave;n chỉ với thao t&aacute;c đẩy nhẹ g&oacute;c nghi&ecirc;ng cho ph&ugrave; hợp với tầm nh&igrave;n.</p>

<p><img alt="Màn hình Lenovo L24q-35 24" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-lenovo-l24q-35-24-ips-2k-75hz-loa-kep-2w-7_71580eb86cda4ef9bf48aa0e5fbc77bd.png" /></p>

<h3><strong>M&agrave;n h&igrave;nh sắc n&eacute;t, ch&acirc;n thực</strong></h3>

<p>Lenovo L24q-35 24&ldquo; IPS c&oacute;&nbsp;<a href="https://gearvn.com/collections/do-phan-giai-2k-1440p" target="_blank">độ ph&acirc;n giải 2K 1440p</a>&nbsp;kết hợp c&ugrave;ng tấm nền IPS mở rộng g&oacute;c nh&igrave;n với chất lượng m&agrave;u sắc ch&iacute;nh x&aacute;c cao. Tỷ lệ khung h&igrave;nh chuẩn 16:9 để mọi trải nghiệm nh&igrave;n được tốt nhất đến người d&ugrave;ng. B&ecirc;n cạnh đ&oacute; độ s&aacute;ng 300 cd/m2, tỷ lệ tương phản tĩnh 1000:1, m&agrave;u sắc hiển thị 16.7 triệu m&agrave;u n&acirc;ng cao chất lượng h&igrave;nh ảnh trong mọi điều kiện.</p>

<p><img alt="Màn hình Lenovo L24q-35 24" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-lenovo-l24q-35-24-ips-2k-75hz-loa-kep-2w-2_b3fd13ee743a460cb9f32dfaa5c2ec44.png" /></p>

<h3><strong>Hạn chế giật lag khi sử dụng&nbsp;</strong></h3>

<p><a href="https://gearvn.com/pages/man-hinh" target="_blank">M&agrave;n h&igrave;nh m&aacute;y t&iacute;nh</a>&nbsp;Lenovo L24q-35 sẽ thay đổi mức độ FPS sao cho ph&ugrave; hợp với c&aacute;c tựa game người d&ugrave;ng đang sử dụng với c&ocirc;ng nghệ NVIDIA G-SYNC. Mọi chuyển động tr&ecirc;n m&agrave;n ảnh đều mượt m&agrave;, giảm thiểu tối đa c&aacute;c t&igrave;nh trạng giật x&eacute; h&igrave;nh n&acirc;ng tầm tận hưởng.&nbsp;</p>

<p><img alt="Màn hình Lenovo L24q-35 24" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-lenovo-l24q-35-24-ips-2k-75hz-loa-kep-2w-3_625526d052c04960b85af8da22a3c98d.png" /></p>

<h3><strong>Bảo vệ thị gi&aacute;c an to&agrave;n</strong></h3>

<p>Sử dụng m&aacute;y t&iacute;nh l&acirc;u ng&agrave;y sẽ g&acirc;y tổn hại cho mắt, ch&iacute;nh v&igrave; l&yacute; do đ&oacute; m&agrave; Lenovo L24q-35 đ&atilde; trang bị th&ecirc;m t&iacute;nh năng Eye Comfort / Eyesafe Display. Kết hợp c&ugrave;ng khả năng chống ch&oacute;i Anti-Glare để mọi h&igrave;nh ảnh kết xuất kh&ocirc;ng g&acirc;y kh&oacute; chịu cho đ&ocirc;i mắt người d&ugrave;ng.&nbsp;</p>

<p><img alt="Màn hình Lenovo L24q-35 24" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-lenovo-l24q-35-24-ips-2k-75hz-loa-kep-2w-5_c5ffe8eb13594973a2227166c04d9638.png" /></p>

<h3><strong>Cổng kết nối tr&ecirc;n m&agrave;n h&igrave;nh Lenovo L24q-35 24&ldquo; IPS 2K 75Hz loa k&eacute;p 2W</strong></h3>

<p>Nằm trong ph&acirc;n kh&uacute;c&nbsp;<a href="https://gearvn.com/collections/man-hinh-tu-5-den-10-trieu" target="_blank">m&agrave;n h&igrave;nh 5 đến 10 triệu</a>, Lenovo L24q-35 trang bị c&aacute;c cổng kết nối đầy đủ để hỗ trợ người d&ugrave;ng. C&aacute;c cổng đ&oacute; l&agrave;:</p>

<ul>
	<li>
	<p>Displayport ver 1.2</p>
	</li>
	<li>
	<p>1 x HDMI 1.4</p>
	</li>
	<li>
	<p>1 x Audio Out (3.5mm)</p>
	</li>
</ul>

<p><img alt="Màn hình Lenovo L24q-35 24" src="https://file.hstatic.net/1000026716/file/gearvn-man-hinh-lenovo-l24q-35-24-ips-2k-75hz-loa-kep-2w-9_5ff82a89fe8f4a43a46303946bbb6edf.png" /></p>
', N'<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td><strong><strong>K&iacute;ch thước</strong></strong></td>
			<td>23.8 inch</td>
		</tr>
		<tr>
			<td><strong><strong>Tỷ lệ khung h&igrave;nh</strong></strong></td>
			<td>16:9</td>
		</tr>
		<tr>
			<td><strong><strong>Tấm nền</strong></strong></td>
			<td>IPS</td>
		</tr>
		<tr>
			<td><strong><strong>G&oacute;c nh&igrave;n</strong></strong></td>
			<td>178&deg;/ 178&deg;</td>
		</tr>
		<tr>
			<td><strong><strong>Độ ph&acirc;n giải</strong></strong></td>
			<td>QHD 2560 x 1440</td>
		</tr>
		<tr>
			<td><strong><strong>Độ s&aacute;ng</strong></strong></td>
			<td>300 cd/m2</td>
		</tr>
		<tr>
			<td><strong><strong>Tỷ lệ tương phản tĩnh</strong></strong></td>
			<td>1000:1</td>
		</tr>
		<tr>
			<td><strong>Tỷ lệ tương phản động</strong></td>
			<td>3M:1</td>
		</tr>
		<tr>
			<td><strong><strong>M&agrave;u sắc hiển thị</strong></strong></td>
			<td>16.7 triệu m&agrave;u sắc</td>
		</tr>
		<tr>
			<td><strong><strong>Thời gian đ&aacute;p ứng</strong></strong></td>
			<td>
			<ul>
				<li>4 ms (Chế độ khắc nghiệt)&nbsp;</li>
				<li>6 ms (Chế độ điển h&igrave;nh)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong><strong>Tần số qu&eacute;t</strong></strong></td>
			<td>
			<p>75Hz</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh</strong></strong></p>
			</td>
			<td>
			<ul>
				<li>AMD FreeSync Premium</li>
				<li>Anti-Glare</li>
				<li>ASUS Extreme Low Motion Blur</li>
				<li>Eye Comfort / Eyesafe Display</li>
				<li>NVIDIA G-SYNC</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong><strong>Tiện &iacute;ch</strong></strong></td>
			<td>Thay đổi được chiều cao</td>
		</tr>
		<tr>
			<td><strong><strong>Cổng kết nối</strong></strong></td>
			<td>
			<ul>
				<li>Displayport ver 1.2</li>
				<li>1 x HDMI 1.4</li>
				<li>1 x Audio Out (3.5mm)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong><strong>Điện năng ti&ecirc;u thụ</strong></strong></td>
			<td>22W / 32W</td>
		</tr>
		<tr>
			<td><strong><strong>K&iacute;ch thước</strong></strong></td>
			<td>
			<ul>
				<li>Ch&acirc;n đế thấp 164.9 x 423.7 x 539.8 mm&nbsp;(6.50 x 16.68 x 21.25 inches)</li>
				<li>Ch&acirc;n đế cao 164.9 x 423.7 x 539.8 mm (6.50 x 16.68 x 21.25 inches)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td><strong><strong>Trọng lượng</strong></strong></td>
			<td>3,9 kg</td>
		</tr>
		<tr>
			<td><strong>Phụ kiện</strong></td>
			<td>
			<ul>
				<li>M&agrave;n h&igrave;nh c&oacute; ch&acirc;n đế</li>
				<li>1 x c&aacute;p nguồn (1,8m)</li>
				<li>1 x c&aacute;p HDMI (1,5m)</li>
				<li>Hướng dẫn thiết lập nhanh</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>
', N'Bảo hành linh kiện', 12, CAST(N'2023-12-25' AS Date), 1, 46, 10, 21, 0, 6790000.0000)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[YeuCauBH] ON 

INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (2, 6, 2, 1, CAST(N'2023-11-25' AS Date), N'Lỗi loa', 1)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (3, 6, 2, 1, CAST(N'2023-11-25' AS Date), N'Lỏng thanh ram', 3)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (4, 2, 1, 3, CAST(N'2023-11-25' AS Date), N'Hư loa', 3)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (5, 6, 2, 1, CAST(N'2023-11-26' AS Date), N'Lỏng ram', 3)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (6, 1, 2, 4, CAST(N'2023-11-26' AS Date), N'Lỗi phần mềm', 2)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (7, 5, 1, 6, CAST(N'2023-11-26' AS Date), N'Hư 1 bên tai', 2)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (8, 2, 1, 15, CAST(N'2023-12-14' AS Date), N'Tôi muốn sửa phần loa trái', 1)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (9, 2, 18, 17, CAST(N'2023-12-18' AS Date), N'Lỗi', 3)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (10, 2, 18, 17, CAST(N'2023-12-18' AS Date), N'Lỗi', 3)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (11, 24, 1, 14, CAST(N'2023-12-18' AS Date), N'Mất keycap', 2)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (12, 4, 18, 18, CAST(N'2023-12-18' AS Date), N'Lỗi từ nhà sản xuất', 1)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (13, 3, 20, 19, CAST(N'2023-12-24' AS Date), N'Dính icloud', 2)
INSERT [dbo].[YeuCauBH] ([MaPhieuBH], [MaSP], [MaKH], [MaBH], [NgayYeuCau], [LyDo], [TrangThai]) VALUES (14, 6, 1, 11, CAST(N'2023-12-25' AS Date), N'Hư bản lề', 1)
SET IDENTITY_INSERT [dbo].[YeuCauBH] OFF
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_BaoHanh_DDH1] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DDH] ([MaDDH])
GO
ALTER TABLE [dbo].[BaoHanh] CHECK CONSTRAINT [FK_BaoHanh_DDH1]
GO
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_BaoHanh_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BaoHanh] CHECK CONSTRAINT [FK_BaoHanh_KhachHang]
GO
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_BaoHanh_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BaoHanh] CHECK CONSTRAINT [FK_BaoHanh_SanPham]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_DDH1] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DDH] ([MaDDH])
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_DDH1]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_SanPham]
GO
ALTER TABLE [dbo].[CTDiaChi]  WITH CHECK ADD  CONSTRAINT [FK_CTDiaChi_DiaChi] FOREIGN KEY([MaDiaChi])
REFERENCES [dbo].[DiaChi] ([MaDiaChi])
GO
ALTER TABLE [dbo].[CTDiaChi] CHECK CONSTRAINT [FK_CTDiaChi_DiaChi]
GO
ALTER TABLE [dbo].[CTGioHang]  WITH CHECK ADD  CONSTRAINT [FK_CTGioHang_GioHang] FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[CTGioHang] CHECK CONSTRAINT [FK_CTGioHang_GioHang]
GO
ALTER TABLE [dbo].[CTGioHang]  WITH CHECK ADD  CONSTRAINT [FK_CTGioHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTGioHang] CHECK CONSTRAINT [FK_CTGioHang_SanPham]
GO
ALTER TABLE [dbo].[DanhGiaSanPham]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaSanPham_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DanhGiaSanPham] CHECK CONSTRAINT [FK_DanhGiaSanPham_KhachHang]
GO
ALTER TABLE [dbo].[DanhGiaSanPham]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaSanPham_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DanhGiaSanPham] CHECK CONSTRAINT [FK_DanhGiaSanPham_SanPham]
GO
ALTER TABLE [dbo].[DDH]  WITH CHECK ADD  CONSTRAINT [FK_DDH_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DDH] CHECK CONSTRAINT [FK_DDH_KhachHang]
GO
ALTER TABLE [dbo].[DDH]  WITH CHECK ADD  CONSTRAINT [FK_DDH_MaGiamGia1] FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[MaGiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[DDH] CHECK CONSTRAINT [FK_DDH_MaGiamGia1]
GO
ALTER TABLE [dbo].[DDH]  WITH CHECK ADD  CONSTRAINT [FK_DDH_NhaVanChuyen1] FOREIGN KEY([MaNVC])
REFERENCES [dbo].[NhaVanChuyen] ([MaNVC])
GO
ALTER TABLE [dbo].[DDH] CHECK CONSTRAINT [FK_DDH_NhaVanChuyen1]
GO
ALTER TABLE [dbo].[DiaChi]  WITH CHECK ADD  CONSTRAINT [FK_DiaChi_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DiaChi] CHECK CONSTRAINT [FK_DiaChi_KhachHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang]
GO
ALTER TABLE [dbo].[HoanHang]  WITH CHECK ADD  CONSTRAINT [FK_HoanHang_DDH1] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DDH] ([MaDDH])
GO
ALTER TABLE [dbo].[HoanHang] CHECK CONSTRAINT [FK_HoanHang_DDH1]
GO
ALTER TABLE [dbo].[HoanHang]  WITH CHECK ADD  CONSTRAINT [FK_HoanHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoanHang] CHECK CONSTRAINT [FK_HoanHang_KhachHang]
GO
ALTER TABLE [dbo].[HuyHang]  WITH CHECK ADD  CONSTRAINT [FK_HuyHang_DDH1] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DDH] ([MaDDH])
GO
ALTER TABLE [dbo].[HuyHang] CHECK CONSTRAINT [FK_HuyHang_DDH1]
GO
ALTER TABLE [dbo].[HuyHang]  WITH CHECK ADD  CONSTRAINT [FK_HuyHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HuyHang] CHECK CONSTRAINT [FK_HuyHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_Quyen]
GO
ALTER TABLE [dbo].[MaGiamGia_KhachHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[MaGiamGia_KhachHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[MaGiamGia_KhachHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[MaGiamGia_KhachHang]  WITH CHECK ADD FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[MaGiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[MaGiamGia_KhachHang]  WITH CHECK ADD FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[MaGiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[MaGiamGia_KhachHang]  WITH CHECK ADD FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[MaGiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_Admin_Quyen]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_HangSanXuat] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangSanXuat] ([MaHang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_HangSanXuat]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_HinhAnh] FOREIGN KEY([MaHinhAnh])
REFERENCES [dbo].[HinhAnh] ([MaHinhAnh])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_HinhAnh]
GO
ALTER TABLE [dbo].[YeuCauBH]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauBH_BaoHanh] FOREIGN KEY([MaBH])
REFERENCES [dbo].[BaoHanh] ([MaBH])
GO
ALTER TABLE [dbo].[YeuCauBH] CHECK CONSTRAINT [FK_YeuCauBH_BaoHanh]
GO
ALTER TABLE [dbo].[YeuCauBH]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauBH_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[YeuCauBH] CHECK CONSTRAINT [FK_YeuCauBH_KhachHang]
GO
ALTER TABLE [dbo].[YeuCauBH]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauBH_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[YeuCauBH] CHECK CONSTRAINT [FK_YeuCauBH_SanPham]
GO
/****** Object:  StoredProcedure [dbo].[AddToCart]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddToCart]
    @CustomerId INT,
    @ProductId INT,
    @Quantity INT
AS
BEGIN
    -- Kiểm tra xem giỏ hàng của khách hàng đã tồn tại chưa
    IF NOT EXISTS(SELECT * FROM GioHang WHERE MaKH = @CustomerId)
    BEGIN
        -- Nếu giỏ hàng chưa tồn tại, tạo mới giỏ hàng cho khách hàng
        INSERT INTO GioHang(MaKH)
        VALUES (@CustomerId)
    END

    -- Kiểm tra xem sản phẩm đã tồn tại trong chi tiết giỏ hàng chưa
    IF EXISTS(SELECT * FROM CTGioHang WHERE MaGioHang IN (SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId) AND MaSP = @ProductId)
    BEGIN
        -- Nếu sản phẩm đã tồn tại, cập nhật số lượng và thành tiền
        UPDATE CTGioHang
        SET SoLuong = SoLuong + @Quantity,
            ThanhTien = ThanhTien + (@Quantity * (SELECT GiaTien FROM SanPham WHERE MaSP = @ProductId))
        WHERE MaGioHang IN (SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId) AND MaSP = @ProductId
    END
    ELSE
    BEGIN
        -- Nếu sản phẩm chưa tồn tại, thêm mới vào chi tiết giỏ hàng
        INSERT INTO CTGioHang(MaGioHang, MaSP, SoLuong, ThanhTien)
        VALUES ((SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId), @ProductId, @Quantity, @Quantity * (SELECT GiaTien FROM SanPham WHERE MaSP = @ProductId))
    END

    -- Cập nhật tổng tiền trong bảng giỏ hàng
    UPDATE GioHang
    SET TongTienGioHang = TongTienGioHang + (@Quantity * (SELECT GiaTien FROM SanPham WHERE MaSP = @ProductId))
    WHERE MaKH = @CustomerId
END



GO
/****** Object:  StoredProcedure [dbo].[CapNhatGHThanhCong]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CapNhatGHThanhCong]
    @MaDDH INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật trạng thái của đơn đặt hàng trong bảng DDH thành 3 (Giao hàng thành công) chỉ khi trạng thái hiện tại là 2
    UPDATE [dbo].[DDH]
    SET [TrangThai] = 3
    WHERE [MaDDH] = @MaDDH AND [TrangThai] = 2;

END


GO
/****** Object:  StoredProcedure [dbo].[CapNhatGiaoHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CapNhatGiaoHang]
    @MaDDH INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật trạng thái của đơn đặt hàng trong bảng DDH thành 3 (Giao hàng thành công) chỉ khi trạng thái hiện tại là 2
    UPDATE [dbo].[DDH]
    SET [TrangThai] = 2
    WHERE [MaDDH] = @MaDDH AND [TrangThai] = 1;

END


GO
/****** Object:  StoredProcedure [dbo].[CapNhatHuyDonHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CapNhatHuyDonHang]
    @MaKH INT,
    @MaDDH INT,
    @LyDo NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    -- Thêm dữ liệu vào bảng HuyHang
    INSERT INTO [dbo].[HuyHang] ([MaDDH], [MaKH], [LyDonHuy], [NgayHuy])
    VALUES (@MaDDH, @MaKH, @LyDo, GETDATE());

    -- Cập nhật trạng thái của đơn đặt hàng trong bảng DDH thành 4
    UPDATE [dbo].[DDH]
    SET [TrangThai] = 4
    WHERE [MaDDH] = @MaDDH;
	UPDATE SP
    SET SP.SoLuongDaBanRa = SP.SoLuongDaBanRa - CT.SoLuong,
        SP.SoLuongTon = SP.SoLuongTon + CT.SoLuong
    FROM SanPham SP
    INNER JOIN CTDDH CT ON SP.MaSP = CT.MaSP
    WHERE CT.MaDDH = @MaDDH
      AND EXISTS (
        SELECT 1
        FROM DDH D
        WHERE D.MaDDH = @MaDDH AND D.MaKH = @MaKH
      );
END

GO
/****** Object:  StoredProcedure [dbo].[CapNhatHuyDonHangByMaDDH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CapNhatHuyDonHangByMaDDH]
    @MaDDH INT,
    @LyDo NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    -- Thêm dữ liệu vào bảng HuyHang
    INSERT INTO [dbo].[HuyHang] ([MaDDH], [MaKH], [LyDonHuy], [NgayHuy])
    VALUES (@MaDDH, 3, @LyDo, GETDATE());

    -- Cập nhật trạng thái của đơn đặt hàng trong bảng DDH thành 4
    UPDATE [dbo].[DDH]
    SET [TrangThai] = 4
    WHERE [MaDDH] = @MaDDH;

    -- Cập nhật lại SoLuongBanRa và SoLuongTon trong bảng SanPham
    UPDATE SP
    SET SP.SoLuongDaBanRa = SP.SoLuongDaBanRa - CT.SoLuong,
        SP.SoLuongTon = SP.SoLuongTon + CT.SoLuong
    FROM SanPham SP
    INNER JOIN CTDDH CT ON SP.MaSP = CT.MaSP
    WHERE CT.MaDDH = @MaDDH;

END

GO
/****** Object:  StoredProcedure [dbo].[CreateOrderFromCart]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateOrderFromCart]
(
  @CustomerId INT,
  @MaGiamGia NVARCHAR(10),
  @MaNVC int,
  @HouseNumber NVARCHAR(50),
  @StreetName NVARCHAR(50),
  @Ward NVARCHAR(50),
  @District NVARCHAR(50), 
  @Province NVARCHAR(50),

  @UserRc NVARCHAR(50),
  @PhoneNo NVARCHAR(50),
  @GhiChu Nvarchar(max)
)
AS 
BEGIN
  BEGIN TRANSACTION

    -- Thêm đơn hàng
    INSERT INTO DDH (MaKH, SoNha, TenDuong, PhuongXa, QuanHuyen,  
                      TinhThanh, TenNguoiNhan, SDTNguoiNhan, MaNVC, MaGiamGia, NgayDat, GhiChu)
    VALUES (@CustomerId, @HouseNumber, @StreetName, @Ward, @District, 
            @Province, @UserRc, @PhoneNo, @MaNVC, @MaGiamGia,GETDATE(),@GhiChu);
    
    -- Lấy ID đơn hàng vừa tạo
    DECLARE @OrderId INT;
    SET @OrderId = @@IDENTITY;

    -- Thêm chi tiết đơn hàng
    INSERT INTO CTDDH (MaDDH, MaSP, SoLuong, DonGia, ThanhTien)  
    SELECT @OrderId, CTGH.MaSP, CTGH.SoLuong, SP.GiaTien, 
           CTGH.SoLuong * SP.GiaTien
    FROM CTGioHang CTGH JOIN SanPham SP 
      ON CTGH.MaSP = SP.MaSP
    WHERE CTGH.MaGioHang IN (
      SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId
    );
	UPDATE p
	SET p.SoLuongDaBanRa += c.SoLuong,
		p.SoLuongTon = p.SoLuongTon - c.SoLuong,
		p.TrangThai = CASE WHEN p.SoLuongTon <= 0 THEN 2 ELSE p.TrangThai END
	FROM SanPham p
	INNER JOIN CTGioHang c ON p.MaSP = c.MaSP
	INNER JOIN GioHang g ON c.MaGioHang = g.MaGioHang
	WHERE g.MaKH = @CustomerId;

    -- Xóa giỏ hàng
    DELETE FROM CTGioHang
    WHERE MaGioHang IN (
      SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId
    );

    -- Tính tổng tiền đơn hàng
    DECLARE @TongTien FLOAT;
    SELECT @TongTien = SUM(ThanhTien)
    FROM CTDDH
    WHERE MaDDH = @OrderId;

    -- Lấy % giảm giá
    DECLARE @PhanTramGiam FLOAT;
    SELECT @PhanTramGiam = TiLeGiam 
    FROM MaGiamGia
    WHERE MaGiamGia = @MaGiamGia;

	Declare @TienVC money;
	Select @TienVC = ChiPhi
	from NhaVanChuyen
	where MaNVC=@MaNVC
    -- Tính tiền giảm
    DECLARE @TienGiam FLOAT;
    SET @TienGiam = @TongTien * @PhanTramGiam / 100;

    -- Cập nhật lại tổng tiền đơn hàng
    UPDATE DDH 
    SET  
      ThanhTien = @TongTien - @TienGiam +@TienVC
    WHERE
      MaDDH = @OrderId;
    
    -- Cập nhật tổng tiền giỏ hàng = 0
    UPDATE GioHang  
    SET TongTienGioHang = 0
    WHERE MaKH = @CustomerId;

  COMMIT TRANSACTION
END


GO
/****** Object:  StoredProcedure [dbo].[danhGia]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhGia]
  @MaKH INT,
  @MaSP INT,
  @NoiDung NVARCHAR(50),
  @SoSao INT
  
AS
BEGIN
  SET NOCOUNT ON;
  declare @ResultCode INT
  BEGIN TRY
    BEGIN TRANSACTION;

    -- Kiểm tra xem khách hàng đã mua sản phẩm đó chưa
    IF EXISTS (
        SELECT 1
        FROM [ThietBiDienTu].[dbo].[CTDDH] ct
        INNER JOIN [ThietBiDienTu].[dbo].[DDH] ddh ON ct.MaDDH = ddh.MaDDH
        WHERE ddh.MaKH = @MaKH
        AND ct.MaSP = @MaSP
        AND ddh.TrangThai = 3
    )
    BEGIN
      -- Kiểm tra xem khách hàng đã đánh giá sản phẩm chưa
      IF NOT EXISTS (
          SELECT 1
          FROM [ThietBiDienTu].[dbo].[DanhGiaSanPham]
          WHERE MaKH = @MaKH
          AND MaSP = @MaSP
      )
      BEGIN
        -- Thêm đánh giá vào bảng DanhGiaSanPham
        INSERT INTO [ThietBiDienTu].[dbo].[DanhGiaSanPham] (
          [NoiDungDanhGia],
          [NgayDanhGia],
          [MaSP],
          [TrangThai],
          [MaKH],
          [DanhGia]
        )
        VALUES (
          @NoiDung,
          GETDATE(),
          @MaSP,
          3, 
          @MaKH,
          @SoSao
        );

        SET @ResultCode = 1; -- Đánh giá thành công
      END
      ELSE
      BEGIN
        SET @ResultCode = -1; -- Đã đánh giá trước đó
      END
    END
    ELSE
    BEGIN
      SET @ResultCode = 0; -- Chưa mua sản phẩm này
    END

    COMMIT;
  END TRY
  BEGIN CATCH
    ROLLBACK;
    SET @ResultCode = -2;
	
	 -- Lỗi trong quá trình thực hiện
  END CATCH
  select @ResultCode as ketqua
END

GO
/****** Object:  StoredProcedure [dbo].[GetCartItems]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCartItems]
    @CustomerId INT
AS
BEGIN
    SELECT P.MaSP, P.TenSP, P.GiaTien, CD.SoLuong, CD.ThanhTien, HA.LinkHinhAnhChinh, GH.TongTienGioHang, P.SoLuongTon
    FROM SanPham P
    INNER JOIN CTGioHang CD ON P.MaSP = CD.MaSP
    INNER JOIN HinhAnh HA ON P.MaHinhAnh = HA.MaHinhAnh
    INNER JOIN GioHang GH ON CD.MaGioHang = GH.MaGioHang
    WHERE CD.MaGioHang IN (SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId)
END

GO
/****** Object:  StoredProcedure [dbo].[GetCustomerAddress]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCustomerAddress]
	@CustomerId INT
AS
BEGIN
	SELECT 
		CTDC.SoNha, 
		CTDC.TenDuong,
		CTDC.PhuongXa,
		CTDC.QuanHuyen,
		CTDC.TinhThanh,
		CTDC.MacDinh,
		CTDC.TenNguoiNhan,
		CTDC.SDTNguoiNhan
	FROM CTDiaChi CTDC
	INNER JOIN DiaChi DC ON CTDC.MaDiaChi = DC.MaDiaChi
	WHERE DC.MaKH = @CustomerId
END


GO
/****** Object:  StoredProcedure [dbo].[GetDanhGia1]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDanhGia1]
AS
BEGIN

  SELECT
    dg.MaDanhGia,
    dg.NoiDungDanhGia, 
    dg.NgayDanhGia,
    dg.MaSP,
    dg.TrangThai, 
    dg.MaKH,
    dg.DanhGia,
    
    sp.TenSP,
    sp.MaHinhAnh,
    
    ha.LinkHinhAnhChinh,
    
    kh.TenKH

  FROM DanhGiaSanPham dg
  
  INNER JOIN SanPham sp ON dg.MaSP = sp.MaSP
  INNER JOIN HinhAnh ha ON sp.MaHinhAnh = ha.MaHinhAnh
  INNER JOIN KhachHang kh ON dg.MaKH = kh.MaKH

  WHERE dg.TrangThai = 1

END


GO
/****** Object:  StoredProcedure [dbo].[GetDanhGia2]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDanhGia2]
AS
BEGIN

  SELECT
    dg.MaDanhGia,
    dg.NoiDungDanhGia, 
    dg.NgayDanhGia,
    dg.MaSP,
    dg.TrangThai, 
    dg.MaKH,
    dg.DanhGia,
    
    sp.TenSP,
    sp.MaHinhAnh,
    
    ha.LinkHinhAnhChinh,
    
    kh.TenKH

  FROM DanhGiaSanPham dg
  
  INNER JOIN SanPham sp ON dg.MaSP = sp.MaSP
  INNER JOIN HinhAnh ha ON sp.MaHinhAnh = ha.MaHinhAnh
  INNER JOIN KhachHang kh ON dg.MaKH = kh.MaKH

  WHERE dg.TrangThai = 2

END


GO
/****** Object:  StoredProcedure [dbo].[GetDanhGia3]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDanhGia3]
AS
BEGIN

  SELECT
    dg.MaDanhGia,
    dg.NoiDungDanhGia, 
    dg.NgayDanhGia,
    dg.MaSP,
    dg.TrangThai, 
    dg.MaKH,
    dg.DanhGia,
    
    sp.TenSP,
    sp.MaHinhAnh,
    
    ha.LinkHinhAnhChinh,
    
    kh.TenKH

  FROM DanhGiaSanPham dg
  
  INNER JOIN SanPham sp ON dg.MaSP = sp.MaSP
  INNER JOIN HinhAnh ha ON sp.MaHinhAnh = ha.MaHinhAnh
  INNER JOIN KhachHang kh ON dg.MaKH = kh.MaKH

  WHERE dg.TrangThai = 3

END


GO
/****** Object:  StoredProcedure [dbo].[GetHoanHangByMaKH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHoanHangByMaKH]
(
    @MaKH INT
)
AS
BEGIN
    SELECT 
        HH.MaHoanHang,
        HH.MaDDH,
        HH.LyDonHoanHang,
        HH.TrangThai,
        DDH.NgayDat,
        DDH.TrangThai AS TrangThaiDDH,
        DDH.SDTNguoiNhan,
        DDH.TenNguoiNhan,
        DDH.SoNha,
        DDH.TenDuong,
        DDH.PhuongXa,
        DDH.QuanHuyen,
        DDH.TinhThanh,
        DDH.GhiChu,
        DDH.ThanhTien
    FROM 
        [ThietBiDienTu].[dbo].[HoanHang] HH
    INNER JOIN 
        [ThietBiDienTu].[dbo].[DDH] DDH ON HH.MaDDH = DDH.MaDDH
    WHERE 
        DDH.MaKH = @MaKH;
END

GO
/****** Object:  StoredProcedure [dbo].[GetMaGiamGiaInfoForKhachHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMaGiamGiaInfoForKhachHang]
    @MaKH INT
AS
BEGIN
    SELECT 
        KH.MaKH,
        KH.TenKH,
        MG.MaGiamGia,
        MG.TenMGG,
        MG.SLDaSuDung,
        MG.NgayBatDau,
        MG.NgayKetThuc,
        MG.TiLeGiam,
        MGH.TrangThai AS TrangThaiMaGiamGia
    FROM 
        KhachHang KH
    LEFT JOIN 
        MaGiamGia_KhachHang MGH ON KH.MaKH = MGH.MaKH
    LEFT JOIN 
        MaGiamGia MG ON MGH.MaGiamGia = MG.MaGiamGia
    WHERE
        KH.MaKH = @MaKH;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetMaGiamGiaInfoForKhachHangAndTrangThai]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetMaGiamGiaInfoForKhachHangAndTrangThai]
    @MaKH INT,
	@TrangThai INT
AS
BEGIN
    SELECT 
        KH.MaKH,
        KH.TenKH,
        MG.MaGiamGia,
        MG.TenMGG,
        MG.SLDaSuDung,
        MG.NgayBatDau,
        MG.NgayKetThuc,
        MG.TiLeGiam,
        MGH.TrangThai AS TrangThaiMaGiamGia
    FROM 
        KhachHang KH
    LEFT JOIN 
        MaGiamGia_KhachHang MGH ON KH.MaKH = MGH.MaKH
    LEFT JOIN 
        MaGiamGia MG ON MGH.MaGiamGia = MG.MaGiamGia
    WHERE
        KH.MaKH = @MaKH and MGH.TrangThai=@TrangThai
END;

GO
/****** Object:  StoredProcedure [dbo].[GetOrderInfoByCustomerId]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetOrderInfoByCustomerId]
(
  @MaKH INT
)
AS
BEGIN

  SELECT 
    DDH.MaDDH,
    DDH.NgayDat,
    DDH.TrangThai,   
    DDH.SDTNguoiNhan,
    DDH.TenNguoiNhan,
    DDH.SoNha,
    DDH.TenDuong,
    DDH.PhuongXa,
    DDH.QuanHuyen,
    DDH.TinhThanh,
    DDH.GhiChu,
    DDH.ThanhTien,

    SP.TenSP,
    SP.GiaTien,
    CTDDH.SoLuong,
    CTDDH.ThanhTien,
    
    HA.LinkHinhAnhChinh,
    NV.TenNVC,
    MGG.TiLeGiam

  FROM DDH
  LEFT JOIN CTDDH ON DDH.MaDDH = CTDDH.MaDDH
  LEFT JOIN SanPham SP ON CTDDH.MaSP = SP.MaSP
  LEFT JOIN HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh 
  LEFT JOIN NhaVanChuyen NV ON DDH.MaNVC = NV.MaNVC
  LEFT JOIN MaGiamGia MGG ON DDH.MaGiamGia = MGG.MaGiamGia
  
  WHERE DDH.MaKH = @MaKH

END


GO
/****** Object:  StoredProcedure [dbo].[GetOrderInfoByCustomerIdAndOrderIDAndStatus]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetOrderInfoByCustomerIdAndOrderIDAndStatus]
(
  @MaKH INT,
  @MaDDH INT,
  @TrangThai INT
)
AS
BEGIN

  SELECT 
    DDH.MaDDH,
    DDH.NgayDat,
       DDH.TrangThai,
    DDH.SDTNguoiNhan,
    DDH.TenNguoiNhan,
    DDH.SoNha,
    DDH.TenDuong,
    DDH.PhuongXa,
    DDH.QuanHuyen,
    DDH.TinhThanh,
    DDH.GhiChu,
    DDH.ThanhTien,

    SP.TenSP,
	SP.MASP,
    SP.GiaTien,
    CTDDH.SoLuong,
    CTDDH.ThanhTien as ThanhTienSP,
    
    HA.LinkHinhAnhChinh,
    NV.TenNVC,
	NV.ChiPhi,
    MGG.TiLeGiam

  FROM DDH
  LEFT JOIN CTDDH ON DDH.MaDDH = CTDDH.MaDDH
  LEFT JOIN SanPham SP ON CTDDH.MaSP = SP.MaSP
  LEFT JOIN HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh 
  LEFT JOIN NhaVanChuyen NV ON DDH.MaNVC = NV.MaNVC
  LEFT JOIN MaGiamGia MGG ON DDH.MaGiamGia = MGG.MaGiamGia
  
  WHERE 
    DDH.MaKH = @MaKH AND
    DDH.MaDDH = @MaDDH AND
    DDH.TrangThai = @TrangThai;

END


GO
/****** Object:  StoredProcedure [dbo].[GetOrderInfoByCustomerIdAndStatus]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetOrderInfoByCustomerIdAndStatus]
(
  @MaKH INT,
  @TrangThai INT
)
AS
BEGIN

  SELECT 
    DDH.MaDDH,
    DDH.NgayDat,
       DDH.TrangThai,
    DDH.SDTNguoiNhan,
    DDH.TenNguoiNhan,
    DDH.SoNha,
    DDH.TenDuong,
    DDH.PhuongXa,
    DDH.QuanHuyen,
    DDH.TinhThanh,
    DDH.GhiChu,
    DDH.ThanhTien,

    SP.TenSP,
	SP.MASP,
    SP.GiaTien,
    CTDDH.SoLuong,
    CTDDH.ThanhTien as ThanhTienSP,
    
    HA.LinkHinhAnhChinh,
    NV.TenNVC,
	NV.ChiPhi,
    MGG.TiLeGiam

  FROM DDH
  LEFT JOIN CTDDH ON DDH.MaDDH = CTDDH.MaDDH
  LEFT JOIN SanPham SP ON CTDDH.MaSP = SP.MaSP
  LEFT JOIN HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh 
  LEFT JOIN NhaVanChuyen NV ON DDH.MaNVC = NV.MaNVC
  LEFT JOIN MaGiamGia MGG ON DDH.MaGiamGia = MGG.MaGiamGia
  
  WHERE DDH.MaKH = @MaKH AND DDH.TrangThai = @TrangThai;

END


GO
/****** Object:  StoredProcedure [dbo].[GetOrderInfoByMaDDH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[GetOrderInfoByMaDDH]
(
  @MaDDH INT
)
AS
BEGIN
  SELECT 
    DDH.MaDDH,
    DDH.NgayDat,
    DDH.TrangThai,
    DDH.SDTNguoiNhan,
    DDH.TenNguoiNhan,
    DDH.SoNha,
    DDH.TenDuong,
    DDH.PhuongXa,
    DDH.QuanHuyen,
    DDH.TinhThanh,
    DDH.GhiChu,
    DDH.ThanhTien,

    SP.TenSP,
    SP.GiaTien,
    CTDDH.SoLuong,
    CTDDH.ThanhTien as ThanhTienSP,
    
    HA.LinkHinhAnhChinh,
    NV.TenNVC,
    NV.ChiPhi,
    MGG.TiLeGiam

  FROM DDH
  LEFT JOIN CTDDH ON DDH.MaDDH = CTDDH.MaDDH
  LEFT JOIN SanPham SP ON CTDDH.MaSP = SP.MaSP
  LEFT JOIN HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh 
  LEFT JOIN NhaVanChuyen NV ON DDH.MaNVC = NV.MaNVC
  LEFT JOIN MaGiamGia MGG ON DDH.MaGiamGia = MGG.MaGiamGia
  
  WHERE 
    DDH.MaDDH = @MaDDH;

END


GO
/****** Object:  StoredProcedure [dbo].[GetOrderInfoByMaHoanHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[GetOrderInfoByMaHoanHang]
(
  @MaHoanHang INT
)
AS
BEGIN
  SELECT 
    DDH.MaDDH,
    DDH.NgayDat,
    DDH.TrangThai AS TrangThaiDDH,
    DDH.SDTNguoiNhan,
    DDH.TenNguoiNhan,
    DDH.SoNha,
    DDH.TenDuong,
    DDH.PhuongXa,
    DDH.QuanHuyen,
    DDH.TinhThanh,
    DDH.GhiChu,
    DDH.ThanhTien,

    SP.TenSP,
    SP.GiaTien,
    CTDDH.SoLuong,
    CTDDH.ThanhTien as ThanhTienSP,
    
    HA.LinkHinhAnhChinh,
    NV.TenNVC,
    NV.ChiPhi,
    MGG.TiLeGiam,

    HH.MaHoanHang,
    HH.LyDonHoanHang,
    HH.TrangThai AS TrangThaiHoanHang

  FROM HoanHang HH
  LEFT JOIN DDH ON HH.MaDDH = DDH.MaDDH
  LEFT JOIN CTDDH ON DDH.MaDDH = CTDDH.MaDDH
  LEFT JOIN SanPham SP ON CTDDH.MaSP = SP.MaSP
  LEFT JOIN HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh 
  LEFT JOIN NhaVanChuyen NV ON DDH.MaNVC = NV.MaNVC
  LEFT JOIN MaGiamGia MGG ON DDH.MaGiamGia = MGG.MaGiamGia
  
  WHERE 
    HH.MaHoanHang = @MaHoanHang;

ENd

GO
/****** Object:  StoredProcedure [dbo].[GetOrderInfoByStatus1]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[GetOrderInfoByStatus1]
(
  @TrangThai INT
)
AS
BEGIN
  SELECT 
    DDH.MaDDH,
    DDH.NgayDat,
    DDH.TrangThai,
    DDH.SDTNguoiNhan,
    DDH.TenNguoiNhan,
    DDH.SoNha,
    DDH.TenDuong,
    DDH.PhuongXa,
    DDH.QuanHuyen,
    DDH.TinhThanh,
    DDH.GhiChu,
    DDH.ThanhTien,

    SP.TenSP,
    SP.MaSP,
    SP.GiaTien,
    CTDDH.SoLuong,
    CTDDH.ThanhTien as ThanhTienSP,
    
    HA.LinkHinhAnhChinh,
    NV.TenNVC,
    NV.ChiPhi,
    MGG.TiLeGiam

  FROM DDH
  LEFT JOIN CTDDH ON DDH.MaDDH = CTDDH.MaDDH
  LEFT JOIN SanPham SP ON CTDDH.MaSP = SP.MaSP
  LEFT JOIN HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh 
  LEFT JOIN NhaVanChuyen NV ON DDH.MaNVC = NV.MaNVC
  LEFT JOIN MaGiamGia MGG ON DDH.MaGiamGia = MGG.MaGiamGia
  
  WHERE 
    DDH.TrangThai = @TrangThai;
END



GO
/****** Object:  StoredProcedure [dbo].[HienThiHoanHangBangTrangThai]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[HienThiHoanHangBangTrangThai]
(
  @TrangThai INT
)
AS
BEGIN
  SELECT 
    HH.MaHoanHang,
    HH.MaDDH,
    HH.LyDonHoanHang,
    HH.TrangThai AS TrangThaiHoanHang,
	HH.MAKH,
    DDH.NgayDat,
    DDH.TrangThai AS TrangThaiDDH,
    DDH.SDTNguoiNhan,
    DDH.TenNguoiNhan,
    DDH.SoNha,
    DDH.TenDuong,
    DDH.PhuongXa,
    DDH.QuanHuyen,
    DDH.TinhThanh,
    DDH.GhiChu,
    DDH.ThanhTien,

    SP.TenSP,
    SP.MaSP,
    SP.GiaTien,
    CTDDH.SoLuong,
    CTDDH.ThanhTien as ThanhTienSP,
    
    HA.LinkHinhAnhChinh,
    NV.TenNVC,
    NV.ChiPhi,
    MGG.TiLeGiam

  FROM HoanHang HH
  LEFT JOIN DDH ON HH.MaDDH = DDH.MaDDH
  LEFT JOIN CTDDH ON DDH.MaDDH = CTDDH.MaDDH
  LEFT JOIN SanPham SP ON CTDDH.MaSP = SP.MaSP
  LEFT JOIN HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh 
  LEFT JOIN NhaVanChuyen NV ON DDH.MaNVC = NV.MaNVC
  LEFT JOIN MaGiamGia MGG ON DDH.MaGiamGia = MGG.MaGiamGia
  
  WHERE 
    HH.TrangThai = @TrangThai;
END


GO
/****** Object:  StoredProcedure [dbo].[InsertCustomerAddress]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertCustomerAddress]
	@CustomerId INT,
	@HouseNumber NVARCHAR(50),
	@StreetName NVARCHAR(50),
	@Ward NVARCHAR(50),
	@District NVARCHAR(50), 
	@Province NVARCHAR(50),
	@IsDefault int,
	@UserRc NVARCHAR(50),
	@PhoneNo NVARCHAR(50)
AS  
BEGIN
 IF @IsDefault = 1
    BEGIN
        UPDATE CTDiaChi
        SET MacDinh = 2
        WHERE MaDiaChi IN (SELECT MaDiaChi FROM DiaChi WHERE MaKH = @CustomerId)
    END
	INSERT INTO DiaChi (MaKH)
	VALUES (@CustomerId)

	DECLARE @AddressId INT
	SET @AddressId = SCOPE_IDENTITY()

	INSERT INTO CTDiaChi(MaDiaChi, SoNha, TenDuong, PhuongXa, QuanHuyen, TinhThanh, MacDinh, TenNguoiNhan,SDTNguoiNhan)
	VALUES(@AddressId, @HouseNumber, @StreetName, @Ward, @District, @Province, @IsDefault, @UserRc, @PhoneNo)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertHoanTraDonHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertHoanTraDonHang]
    @MaDDH INT,
    @MaKH INT,
    @LyDo NVARCHAR(MAX)
AS
BEGIN
    -- Thêm dữ liệu vào bảng HoanHang
    INSERT INTO [ThietBiDienTu].[dbo].[HoanHang] ([MaDDH], [MaKH], [LyDonHoanHang], [TrangThai])
    VALUES (@MaDDH, @MaKH, @LyDo, 3); -- Trạng thái của HoanHang là 3

    -- Cập nhật trạng thái của DDH là 5
    UPDATE [ThietBiDienTu].[dbo].[DDH]
    SET [TrangThai] = 5
    WHERE [MaDDH] = @MaDDH;
END

GO
/****** Object:  StoredProcedure [dbo].[layDanhGia]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[layDanhGia]
  @MaSP int
AS
BEGIN
  SELECT
    KH.TenKH,
    DG.NgayDanhGia,
    DG.NoiDungDanhGia,
    DG.DanhGia AS Sosaodanhgia
  FROM
    [ThietBiDienTu].[dbo].[DanhGiaSanPham] DG
    INNER JOIN [ThietBiDienTu].[dbo].[KhachHang] KH ON DG.MaKH = KH.MaKH
  WHERE
    DG.MaSP = @MaSP and
	DG.TrangThai=1
  ORDER BY
    DG.NgayDanhGia DESC;
END


GO
/****** Object:  StoredProcedure [dbo].[LayHangBangMaDanhMuc]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LayHangBangMaDanhMuc]
    @MaDanhMuc INT
AS
BEGIN
    SELECT NSX.MaHang
          ,NSX.TenHang
          ,NSX.MoTa
          ,NSX.TTLienHe
    FROM HangSanXuat NSX
    INNER JOIN SanPham SP ON NSX.MaHang = SP.MaHang
    WHERE SP.[MaDanhMuc] = @MaDanhMuc
    GROUP BY NSX.MaHang, NSX.TenHang, NSX.MoTa, NSX.TTLienHe
END

GO
/****** Object:  StoredProcedure [dbo].[LuuMaGiamGiaForKhachHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LuuMaGiamGiaForKhachHang]
    @MaGiamGia nvarchar(50),
    @MaKH INT
AS
BEGIN
    INSERT INTO MaGiamGia_KhachHang (MaGiamGia, MaKH)
    VALUES (@MaGiamGia, @MaKH);
END;

GO
/****** Object:  StoredProcedure [dbo].[RemoveFromCart]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RemoveFromCart]
    @CustomerId INT,
    @ProductId INT
AS
BEGIN
    -- Kiểm tra xem sản phẩm đã tồn tại trong chi tiết giỏ hàng chưa
    IF EXISTS(SELECT * FROM CTGioHang WHERE MaGioHang IN (SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId) AND MaSP = @ProductId)
    BEGIN
        -- Lấy thông tin sản phẩm để tính lại giá trước khi xóa
        DECLARE @ProductPrice DECIMAL(10, 2)
        SET @ProductPrice = (SELECT GiaTien FROM SanPham WHERE MaSP = @ProductId)

        -- Lấy số lượng của sản phẩm trong giỏ hàng
        DECLARE @Quantity INT
        SET @Quantity = (SELECT SoLuong FROM CTGioHang WHERE MaGioHang IN (SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId) AND MaSP = @ProductId)

        -- Cập nhật tổng tiền trong bảng giỏ hàng
        UPDATE GioHang
        SET TongTienGioHang = TongTienGioHang - (@Quantity * @ProductPrice)
        WHERE MaKH = @CustomerId

        -- Xóa sản phẩm khỏi chi tiết giỏ hàng
        DELETE FROM CTGioHang
        WHERE MaGioHang IN (SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId) AND MaSP = @ProductId
    END
END



GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTrangThaiBaoHanh]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CapNhatTrangThaiBaoHanh]
    @MaPhieuBH INT,
    @TrangThaiYeuCauBH INT,
    @TrangThaiBaoHanh INT
AS
BEGIN
    -- Cập nhật TrangThai trong bảng YeuCauBH
    UPDATE YeuCauBH
    SET TrangThai = @TrangThaiYeuCauBH
    WHERE MaPhieuBH = @MaPhieuBH;

    -- Cập nhật TrangThai trong bảng BaoHanh
    UPDATE BaoHanh
    SET TrangThai = @TrangThaiBaoHanh
    WHERE MaBH IN (SELECT MaBH FROM YeuCauBH WHERE MaPhieuBH = @MaPhieuBH);

END

GO
/****** Object:  StoredProcedure [dbo].[sp_HienThiBaoHanh]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HienThiBaoHanh]
    @MaKH INT
AS
BEGIN
    SELECT 
        BH.MaBH,
        BH.MaDDH,
        BH.MaSP,
        SP.TenSP,
        SP.GiaTien,
        SP.UuDai,
        SP.SoLuongTon,
        SP.MoTa,
        SP.ThongSoKyThuat,
        SP.ChinhSachBaoHanh,
        SP.ThoiGianBaoHanh,
        BH.NgayDH,
        BH.MaKH,
        BH.TenKH,
        BH.SDT,
        BH.NoiDungBH,
        BH.TrangThai,
        HA.LinkHinhAnhChinh
    FROM 
        BaoHanh BH
    INNER JOIN 
        SanPham SP ON BH.MaSP = SP.MaSP
    INNER JOIN 
        HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh
    WHERE 
        BH.MaKH = @MaKH;

END

GO
/****** Object:  StoredProcedure [dbo].[sp_HienThiBaoHanhTheoMaBH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HienThiBaoHanhTheoMaBH]
    @MaBH INT
AS
BEGIN
    SELECT 
        BH.MaBH,
        BH.MaDDH,
        BH.MaSP,
        SP.TenSP,
        SP.GiaTien,
        SP.UuDai,
        SP.SoLuongTon,
        SP.MoTa,
        SP.ThongSoKyThuat,
        SP.ChinhSachBaoHanh,
        SP.ThoiGianBaoHanh,
        BH.NgayDH,
        BH.MaKH,
        BH.TenKH,
        BH.SDT,
        BH.NoiDungBH,
        BH.TrangThai,
        HA.LinkHinhAnhChinh
    FROM 
        BaoHanh BH
    INNER JOIN 
        SanPham SP ON BH.MaSP = SP.MaSP
    INNER JOIN 
        HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh
    WHERE 
        BH.MaBH = @MaBH;

END

GO
/****** Object:  StoredProcedure [dbo].[sp_HienThiHuyDH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HienThiHuyDH]
    @MaKH INT
AS
BEGIN
    SELECT 
        H.MaHuyDon,
        D.MaDDH,
        H.LyDonHuy,
        H.NgayHuy,
        KH_HuyHang.TenKH
    FROM
        HuyHang H
    INNER JOIN
        DDH D ON H.MaDDH = D.MaDDH
    INNER JOIN
        KhachHang KH_DDHDatHang ON D.MaKH = KH_DDHDatHang.MaKH
    INNER JOIN
        KhachHang KH_HuyHang ON H.MaKH = KH_HuyHang.MaKH
    WHERE
        D.MaKH = @MaKH AND D.TrangThai = 4;
END;


GO
/****** Object:  StoredProcedure [dbo].[sp_HienThiYeuCauBHTheoMaKH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HienThiYeuCauBHTheoMaKH]
    @MaKH INT
AS
BEGIN
    SELECT 
        YCBH.MaPhieuBH,
        YCBH.MaSP,
        YCBH.MaKH,
        YCBH.MaBH,
        YCBH.NgayYeuCau,
        YCBH.LyDo,
        YCBH.TrangThai,
        BH.TenKH AS TenKhachHang,
        SP.TenSP,
        HA.LinkHinhAnhChinh
    FROM 
        YeuCauBH YCBH
    INNER JOIN 
        BaoHanh BH ON YCBH.MaBH = BH.MaBH
    INNER JOIN 
        SanPham SP ON YCBH.MaSP = SP.MaSP
    INNER JOIN 
        HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh
    WHERE 
        YCBH.MaKH = @MaKH;

END


GO
/****** Object:  StoredProcedure [dbo].[sp_HienThiYeuCauBHTheoTrangThai]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HienThiYeuCauBHTheoTrangThai]
    @TrangThai INT
AS
BEGIN
    SELECT 
        YCBH.MaPhieuBH,
        YCBH.MaSP,
        YCBH.MaKH,
        YCBH.MaBH,
        YCBH.NgayYeuCau,
        YCBH.LyDo,
        YCBH.TrangThai,
        BH.TenKH AS TenKhachHang,
        SP.TenSP,
        HA.LinkHinhAnhChinh
    FROM 
        YeuCauBH YCBH
    INNER JOIN 
        BaoHanh BH ON YCBH.MaBH = BH.MaBH
    INNER JOIN 
        SanPham SP ON YCBH.MaSP = SP.MaSP
    INNER JOIN 
        HinhAnh HA ON SP.MaHinhAnh = HA.MaHinhAnh
    WHERE 
        YCBH.TrangThai = @TrangThai;

END

GO
/****** Object:  StoredProcedure [dbo].[sp_TaoYeuCauBH]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TaoYeuCauBH]
    @MaBH INT,
    @LyDo NVARCHAR(MAX)
AS
BEGIN
    DECLARE @MaSP INT;
    DECLARE @MaKH INT;
    DECLARE @NgayYeuCau DATE;

    -- Lấy thông tin từ bảng BaoHanh
    SELECT @MaSP = MaSP, @MaKH = MaKH, @NgayYeuCau = GETDATE()
    FROM BaoHanh
    WHERE MaBH = @MaBH;

    -- Cập nhật TrangThai trong bảng BaoHanh thành 4
    UPDATE BaoHanh
    SET TrangThai = 4
    WHERE MaBH = @MaBH;

    -- Thêm vào bảng YeuCauBH
    INSERT INTO YeuCauBH (MaSP, MaKH, MaBH, NgayYeuCau, LyDo, TrangThai)
    VALUES (@MaSP, @MaKH, @MaBH, @NgayYeuCau, @LyDo, 3);

END

GO
/****** Object:  StoredProcedure [dbo].[ThongKeHDTheoKhoang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeHDTheoKhoang]
    @NgayBatDau DATE,
    @NgayKetThuc DATE,
    @TrangThai INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        DDH.MaDDH,
        DDH.ThanhTien,
        KhachHang.TenKH,
        DDH.MaGiamGia
    FROM
        DDH
    INNER JOIN
        KhachHang ON DDH.MaKH = KhachHang.MaKH
    WHERE
        DDH.NgayDat BETWEEN @NgayBatDau AND @NgayKetThuc
        AND DDH.TrangThai = @TrangThai
    ORDER BY
        DDH.NgayDat;
END

GO
/****** Object:  StoredProcedure [dbo].[ThongKeHoaDonTheoNam]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ThongKeHoaDonTheoNam]
    @Nam INT,
    @TrangThai INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        
        DDH.MaDDH,
        DDH.ThanhTien,
        KhachHang.TenKH,
        DDH.MaGiamGia
    FROM
        DDH
    INNER JOIN
        KhachHang ON DDH.MaKH = KhachHang.MaKH
    WHERE
        YEAR(DDH.NgayDat) = @Nam
        AND DDH.TrangThai = @TrangThai
    GROUP BY
        DDH.MaDDH,
        DDH.ThanhTien,
        KhachHang.TenKH,
        DDH.MaGiamGia
END


GO
/****** Object:  StoredProcedure [dbo].[ThongKeHoaDonTheoNgay]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeHoaDonTheoNgay]
    @Ngay INT,
    @Thang INT,
    @Nam INT,
    @TrangThai INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NgayDat DATE
    SET @NgayDat = DATEFROMPARTS(@Nam, @Thang, @Ngay)

    SELECT
        DDH.MaDDH,
        DDH.ThanhTien,
        KhachHang.TenKH,
        DDH.MaGiamGia
    FROM
        DDH
    INNER JOIN
        KhachHang ON DDH.MaKH = KhachHang.MaKH
    WHERE
        DDH.NgayDat = @NgayDat
        AND DDH.TrangThai = @TrangThai
    GROUP BY
        DDH.MaDDH,
        DDH.ThanhTien,
        KhachHang.TenKH,
        DDH.MaGiamGia
END

GO
/****** Object:  StoredProcedure [dbo].[ThongKeHoaDonTheoThang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeHoaDonTheoThang]
    @Thang INT,
    @Nam INT,
    @TrangThai INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        
        DDH.MaDDH,
        DDH.ThanhTien,
        KhachHang.TenKH,
        DDH.MaGiamGia
    FROM
        DDH
    INNER JOIN
        KhachHang ON DDH.MaKH = KhachHang.MaKH
    WHERE
        MONTH(DDH.NgayDat) = @Thang
        AND YEAR(DDH.NgayDat) = @Nam
        AND DDH.TrangThai = @TrangThai
    GROUP BY
        DDH.MaDDH,
        DDH.ThanhTien,
        KhachHang.TenKH,
        DDH.MaGiamGia
END

GO
/****** Object:  StoredProcedure [dbo].[ThongKeNam]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeNam]
    @Year INT
AS
BEGIN
    DECLARE @StartDate DATETIME;
    DECLARE @EndDate DATETIME;
    DECLARE @SLHDTuan INT;
    DECLARE @TienTuan MONEY;
    DECLARE @SLSP INT;

    SET @StartDate = DATEFROMPARTS(@Year, 1, 1);
    SET @EndDate = DATEADD(YEAR, 1, @StartDate);

    SELECT
        @SLHDTuan = COUNT(DISTINCT DDH.MaDDH),
        @TienTuan = SUM(DDH.ThanhTien),
        @SLSP = SUM(CTDDH.SoLuong)
    FROM
        DDH
    INNER JOIN
        CTDDH ON DDH.MaDDH = CTDDH.MaDDH
    WHERE
        DDH.NgayDat >= @StartDate AND DDH.NgayDat < @EndDate
        AND DDH.TrangThai = 3; -- Thêm điều kiện TrangThai = 3

    -- Hiển thị kết quả
    SELECT
        SLHDNam = @SLHDTuan,
        TienNam = @TienTuan,
        SLSP = @SLSP;
END;

GO
/****** Object:  StoredProcedure [dbo].[ThongKeThang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeThang]
    @Year INT,
    @Month INT
AS
BEGIN
    DECLARE @StartDate DATETIME;
    DECLARE @EndDate DATETIME;
    DECLARE @SLHDTuan INT;
    DECLARE @TienTuan MONEY;
    DECLARE @SLSP INT;

    SET @StartDate = DATEFROMPARTS(@Year, @Month, 1);
    SET @EndDate = DATEADD(MONTH, 1, @StartDate);
	
    SELECT
        @SLHDTuan = COALESCE(COUNT(DISTINCT DDH.MaDDH), 0),
        @TienTuan = COALESCE(SUM(DDH.ThanhTien), 0),
        @SLSP = COALESCE(SUM(CTDDH.SoLuong), 0)
    FROM
        DDH
    INNER JOIN
        CTDDH ON DDH.MaDDH = CTDDH.MaDDH
    WHERE
        DDH.NgayDat >= @StartDate AND DDH.NgayDat < @EndDate
        AND DDH.TrangThai = 3; -- Thêm điều kiện TrangThai = 3

    -- Hiển thị kết quả
    SELECT
        SLHDThang = @SLHDTuan,
        TienThang = @TienTuan,
        SLSP = @SLSP;
END;

GO
/****** Object:  StoredProcedure [dbo].[ThongKeTuan]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeTuan]
AS
BEGIN
    DECLARE @StartDate DATETIME;
    DECLARE @EndDate DATETIME;
    DECLARE @SLHDTuan INT;
    DECLARE @TienTuan MONEY;
    DECLARE @SLSP INT;

    SET @StartDate = DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), 0); 
    SET @EndDate = DATEADD(DAY, 6, @StartDate); 

    SELECT
        @SLHDTuan = COALESCE(COUNT(DISTINCT DDH.MaDDH), 0),
        @TienTuan = COALESCE(SUM(DDH.ThanhTien), 0),
        @SLSP = COALESCE(SUM(CTDDH.SoLuong), 0)
    FROM
        DDH
    INNER JOIN
        CTDDH ON DDH.MaDDH = CTDDH.MaDDH
    WHERE
        DDH.NgayDat BETWEEN @StartDate AND @EndDate
        AND DDH.TrangThai = 3; -- Thêm điều kiện TrangThai = 3

    -- Hiển thị kết quả
    SELECT
        SLHDTuan = @SLHDTuan,
        TienTuan = @TienTuan,
        SLSP = @SLSP;
END;


GO
/****** Object:  StoredProcedure [dbo].[UpdateCartItemQuantity]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCartItemQuantity]
    @CustomerId INT,
    @ProductId INT,
    @NewQuantity INT
AS
BEGIN
    -- Kiểm tra xem sản phẩm đã tồn tại trong chi tiết giỏ hàng chưa
    IF EXISTS (SELECT * FROM CTGioHang WHERE MaGioHang IN (SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId) AND MaSP = @ProductId)
    BEGIN
        -- Cập nhật số lượng mới và cập nhật tổng tiền trong bảng chi tiết giỏ hàng cùng một lúc
        UPDATE CTGioHang
        SET SoLuong = @NewQuantity,
            ThanhTien = @NewQuantity * SP.GiaTien
        FROM CTGioHang CT
        INNER JOIN SanPham SP ON CT.MaSP = SP.MaSP
        WHERE CT.MaGioHang IN (SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId) AND CT.MaSP = @ProductId

        -- Cập nhật tổng tiền trong bảng giỏ hàng sau khi cập nhật số lượng
        UPDATE G
        SET TongTienGioHang = (SELECT SUM(CT.SoLuong * SP.GiaTien)
                              FROM CTGioHang CT
                              INNER JOIN SanPham SP ON CT.MaSP = SP.MaSP
                              WHERE CT.MaGioHang = G.MaGioHang)
        FROM GioHang G
        WHERE G.MaKH = @CustomerId
    END
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateTrangThaiHoanHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateTrangThaiHoanHang]
(
    @MaHoanHang INT,
    @TrangThai INT
)
AS
BEGIN
    -- Cập nhật trạng thái của HoanHang
    UPDATE [ThietBiDienTu].[dbo].[HoanHang]
    SET [TrangThai] = @TrangThai
    WHERE [MaHoanHang] = @MaHoanHang;

    -- Nếu trạng thái là 2, cập nhật trạng thái của DDH thành 3
    IF @TrangThai = 2
    BEGIN
        UPDATE [ThietBiDienTu].[dbo].[DDH]
        SET [TrangThai] = 3
        WHERE [MaDDH] IN (SELECT [MaDDH] FROM [ThietBiDienTu].[dbo].[HoanHang] WHERE [MaHoanHang] = @MaHoanHang);
    END
END

GO
/****** Object:  StoredProcedure [dbo].[XoaGioHang]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XoaGioHang]
    @CustomerId INT
AS
BEGIN
    DELETE FROM CTGioHang
    WHERE MaGioHang IN (SELECT MaGioHang FROM GioHang WHERE MaKH = @CustomerId)
END


GO
/****** Object:  Trigger [dbo].[trg_ThemDuLieuBaoHanh]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_ThemDuLieuBaoHanh]
ON [ThietBiDienTu].[dbo].[DDH]
AFTER UPDATE
AS
BEGIN
    -- Insert into BaoHanh table if MaDDH does not exist
    INSERT INTO [ThietBiDienTu].[dbo].[BaoHanh] ([MaDDH], [MaSP], [NgayDH], [MaKH], [TenKH], [SDT], [NoiDungBH], [TrangThai])
    SELECT
        i.[MaDDH],
        c.[MaSP],
        i.[NgayDat],
        i.[MaKH],
        kh.[TenKH],
        kh.[SoDienThoaiKH],
        sp.[ChinhSachBaoHanh],
       1 
    FROM
        inserted i
    JOIN [ThietBiDienTu].[dbo].[CTDDH] c ON i.[MaDDH] = c.[MaDDH]
    JOIN [ThietBiDienTu].[dbo].[SanPham] sp ON c.[MaSP] = sp.[MaSP]
    JOIN [ThietBiDienTu].[dbo].[KhachHang] kh ON i.[MaKH] = kh.[MaKH]
    WHERE
        i.[TrangThai] = 3 
        AND sp.[ChinhSachBaoHanh] IS NOT NULL
        AND NOT EXISTS (SELECT 1 FROM [ThietBiDienTu].[dbo].[BaoHanh] bh WHERE bh.[MaDDH] = i.[MaDDH]);
END;

GO
/****** Object:  Trigger [dbo].[Trg_CapNhatGiaTien]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Trg_CapNhatGiaTien]
ON [dbo].[SanPham]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF UPDATE(GiaGoc) OR UPDATE(UuDai)
    BEGIN
        UPDATE sp
        SET GiaTien = i.GiaGoc - (i.GiaGoc * ISNULL(i.UuDai, 0) / 100)
        FROM [dbo].[SanPham] sp
        INNER JOIN inserted i ON sp.MaSP = i.MaSP
    END
END;


GO
/****** Object:  Trigger [dbo].[trg_UpdateStatus]    Script Date: 25/12/2023 10:15:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_UpdateStatus] 
ON [dbo].[SanPham]
AFTER INSERT, UPDATE  
AS
BEGIN
    UPDATE p
    SET TrangThai = CASE
        WHEN i.SoLuongTon <= 0 THEN 2
        ELSE 1
    END
    FROM SanPham p
    INNER JOIN inserted i ON p.MaSP = i.MaSP
END
GO
