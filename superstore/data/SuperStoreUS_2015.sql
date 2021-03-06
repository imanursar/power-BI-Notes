USE [master]
GO
/****** Object:  Database [power_bi]    Script Date: 8/19/2020 4:44:37 PM ******/
CREATE DATABASE [power_bi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'power_bi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\power_bi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'power_bi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\power_bi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [power_bi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [power_bi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [power_bi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [power_bi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [power_bi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [power_bi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [power_bi] SET ARITHABORT OFF 
GO
ALTER DATABASE [power_bi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [power_bi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [power_bi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [power_bi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [power_bi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [power_bi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [power_bi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [power_bi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [power_bi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [power_bi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [power_bi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [power_bi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [power_bi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [power_bi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [power_bi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [power_bi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [power_bi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [power_bi] SET RECOVERY FULL 
GO
ALTER DATABASE [power_bi] SET  MULTI_USER 
GO
ALTER DATABASE [power_bi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [power_bi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [power_bi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [power_bi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [power_bi] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'power_bi', N'ON'
GO
ALTER DATABASE [power_bi] SET QUERY_STORE = OFF
GO
USE [power_bi]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/19/2020 4:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Row_ID] [int] NOT NULL,
	[Order_Priority] [nvarchar](50) NOT NULL,
	[Discount] [nvarchar](50) NOT NULL,
	[Unit_Price] [float] NOT NULL,
	[Shipping_Cost] [nvarchar](50) NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Ship_Mode] [nvarchar](50) NOT NULL,
	[Customer_Segment] [nvarchar](50) NOT NULL,
	[Product_Category] [nvarchar](50) NOT NULL,
	[Product_Sub_Category] [nvarchar](50) NOT NULL,
	[Product_Container] [nvarchar](50) NOT NULL,
	[Product_Name] [nvarchar](100) NOT NULL,
	[Product_Base_Margin] [float] NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Region] [nvarchar](50) NOT NULL,
	[State_or_Province] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Postal_Code] [int] NOT NULL,
	[Order_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [datetime2](7) NOT NULL,
	[Profit] [float] NOT NULL,
	[Quantity_ordered_new] [nvarchar](50) NOT NULL,
	[Sales] [float] NOT NULL,
	[Order_ID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Row_ID] ASC,
	[Customer_ID] ASC,
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Returns]    Script Date: 8/19/2020 4:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returns](
	[Order ID] [varchar](50) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/19/2020 4:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Region] [varchar](50) NULL,
	[Manager] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [power_bi] SET  READ_WRITE 
GO
