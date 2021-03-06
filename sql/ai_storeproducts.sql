USE [la70534ai]
GO
/****** Object:  Table [dbo].[StoreProducts]    Script Date: 2/12/2017 6:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](255) NOT NULL,
	[ItemDescription] [nvarchar](3000) NOT NULL,
	[ItemColor] [nchar](10) NOT NULL,
	[ItemSize] [nchar](10) NOT NULL,
	[ItemAgeRestricted] [bit] NOT NULL,
 CONSTRAINT [PK_StoreProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  StoredProcedure [dbo].[StoreProductsInsert]    Script Date: 2/12/2017 6:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StoreProductsInsert]
	@ItemName NVARCHAR(255),
	@ItemDescription NVARCHAR(3000),
	@ItemColor NVARCHAR(10),
	@ItemSize NVARCHAR(10),
	@ItemAgeRestricted BIT
AS
BEGIN
	INSERT INTO StoreProducts (
		ItemName, 
		ItemDescription, 
		ItemColor, 
		ItemSize, 
		ItemAgeRestricted) 
	VALUES (
		@ItemName, 
		@ItemDescription,
		@ItemColor,
		@ItemSize,
		@ItemAgeRestricted)
END

GO
/****** Object:  StoredProcedure [dbo].[StoreProductsReadAll]    Script Date: 2/12/2017 6:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StoreProductsReadAll]
AS
BEGIN
	SELECT * FROM StoreProducts ORDER BY Id ASC
END

GO
