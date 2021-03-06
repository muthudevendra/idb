USE [master]
GO
/****** Object:  Database [IDB]    Script Date: 3/29/2017 1:34:07 AM ******/
CREATE DATABASE [IDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\IDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'IDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\IDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [IDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [IDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [IDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IDB] SET RECOVERY FULL 
GO
ALTER DATABASE [IDB] SET  MULTI_USER 
GO
ALTER DATABASE [IDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'IDB', N'ON'
GO
USE [IDB]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[ID] [int] IDENTITY(100,1) NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mobile] [int] NOT NULL,
	[fixedNumber] [int] NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[driverDetails]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[driverDetails](
	[driverID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[nic] [varchar](50) NULL,
	[mobileContact] [int] NULL,
	[homeContact] [int] NULL,
	[salesCenter] [varchar](50) NULL,
 CONSTRAINT [PK_driverDetails] PRIMARY KEY CLUSTERED 
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[items]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[items](
	[itemCode] [varchar](50) NOT NULL,
	[itemName] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_items] PRIMARY KEY CLUSTERED 
(
	[itemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purchaseDetails]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchaseDetails](
	[ID] [int] IDENTITY(1000,1) NOT NULL,
	[invoiceID] [varchar](50) NULL,
	[itemName] [varchar](50) NULL,
	[quantity] [int] NULL,
	[purchasePrice] [int] NULL,
	[salePrice] [int] NULL,
 CONSTRAINT [PK_purchaseDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purchaseMaster]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchaseMaster](
	[invoiceID] [varchar](50) NOT NULL,
	[supplierName] [varchar](50) NULL,
	[purchaseDate] [date] NULL,
	[totalPrice] [int] NULL,
	[totalNoOfItems] [int] NULL,
 CONSTRAINT [PK_purchaseMaster] PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salesDetails]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesDetails](
	[ID] [int] IDENTITY(1000,1) NOT NULL,
	[invoiceID] [varchar](50) NULL,
	[itemName] [varchar](50) NULL,
	[quantity] [int] NULL,
	[totalItemPrice] [int] NULL,
 CONSTRAINT [PK_salesDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salesMaster]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesMaster](
	[invoiceID] [varchar](50) NOT NULL,
	[customerName] [varchar](50) NULL,
	[date] [date] NULL,
	[sellingCenter] [varchar](50) NULL,
	[totalPrice] [int] NULL,
	[totalNoOfItems] [int] NULL,
	[transportation] [varchar](50) NULL,
 CONSTRAINT [PK_saleMaster] PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sellingCenterDetails]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sellingCenterDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[location] [varchar](50) NULL,
	[mobile] [int] NULL,
	[homeContact] [int] NULL,
	[address] [varchar](50) NULL,
 CONSTRAINT [PK_sellingCenterDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockDetails]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockDetails](
	[stockID] [int] IDENTITY(500,1) NOT NULL,
	[itemName] [varchar](50) NULL,
	[quantity] [int] NULL,
	[itemRegisterDate] [date] NULL,
	[lastUpdatedDate] [date] NULL,
 CONSTRAINT [PK_stockDetails] PRIMARY KEY CLUSTERED 
(
	[stockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[supplier](
	[ID] [int] IDENTITY(200,1) NOT NULL,
	[name] [varchar](50) NULL,
	[companyName] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[mobile] [int] NULL,
	[homeContact] [int] NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[transportationDetails]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transportationDetails](
	[transportationID] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](50) NULL,
	[vehicleNo] [varchar](50) NULL,
	[driverName] [varchar](50) NULL,
	[date] [date] NULL,
	[arrivalTime] [int] NULL,
	[destination] [varchar](50) NULL,
	[distance] [int] NULL,
	[income] [int] NULL,
	[salesCenter] [varchar](50) NULL,
 CONSTRAINT [PK_transportationDetails] PRIMARY KEY CLUSTERED 
(
	[transportationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[userType] [varchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vehicleDetails]    Script Date: 3/29/2017 1:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vehicleDetails](
	[vehicleNo] [varchar](50) NOT NULL,
	[type] [varchar](50) NULL,
	[capacity] [int] NULL,
	[registerDate] [date] NULL,
	[salesCenter] [varchar](50) NULL,
 CONSTRAINT [PK_vehicleDetails] PRIMARY KEY CLUSTERED 
(
	[vehicleNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [IDB] SET  READ_WRITE 
GO
