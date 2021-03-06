USE [master]
GO
/****** Object:  Database [Wardrobe_MVC]    Script Date: 11/10/2017 11:23:03 AM ******/
CREATE DATABASE [Wardrobe_MVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe_MVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_MVC.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_MVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_MVC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe_MVC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe_MVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe_MVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe_MVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe_MVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe_MVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe_MVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe_MVC] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe_MVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe_MVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe_MVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe_MVC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe_MVC]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 11/10/2017 11:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[IsSummer] [bit] NOT NULL,
	[IsFall] [bit] NOT NULL,
	[IsWinter] [bit] NOT NULL,
	[IsSpring] [bit] NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 11/10/2017 11:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[IsSummer] [bit] NOT NULL,
	[IsFall] [bit] NOT NULL,
	[IsWinter] [bit] NOT NULL,
	[IsSpring] [bit] NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 11/10/2017 11:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[TopsID] [int] NOT NULL,
	[BottomsID] [int] NOT NULL,
	[ShoesID] [int] NOT NULL,
	[AccessoriesID] [int] NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 11/10/2017 11:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[IsSummer] [bit] NOT NULL,
	[IsFall] [bit] NOT NULL,
	[IsWinter] [bit] NOT NULL,
	[IsSpring] [bit] NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Top]    Script Date: 11/10/2017 11:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Top](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[IsSummer] [bit] NOT NULL,
	[IsFall] [bit] NOT NULL,
	[IsWinter] [bit] NOT NULL,
	[IsSpring] [bit] NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoriesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (1, N'Leather Pack', N'\Content\Pictures\IMG_6672.jpg', N'Fanny', N'Black', 0, 0, 0, 0, N'Casual')
INSERT [dbo].[Accessory] ([AccessoriesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (2, N'Trail Runner Hat', N'\Content\Pictures\IMG_6673.jpg', N'Ball Cap', N'Blue', 1, 0, 0, 1, N'Casual')
INSERT [dbo].[Accessory] ([AccessoriesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (3, N'Target Knit', N'\Content\Pictures\IMG_6674.jpg', N'Knit', N'Green', 0, 1, 1, 0, N'Casual')
INSERT [dbo].[Accessory] ([AccessoriesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (5, N'Target Knit', N'\Content\Pictures\IMG_6675.jpg', N'Knit', N'Yellow', 0, 1, 1, 1, N'Casual')
INSERT [dbo].[Accessory] ([AccessoriesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (6, N'Tunes Jammin'' Owl Hat', N'\Content\Pictures\IMG_6676.jpg', N'Knit', N'Multi', 0, 1, 0, 0, N'Halloween')
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (1, N'Blue Jeans', N'\Content\Pictures\BlueJeans.jpg', N'Pants', N'Blue', 1, 1, 1, 1, N'Casual')
INSERT [dbo].[Bottom] ([BottomsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (2, N'Black Pants', N'\Content\Pictures\IMG_6657.JPG', N'Pants', N'Black', 0, 1, 1, 0, N'Casual')
INSERT [dbo].[Bottom] ([BottomsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (3, N'Blue Jeans', N'\Content\Pictures\IMG_6658.JPG', N'Pants', N'Light Blue', 1, 1, 0, 1, N'Casual')
INSERT [dbo].[Bottom] ([BottomsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (4, N'Sweats', N'\Content\Pictures\IMG_6659.JPG', N'Sweat Pants', N'Gray', 0, 0, 0, 0, N'Lounging')
INSERT [dbo].[Bottom] ([BottomsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (5, N'Corduroy', N'\Content\Pictures\IMG_6661.JPG', N'Pants', N'Brown', 0, 1, 1, 0, N'Casual')
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[Outfit] ON 

INSERT [dbo].[Outfit] ([OutfitID], [Name], [TopsID], [BottomsID], [ShoesID], [AccessoriesID], [Date]) VALUES (2, N'funky fresh', 2, 4, 4, 1, CAST(N'2017-10-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Outfit] ([OutfitID], [Name], [TopsID], [BottomsID], [ShoesID], [AccessoriesID], [Date]) VALUES (3, N'Date Night', 3, 3, 2, 2, CAST(N'2017-09-10 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Outfit] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (1, N'Steve Madden', N'\Content\Pictures\IMG_6666.jpg', N'Boots', N'Brown', 1, 1, 1, 1, N'Casual')
INSERT [dbo].[Shoe] ([ShoesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (2, N'Chuck Taylor', N'\Content\Pictures\IMG_6667.jpg', N'Mid Top Sneakers', N'Black', 1, 1, 0, 1, N'Casual')
INSERT [dbo].[Shoe] ([ShoesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (3, N'Brooks Running', N'\Content\Pictures\IMG_6669.jpg', N'Running Shoes', N'Blue', 1, 0, 0, 1, N'Workout')
INSERT [dbo].[Shoe] ([ShoesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (4, N'Asics', N'\Content\Pictures\IMG_6670.jpg', N'High Top Sneaker', N'Green', 0, 1, 1, 1, N'Casual')
INSERT [dbo].[Shoe] ([ShoesID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (5, N'Target Combat', N'\Content\Pictures\IMG_6671.jpg', N'Boots', N'Black', 0, 1, 1, 0, N'Casual')
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (1, N'Busy Plaid', N'\Content\Pictures\IMG_6660.JPG', N'Long Sleeve', N'Multi', 0, 1, 1, 1, N'Casual')
INSERT [dbo].[Top] ([TopsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (2, N'Stripped Sweater', N'\Content\Pictures\IMG_6662.JPG', N'Sweater', N'Blue/Gray', 0, 1, 1, 0, N'Casual')
INSERT [dbo].[Top] ([TopsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (3, N'Southwest Button Down', N'\Content\Pictures\IMG_6663.JPG', N'Short Sleeve Shirt', N'Blue', 1, 0, 0, 1, N'Casual')
INSERT [dbo].[Top] ([TopsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (4, N'Dress Shirt', N'\Content\Pictures\IMG_6664.JPG', N'Long Sleeve', N'Brick Red', 0, 0, 0, 0, N'Formal')
INSERT [dbo].[Top] ([TopsID], [Name], [Photo], [Type], [Color], [IsSummer], [IsFall], [IsWinter], [IsSpring], [Occasion]) VALUES (5, N'Dress Shirt', N'\Content\Pictures\IMG_6665.JPG', N'Long Sleeve', N'Dark Blue', 0, 0, 0, 0, N'Formal')
SET IDENTITY_INSERT [dbo].[Top] OFF
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessory] FOREIGN KEY([AccessoriesID])
REFERENCES [dbo].[Accessory] ([AccessoriesID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessory]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottom] FOREIGN KEY([BottomsID])
REFERENCES [dbo].[Bottom] ([BottomsID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottom]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoe] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoe] ([ShoesID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoe]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Top] FOREIGN KEY([TopsID])
REFERENCES [dbo].[Top] ([TopsID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Top]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe_MVC] SET  READ_WRITE 
GO
