USE [master]
GO
/****** Object:  Database [bpdlogin]    Script Date: 4/19/2020 2:06:32 PM ******/
CREATE DATABASE [bpdlogin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bpdlogin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\bpdlogin.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bpdlogin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\bpdlogin_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bpdlogin] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bpdlogin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bpdlogin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bpdlogin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bpdlogin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bpdlogin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bpdlogin] SET ARITHABORT OFF 
GO
ALTER DATABASE [bpdlogin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bpdlogin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bpdlogin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bpdlogin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bpdlogin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bpdlogin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bpdlogin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bpdlogin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bpdlogin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bpdlogin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bpdlogin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bpdlogin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bpdlogin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bpdlogin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bpdlogin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bpdlogin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bpdlogin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bpdlogin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bpdlogin] SET  MULTI_USER 
GO
ALTER DATABASE [bpdlogin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bpdlogin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bpdlogin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bpdlogin] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [bpdlogin] SET DELAYED_DURABILITY = DISABLED 
GO
USE [bpdlogin]
GO
/****** Object:  Table [dbo].[berita_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[berita_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[judul] [varchar](200) NULL,
	[deskripsi] [varchar](750) NULL,
	[auth_status] [varchar](1) NULL,
 CONSTRAINT [PK_berita_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dewan_pimpinan]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dewan_pimpinan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](550) NOT NULL,
	[jabatan] [varchar](550) NOT NULL,
	[deskripsi] [varchar](550) NOT NULL,
	[kategori] [varchar](550) NOT NULL,
	[tanggal] [date] NOT NULL,
	[image] [varchar](50) NULL,
 CONSTRAINT [PK_dewan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ikhtisar_data]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ikhtisar_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tahun] [int] NULL,
	[total_aset] [char](400) NULL,
	[jumlah_pendapatan] [char](400) NULL,
	[jumlah_biaya] [char](400) NULL,
	[laba_sebelum_pajak] [char](400) NULL,
	[laba_setelah_pajak] [char](400) NULL,
	[pendapatan_operasional] [char](400) NULL,
	[biaya_operasional] [char](400) NULL,
	[kredit_yang_diberikan] [char](400) NULL,
	[kredit_bermasalah] [char](400) NULL,
	[jumlah_dana_masyarakat] [char](400) NULL,
	[modal_inti] [char](400) NULL,
	[modal_pelengkap] [char](400) NULL,
	[jumlah_modal] [char](400) NULL,
	[total_aset_roduktif] [char](400) NULL,
	[aset_produktif_bermasalah] [char](400) NULL,
	[atmr] [char](400) NULL,
 CONSTRAINT [PK_ikhtisar_data_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ikhtisar_rasio]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ikhtisar_rasio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tahun] [int] NULL,
	[kpmm] [char](450) NULL,
	[apb] [char](450) NULL,
	[ckpn] [char](450) NULL,
	[npl] [char](450) NULL,
	[roa] [char](450) NULL,
	[roe] [char](450) NULL,
	[nim] [char](450) NULL,
	[bopo] [char](450) NULL,
	[ldr] [char](450) NULL,
 CONSTRAINT [PK_ikhtisar_rasio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jasalayanan_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jasalayanan_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[jenis_layanan] [varchar](550) NULL,
	[nama_layanan] [varchar](550) NULL,
	[detil] [varchar](550) NULL,
	[nominal] [varchar](550) NULL,
 CONSTRAINT [PK_jasalayanan_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kredit_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kredit_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](550) NULL,
	[kategori] [varchar](550) NULL,
	[deskripsi] [varchar](550) NULL,
	[image] [varchar](50) NULL,
	[tanggal] [date] NULL,
	[uploadfile] [varchar](50) NULL,
 CONSTRAINT [PK_kredit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[laporan_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[laporan_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](550) NULL,
	[kategori] [varchar](550) NULL,
	[deskripsi] [varchar](550) NULL,
	[uploadfile] [varchar](550) NULL,
	[tanggal] [date] NULL,
 CONSTRAINT [PK_laporan_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[layanan_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[layanan_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](550) NULL,
	[kategori] [varchar](550) NULL,
	[deskripsi] [varchar](1550) NULL,
	[image] [varchar](550) NULL,
	[tanggal] [date] NULL,
 CONSTRAINT [PK_layanan_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pemegang_saham]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pemegang_saham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[judul] [varchar](550) NULL,
	[deskripsi] [varchar](1550) NULL,
	[image] [varchar](550) NULL,
 CONSTRAINT [PK_pemegang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[posting_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[posting_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[judul] [varchar](250) NULL,
	[deskripsi] [varchar](450) NULL,
	[auth_status] [varbinary](1) NULL,
 CONSTRAINT [PK_posting_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[simpanan_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[simpanan_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](550) NULL,
	[kategori] [varchar](550) NULL,
	[deskripsi] [varchar](550) NULL,
	[image] [varchar](550) NULL,
	[uploadfile] [varchar](50) NULL,
	[tanggal] [date] NULL,
 CONSTRAINT [PK_simpanan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tentang_perusahaan]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tentang_perusahaan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[judul] [varchar](550) NOT NULL,
	[deskripsi] [varchar](1550) NOT NULL,
	[kategori] [varchar](550) NOT NULL,
 CONSTRAINT [PK_tentang_perusahaan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tmp_daftaruser]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmp_daftaruser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[role_id] [varchar](1) NULL,
	[is_active] [varchar](1) NULL,
	[user_buka] [varchar](100) NULL,
	[tgl_buka] [datetime] NULL,
	[user_auth] [varchar](100) NULL,
	[tgl_auth] [datetime] NULL,
	[auth_status] [varchar](1) NULL,
 CONSTRAINT [PK_tmp_daftaruser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tmp_editBerita]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmp_editBerita](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[judul] [varchar](250) NULL,
	[deskripsi] [varchar](750) NULL,
	[tgl_buka] [datetime] NULL,
	[tgl_auth] [datetime] NULL,
	[user_buka] [varchar](250) NULL,
	[user_auth] [varchar](250) NULL,
	[auth_status] [varchar](1) NULL,
	[idtmpberita] [int] NULL,
 CONSTRAINT [PK_tmp_editBerita] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tmp_editPengumuman]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmp_editPengumuman](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[judul] [varchar](150) NULL,
	[deskripsi] [varchar](750) NULL,
	[tgl_buka] [datetime] NULL,
	[tgl_auth] [datetime] NULL,
	[user_buka] [varchar](150) NULL,
	[user_auth] [varchar](150) NULL,
	[auth_status] [varchar](1) NULL,
	[idtmppengumuman] [int] NULL,
 CONSTRAINT [PK_tmp_editPengumuman] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tmp_edituser]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmp_edituser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[name] [varchar](100) NULL,
	[role_id] [varchar](1) NULL,
	[is_active] [varchar](1) NULL,
	[user_buka] [varchar](100) NULL,
	[tgl_buka] [datetime] NULL,
	[user_auth] [varchar](100) NULL,
	[tgl_auth] [datetime] NULL,
	[auth_status] [varchar](1) NULL,
 CONSTRAINT [PK_tmp_edituser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tmp_tambahBerita]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmp_tambahBerita](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[judul] [varchar](450) NULL,
	[deskripsi] [varchar](1550) NULL,
	[tgl_buka] [datetime] NULL,
	[tgl_auth] [datetime] NULL,
	[user_buka] [varchar](250) NULL,
	[user_auth] [varchar](250) NULL,
	[auth_status] [varchar](1) NULL,
 CONSTRAINT [PK_tmp_tambahBerita] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tmp_tambahPengumuman]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmp_tambahPengumuman](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[judul] [varchar](450) NULL,
	[deskripsi] [varchar](1550) NULL,
	[tgl_buka] [datetime] NULL,
	[tgl_auth] [datetime] NULL,
	[user_buka] [varchar](150) NULL,
	[user_auth] [varchar](150) NULL,
	[auth_status] [varchar](1) NULL,
 CONSTRAINT [PK_tmp_tambahPengumuman] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](250) NULL,
	[name] [varchar](250) NULL,
	[password] [varchar](250) NULL,
	[role_id] [int] NULL,
	[is_active] [int] NULL,
	[date_created] [int] NULL,
	[auth_status] [varchar](1) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_access_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_access_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[menu_id] [int] NULL,
 CONSTRAINT [PK_user_access_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[menu] [varchar](120) NULL,
	[menu_id] [int] NULL,
 CONSTRAINT [PK_user_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](250) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_user_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_status]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_status](
	[is_active] [varchar](1) NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_sub_menu]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_sub_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[menu_id] [int] NULL,
	[title] [varchar](150) NULL,
	[url] [varchar](150) NULL,
	[is_active] [varchar](150) NULL,
 CONSTRAINT [PK_user_sub_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_user]    Script Date: 4/19/2020 2:06:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_user]
AS
SELECT        c.id, c.username, c.name, c.role_id, c.is_active, c.auth_status, o.role, a.status
FROM            dbo.[user] AS c INNER JOIN
                         dbo.user_role AS o ON c.role_id = o.role_id INNER JOIN
                         dbo.user_status AS a ON c.is_active = a.is_active


GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.baru 2.sudah auth 3.edit auth 4.tolak' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'posting_menu', @level2type=N'COLUMN',@level2name=N'auth_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "o"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 102
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_user'
GO
USE [master]
GO
ALTER DATABASE [bpdlogin] SET  READ_WRITE 
GO
