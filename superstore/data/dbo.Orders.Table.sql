USE [power_bi]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/19/2020 4:46:15 PM ******/
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
