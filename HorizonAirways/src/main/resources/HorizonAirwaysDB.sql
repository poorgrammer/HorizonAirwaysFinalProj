USE [master]
GO
/****** Object:  Database [LA]    Script Date: 12/18/2014 17:57:40 ******/
CREATE DATABASE [LA] ON  PRIMARY 
( NAME = N'HorizonAirlines', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HorizonAirlines.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HorizonAirlines_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HorizonAirlines_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LA] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LA] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LA] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LA] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LA] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LA] SET ARITHABORT OFF
GO
ALTER DATABASE [LA] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [LA] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LA] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LA] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LA] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LA] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LA] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LA] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LA] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LA] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LA] SET  DISABLE_BROKER
GO
ALTER DATABASE [LA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LA] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LA] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LA] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LA] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LA] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LA] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LA] SET  READ_WRITE
GO
ALTER DATABASE [LA] SET RECOVERY SIMPLE
GO
ALTER DATABASE [LA] SET  MULTI_USER
GO
ALTER DATABASE [LA] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LA] SET DB_CHAINING OFF
GO
USE [LA]
GO
/****** Object:  Table [dbo].[Aircraft]    Script Date: 12/18/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aircraft](
	[AircraftTypeID] [char](4) NOT NULL,
	[Description] [char](30) NOT NULL,
	[FirstClassSeats] [int] NOT NULL,
	[BusinessClassSeats] [int] NOT NULL,
	[EconomyClassSeats] [int] NOT NULL,
	[Rows] [varchar](14) NULL,
	[FirstClassArrangement] [varchar](14) NULL,
	[BusinessClassArrangement] [varchar](14) NULL,
	[EconomyClassArrangement] [varchar](14) NULL,
 CONSTRAINT [PK_Aircraft] PRIMARY KEY CLUSTERED 
(
	[AircraftTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Aircraft] ([AircraftTypeID], [Description], [FirstClassSeats], [BusinessClassSeats], [EconomyClassSeats], [Rows], [FirstClassArrangement], [BusinessClassArrangement], [EconomyClassArrangement]) VALUES (N'ARBS', N'Airbus330                     ', 18, 42, 280, N'3:7:35', N'2:2:2', N'2:2:2', N'2:4:2')
INSERT [dbo].[Aircraft] ([AircraftTypeID], [Description], [FirstClassSeats], [BusinessClassSeats], [EconomyClassSeats], [Rows], [FirstClassArrangement], [BusinessClassArrangement], [EconomyClassArrangement]) VALUES (N'BOEI', N'Boeing747-400                 ', 12, 28, 300, N'2:4:30', N'2:2:2', N'2:3:2', N'3:4:3')
/****** Object:  Table [dbo].[Passenger]    Script Date: 12/18/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Passenger](
	[PNRNo] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [varchar](16) NOT NULL,
	[Lastname] [varchar](16) NOT NULL,
	[Birthdate] [date] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[MobileNumber] [varchar](25) NULL,
	[EmailAddress] [varchar](40) NULL,
	[ReservationDate] [date] NOT NULL,
	[CancelFlag] [int] NULL,
 CONSTRAINT [PK_Passenger] PRIMARY KEY CLUSTERED 
(
	[PNRNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Passenger] ON
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (2, N'Bong', N'Flower', CAST(0x20190B00 AS Date), N'M', N'09177258785', N'bong.flower@gmail.com', CAST(0x48390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (3, N'Lea', N'Flores', CAST(0x44110B00 AS Date), N'F', N'09294545786', N'lea_2004@yahoo.com', CAST(0x49390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (9, N'Ryan', N'Cayab', CAST(0xC8020B00 AS Date), N'M', N'09485544639', N'rcayab69@gmail.com', CAST(0x4A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (10, N'Mini', N'Mouse', CAST(0x7D1B0B00 AS Date), N'F', NULL, NULL, CAST(0x4A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (11, N'Lawrence', N'Cruz', CAST(0x30170B00 AS Date), N'M', N'09155474565', N'lcruz@gmail.com', CAST(0x4A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (12, N'Nino', N'Dagum', CAST(0xC3150B00 AS Date), N'M', N'09164524555', N'ndagum@gmail.com', CAST(0x4A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (13, N'Jermie', N'Jermie', CAST(0x3B390B00 AS Date), N'M', N'9093371405', NULL, CAST(0x48390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (14, N'asda', N'asda', CAST(0x4B390B00 AS Date), N'M', N'12343243', N'asda', CAST(0x4B390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (15, N'firstname', N'lastname', CAST(0x15380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (16, N'firstname', N'lastname', CAST(0x15380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (17, N'firstname2', N'lastname2', CAST(0x15380B00 AS Date), N'F', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (18, N'asdfsd', N'dgvfsgsdf', CAST(0x15380B00 AS Date), N'F', N'4123412', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (19, N'try', N'try', CAST(0x16380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (20, N'fghfghfg', N'fghfghfg', CAST(0x0E380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (21, N'LA', N'Cruz', CAST(0x03380B00 AS Date), N'M', N'1234567', N'a@yahoo.com', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (22, N'LA', N'Cruz', CAST(0x03380B00 AS Date), N'M', N'1234567', N'a@yahoo.com', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (23, N'LA', N'Cruz', CAST(0x03380B00 AS Date), N'M', N'1234567', N'a@yahoo.com', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (24, N'LA', N'Cruz', CAST(0x03380B00 AS Date), N'M', N'1234567', N'a@yahoo.com', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (25, N'sad', N'safds', CAST(0x13380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (26, N'sad', N'sad', CAST(0x14380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (27, N'sad', N'sad', CAST(0x14380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (28, N'asfasdfsdf', N'sdfsdfsdfsd', CAST(0x0D380B00 AS Date), N'F', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (29, N'sdfgsdfgdfg', N'dfgdfgdfg', CAST(0x06380B00 AS Date), N'F', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (30, N'egdfgdfg', N'dfgdfgdfgdf', CAST(0x07380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (31, N'sdfssdfsdf', N'sdfsdfsd', CAST(0x16380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (33, N'Rdfsdf', N'sdfsdfsdfsd', CAST(0x0D380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (34, N'Lawrence', N'Cruz', CAST(0x13380B00 AS Date), N'M', N'1234567', N'a@yahoo.com', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (35, N'sdfgsdfgdfg', N'dfgdfgdf', CAST(0x07380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (36, N'gardo', N'mini', CAST(0x0D380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (37, N'sdfgsdfsd', N'sdfsdfsdfsd', CAST(0x0E380B00 AS Date), N'F', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (39, N'gardo', N'barbero', CAST(0x01380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (40, N'asdasdsda', N'asdasdasdas', CAST(0x07380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (41, N'gardo', N'barbero', CAST(0x01380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (42, N'gardo', N'barbero', CAST(0x05380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (43, N'fgh', N'hg', CAST(0x0F380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (44, N'Paul', N'Marcellana', CAST(0x37210B00 AS Date), N'M', N'091718784855', N'p.m@gmail.com', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (45, N'Cedie', N'Guerero', CAST(0x0D380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (46, N'art', N'Agellon', CAST(0x5D1E0B00 AS Date), N'M', N'0947654855485', N'a.a@gmail.com', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (47, N'sdfsdf', N'fd', CAST(0x15380B00 AS Date), N'F', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (48, N'sdfsdf', N'fd', CAST(0x15380B00 AS Date), N'F', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (49, N'sdfsf', N'fgd', CAST(0x07380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (50, N'juan', N'bolero', CAST(0x14380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (51, N'sdfsf', N'fgd', CAST(0x07380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (52, N'Jermie', N'Jermie', CAST(0x15380B00 AS Date), N'M', N'', N'', CAST(0x4C390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (53, N'gjg', N'gjjhg', CAST(0x12380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (54, N'Gjg', N'Gjjhg', CAST(0x12380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (55, N'sdf', N'sdafsdf', CAST(0x18380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (56, N'Fdssdfd', N'Asdasdsa', CAST(0x0B380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (57, N'Lawrence', N'Cruz', CAST(0x1F380B00 AS Date), N'M', N'1234567', N'a@yahoo.com', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (58, N'Dfdfgdf', N'Sdfsdfs', CAST(0x13380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (59, N'Dfdfgdf', N'Sdfsdfs', CAST(0x13380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (60, N'Jermie', N'Jermie', CAST(0x0B380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (61, N'Fdssdfd', N'Asdasdsa', CAST(0x0B380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (62, N'Sdfsd', N'Asdasd', CAST(0x0B380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (63, N'FirstName', N'Lastname', CAST(0x0D380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (64, N'Afsdasd', N'Dfgdfg', CAST(0x0B380B00 AS Date), N'M', N'', N'', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (65, N'Asdada', N'Asdadad', CAST(0x02380B00 AS Date), N'M', N'1234567', N'asd@gmail.com', CAST(0x4F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (77, N'Loyyyy', N'Cruz', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x52390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (78, N'Loyyyy', N'Cruz', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x52390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (79, N'Loyyyy', N'Cruz', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x52390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (80, N'ASDASDD', N'Cruz', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x52390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (81, N'Loy', N'112121', CAST(0x5A390B00 AS Date), N'M', N'asdad', N'454', CAST(0x52390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (82, N'Loy', N'112121', CAST(0x5A390B00 AS Date), N'M', N'asdad', N'454', CAST(0x52390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (83, N'Loy', N'112121', CAST(0x5A390B00 AS Date), N'M', N'asdad', N'454', CAST(0x52390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (84, N'Lasdasd', N'Adsad', CAST(0x5A390B00 AS Date), N'M', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (85, N'Lasdasd', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (86, N'Lasdasd', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (87, N'Lasdasd', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (88, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (89, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (90, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (91, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (92, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (93, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (94, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (95, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (96, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (97, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (98, N'Lasdasd', N'Cruz', CAST(0x66330B00 AS Date), N'F', N'123123', N'454', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (99, N'Lasdasd', N'Cruz', CAST(0x66330B00 AS Date), N'F', N'123123', N'454', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (100, N'Lasdasd', N'Cruz', CAST(0x66330B00 AS Date), N'F', N'123123', N'454', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (101, N'Lasdasd', N'Cruz', CAST(0x66330B00 AS Date), N'F', N'123123', N'454', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (102, N'Lasdasd', N'Cruz', CAST(0x66330B00 AS Date), N'F', N'123123', N'454', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (103, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (104, N'Loyyyy', N'Adsad', CAST(0x66330B00 AS Date), N'F', N'052454', N'454', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (105, N'Loyyyy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (106, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'052454', N'454', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (107, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'052454', N'454', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (108, N'Loy', N'Adsad', CAST(0x66330B00 AS Date), N'F', N'052454', N'454', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (109, N'Lasdasd', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (110, N'Loy', N'Cruz', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (111, N'Loy', N'Cruz', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (112, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (113, N'Loy', N'Adsad', CAST(0x66330B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (114, N'Lasdasd', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (115, N'Lasdasd', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (116, N'Loy', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (117, N'Lasdasd', N'Adsad', CAST(0x5A390B00 AS Date), N'F', N'123123', N'2@yahoo.com', CAST(0x53390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (118, N'Tryhiber', N'Tryhiber', CAST(0x0A380B00 AS Date), N'M', N'2344234324', N'tryhiber@tryhiber', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (119, N'Tryhiber', N'Tryhiber', CAST(0x03380B00 AS Date), N'M', N'2342342343', N'tryhiber@tryhiber', CAST(0x5A390B00 AS Date), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (120, N'Tryhiberasd', N'Tryhiber', CAST(0x01380B00 AS Date), N'M', N'2345234234', N'tryhiber@sdfsdfsd', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (121, N'Jermeiasdasds', N'Jermeiasdasds', CAST(0x0B380B00 AS Date), N'M', N'342233', N'jermeiasdasds@jermeiasdasds', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (122, N'Jsdfgsdgd', N'Jsdfgsdgd', CAST(0x03380B00 AS Date), N'M', N'345345', N'jsdfgsdgd@jsdfgsdgd', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (123, N'Sa', N'Sa', CAST(0x11380B00 AS Date), N'M', N'2342342343', N'sa@sa', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (124, N'Cancelflag', N'Cancelflag', CAST(0x03380B00 AS Date), N'M', N'345345', N'cancelflag@cancelflag', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (125, N'Sdfgds', N'Sdfgds', CAST(0x0B380B00 AS Date), N'M', N'3443', N'sdfgds@sdfgds', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (126, N'Incremental', N'Incremental', CAST(0x12380B00 AS Date), N'M', N'1232', N'incremental@incremental', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (127, N'PnrNo', N'PnrNo', CAST(0x1F380B00 AS Date), N'M', N'21341232', N'pnrNo@pnrNo', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (128, N'Details ', N'Details ', CAST(0x0A380B00 AS Date), N'M', N'12313123', N'Details@Details', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (129, N'HA102HA102', N'HA102HA102', CAST(0x18380B00 AS Date), N'M', N'123412312312', N'HA102@HA102', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (130, N'ASDASDD', N'Qweqeqeq', CAST(0x66330B00 AS Date), N'M', N'qweqeq', N'qweqw@y.com', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (131, N'Weqweqweqwe', N'Weqweqweqwe', CAST(0x11380B00 AS Date), N'M', N'564545', N'weqweqweqwe@weqweqweqwe', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (132, N'Ersona', N'Personal ', CAST(0x0A380B00 AS Date), N'M', N'1111', N'Persona@Personal', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (133, N'Economy ', N'Economy ', CAST(0x11380B00 AS Date), N'M', N'12312312312', N'Economy@Economy', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (134, N'ASDASDD', N'AASDADA', CAST(0x66330B00 AS Date), N'M', N'052454', N'qweqw@y.com', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (135, N'Zasdada', N'Qweqeqeq', CAST(0x66330B00 AS Date), N'M', N'qweqeq', N'qweqw@y.com', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (136, N'Test1123', N'Test1', CAST(0x12380B00 AS Date), N'M', N'23423', N'Test1@Test1213', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (137, N'Flightdetails', N'Flightdetails', CAST(0x11380B00 AS Date), N'M', N'12312312', N'flightdetails@flightdetails', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (138, N'12312312', N'12312312', CAST(0x0A380B00 AS Date), N'M', N'546546', N'12312312@12312312', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (139, N'Tryyyy', N'Tryyyy', CAST(0x1A380B00 AS Date), N'M', N'1231312312', N'tryyyy@tryyyy', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (140, N'Address', N'Address', CAST(0x12380B00 AS Date), N'M', N'3123', N'Address@Address', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (141, N'ASDASDD', N'AASDADA', CAST(0x66330B00 AS Date), N'M', N'052454', N'454@yahoo.com', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (142, N'Mobile Number', N'Mobile Number', CAST(0x19380B00 AS Date), N'M', N'12354654', N'MobileNumber@MobileNumber', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (143, N'Flightdetails', N'Flight', CAST(0x11380B00 AS Date), N'M', N'235423', N'flight@Flight', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (144, N'Gender', N'Gender', CAST(0x0A380B00 AS Date), N'M', N'12312312', N'Gender@Gender', CAST(0x5A390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (145, N'Firstname', N'Lastname', CAST(0x1A380B00 AS Date), N'M', N'1233254', N'asd@asd', CAST(0x5F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (146, N'ZXC', N'ZXC', CAST(0x63EC0A00 AS Date), N'M', N'123', N'ZXC@asd.com', CAST(0x5F390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (147, N'B jhbjbh', N'Hbbhujhb', CAST(0x18380B00 AS Date), N'M', N'89898', N'jkjkj@dfgydg', CAST(0x60390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (148, N'Asdas', N'Asdas', CAST(0x03380B00 AS Date), N'M', N'234234', N'asdfsd@asdas', CAST(0x60390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (149, N'Catalino', N'Catalino', CAST(0x12380B00 AS Date), N'M', N'4523534', N'catalino@catalino', CAST(0x60390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (150, N'January ', N'January ', CAST(0x19380B00 AS Date), N'M', N'234234', N'January@January', CAST(0x60390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (154, N'Passen', N'Passe', CAST(0x1A380B00 AS Date), N'M', N'Passe', N'Pass@asdasd', CAST(0x60390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (155, N'NameLast ', N'NameLast ', CAST(0x0B380B00 AS Date), N'M', N'32423423', N'NameLast@name', CAST(0x60390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (157, N'Emailad', N'Emailadd', CAST(0x19380B00 AS Date), N'M', N'235423534534', N'emailadd@emailadd', CAST(0x60390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (158, N'Male', N'Male', CAST(0x12380B00 AS Date), N'M', N'34534', N'male@male', CAST(0x60390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (159, N'Airbus', N'Airbus', CAST(0x18380B00 AS Date), N'M', N'airbus', N'airbus@airbus', CAST(0x60390B00 AS Date), NULL)
INSERT [dbo].[Passenger] ([PNRNo], [Firstname], [Lastname], [Birthdate], [Gender], [MobileNumber], [EmailAddress], [ReservationDate], [CancelFlag]) VALUES (160, N'Firstname', N'Firstname', CAST(0x19380B00 AS Date), N'M', N'2354234', N'firstname@firstname', CAST(0x60390B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Passenger] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 12/18/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [char](15) NOT NULL,
	[Password] [char](15) NOT NULL,
	[Role] [char](25) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Users] ([UserName], [Password], [Role]) VALUES (N'sa             ', N'sa             ', N'admin                    ')
/****** Object:  Table [dbo].[Sector]    Script Date: 12/18/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sector](
	[SectorID] [char](5) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[WeekDay1] [char](3) NOT NULL,
	[WeekDay2] [char](3) NOT NULL,
	[FirstClassFare] [money] NOT NULL,
	[BusinessClassFare] [money] NOT NULL,
	[EconomyClassFare] [money] NOT NULL,
 CONSTRAINT [PK_Sector] PRIMARY KEY CLUSTERED 
(
	[SectorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'CH-NY', N'Chicago to New York flight', N'Wed', N'Sat', 400.0000, 330.0000, 250.0000)
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'ME-NY', N'Memphis to New York flight', N'Tue', N'Fri', 430.0000, 330.0000, 240.0000)
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'MI-NY', N'Miami  to New York flight', N'Tue', N'Fri', 410.0000, 310.0000, 260.0000)
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'NO-NY', N'New Orleans to New York flight', N'Mon', N'Thu', 450.0000, 380.0000, 330.0000)
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'NY-CH', N'New York to Chicago flight', N'Wed', N'Sat', 400.0000, 330.0000, 250.0000)
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'NY-ME', N'New York to Memphis flight', N'Tue', N'Sun', 430.0000, 330.0000, 240.0000)
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'NY-MI', N'New York to Miami flight', N'Tue', N'Fri', 380.0000, 310.0000, 280.0000)
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'NY-NO', N'New York to New Orleans flight', N'Mon', N'Thu', 450.0000, 380.0000, 330.0000)
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'NY-PI', N'New York to Pittsburgh flight', N'Mon', N'Thu', 200.0000, 150.0000, 120.0000)
INSERT [dbo].[Sector] ([SectorID], [Description], [WeekDay1], [WeekDay2], [FirstClassFare], [BusinessClassFare], [EconomyClassFare]) VALUES (N'PI-NY', N'Pittsburgh to New York flight', N'Mon', N'Thu', 200.0000, 150.0000, 100.0000)
/****** Object:  Table [dbo].[ScheduledFlights]    Script Date: 12/18/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScheduledFlights](
	[FlightNo] [char](5) NOT NULL,
	[FlightDate] [datetime] NOT NULL,
	[FirstClassSeatsAvailable] [int] NOT NULL,
	[BusinessClassSeatsAvailable] [int] NOT NULL,
	[EconomyClassSeatsAvailable] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA101', CAST(0x0000A42600000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA102', CAST(0x0000A43400000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA141', CAST(0x0000A41200000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA142', CAST(0x0000A41900000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA222', CAST(0x0000A41200000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA223', CAST(0x0000A43200000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA875', CAST(0x0000A43100000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA876', CAST(0x0000A42200000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA901', CAST(0x0000A41100000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA902', CAST(0x0000A41E00000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA101', CAST(0x0000A41200000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA101', CAST(0x0000A43400000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA101', CAST(0x0000A41100000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA102', CAST(0x0000A43000000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA102', CAST(0x0000A42B00000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA141', CAST(0x0000A43200000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA141', CAST(0x0000A42100000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA141', CAST(0x0000A43600000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA142', CAST(0x0000A41400000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA142', CAST(0x0000A42200000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA142', CAST(0x0000A43700000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA222', CAST(0x0000A41600000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA222', CAST(0x0000A43100000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA222', CAST(0x0000A44400000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA223', CAST(0x0000A41900000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA223', CAST(0x0000A43000000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA223', CAST(0x0000A43A00000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA875', CAST(0x0000A41500000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA875', CAST(0x0000A42100000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA875', CAST(0x0000A43600000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA876', CAST(0x0000A41900000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA876', CAST(0x0000A42E00000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA876', CAST(0x0000A43200000000 AS DateTime), 12, 28, 300)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA901', CAST(0x0000A41400000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA901', CAST(0x0000A42B00000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA901', CAST(0x0000A44A00000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA902', CAST(0x0000A41600000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA902', CAST(0x0000A42000000000 AS DateTime), 18, 42, 280)
INSERT [dbo].[ScheduledFlights] ([FlightNo], [FlightDate], [FirstClassSeatsAvailable], [BusinessClassSeatsAvailable], [EconomyClassSeatsAvailable]) VALUES (N'HA902', CAST(0x0000A43600000000 AS DateTime), 18, 42, 280)
/****** Object:  Table [dbo].[ReservedFlights]    Script Date: 12/18/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReservedFlights](
	[PNRNo] [int] NOT NULL,
	[FlightNo] [char](5) NOT NULL,
	[FlightDate] [datetime] NOT NULL,
	[SeatNo] [varchar](4) NULL,
	[Class] [varchar](8) NULL,
	[Meal] [varchar](15) NULL,
	[SSR] [varchar](50) NULL,
	[CancelFlag] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (2, N'HA222', CAST(0x0000A42600000000 AS DateTime), N'A1', N'First', N'Vegetarian', N'Needs a wheelchair', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (3, N'HA876', CAST(0x0000A42200000000 AS DateTime), N'E36', N'Economy', N'Non-Vegetarian', N'Have allergies at shrimp and chicken', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (9, N'HA102', CAST(0x0000A43400000000 AS DateTime), N'F10', N'Business', N'Vegetarian', N'NA', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (10, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'G40', N'Economy', N'Non-Vegetarian', N'NA', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (11, N'HA222', CAST(0x0000A41200000000 AS DateTime), N'A3', N'First', N'Non-Vegetarian', N'NA', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (12, N'HA876', CAST(0x0000A42200000000 AS DateTime), N'B8', N'Economy', N'Vegetarian', N'NA', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (14, N'HA102', CAST(0x0000A43400000000 AS DateTime), N'A2', N'First', N'Vegetarian', N'NA', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (14, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'A2', N'First', N'Vegetarian', N'NA', 1)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (19, N'HA101', CAST(0x0000A41100000000 AS DateTime), N'C3', N'First', N'vegetarian', N'na', 1)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (18, N'HA101', CAST(0x0000A41100000000 AS DateTime), N'A5', N'First', N'vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (35, N'HA101', CAST(0x0000A41100000000 AS DateTime), N'D4', N'Business', N'vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (37, N'HA101', CAST(0x0000A41100000000 AS DateTime), N'E7', N'Business', N'ssr', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (40, N'HA101', CAST(0x0000A41100000000 AS DateTime), N'E3', N'First', N'vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (43, N'HA101', CAST(0x0000A41100000000 AS DateTime), N'F4', N'Business', N'vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (44, N'HA101', CAST(0x0000A41200000000 AS DateTime), N'D7', N'Business', N'Vegetarian', N'NA', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (45, N'HA101', CAST(0x0000A41200000000 AS DateTime), N'C6', N'Business', N'Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (46, N'HA101', CAST(0x0000A41100000000 AS DateTime), N'H45', N'Economy', N'Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (52, N'HA101', CAST(0x0000A41200000000 AS DateTime), N'D5', N'Business', N'Non-Vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (48, N'HA101', CAST(0x0000A41100000000 AS DateTime), N'A1', N'First', N'Vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (52, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'D12', N'Economy', N'Non-Vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (50, N'HA101', CAST(0x0000A41100000000 AS DateTime), N'A11', N'Economy', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (53, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B37', N'Economy', N'Non-Vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (53, N'HA102', CAST(0x0000A42B00000000 AS DateTime), N'H31', N'Economy', N'Non-Vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (54, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B37', N'Economy', N'Non-Vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (54, N'HA102', CAST(0x0000A42B00000000 AS DateTime), N'H31', N'Economy', N'Non-Vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (56, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'F21', N'Economy', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (57, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'B4', N'Business', N'Vegetarian', N'NA', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (62, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'D25', N'Economy', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (62, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'D9', N'Business', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (63, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'E7', N'Business', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (63, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'D6', N'Business', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (64, N'HA102', CAST(0x0000A43400000000 AS DateTime), N'D9', N'Business', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (65, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B1', N'First', N'Non-Vegetarian', N'NA', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (65, N'HA102', CAST(0x0000A42B00000000 AS DateTime), N'B10', N'Business', N'Non-Vegetarian', N'NA', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (98, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B15', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (99, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B15', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (100, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B15', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (101, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B15', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (102, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B15', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (103, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A12', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (104, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B13', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (105, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A11', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (106, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A13', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (107, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A13', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (108, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A14', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (126, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'G32', N'Economy', N'Non-Vegetarian', N'incremental', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (127, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'G34', N'Economy', N'Non-Vegetarian', N'pnrNo', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (130, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A15', N'Economy', N'Non-Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (134, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A5', N'Business', N'Non-Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (134, N'HA102', CAST(0x0000A42B00000000 AS DateTime), N'A11', N'Economy', N'Non-Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (136, N'HA102', CAST(0x0000A43400000000 AS DateTime), N'H45', N'Economy', N'Non-Vegetarian', N'Test1', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (137, N'HA141', CAST(0x0000A43200000000 AS DateTime), N'I36', N'Economy', N'Non-Vegetarian', N'flightdetails', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (138, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'H45', N'Economy', N'Non-Vegetarian', N'1231231212312312', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (141, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A7', N'Business', N'Non-Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (141, N'HA102', CAST(0x0000A42B00000000 AS DateTime), N'A1', N'First', N'Non-Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (143, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'H44', N'Economy', N'Vegetarian', N'Flight', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (143, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'F45', N'Economy', N'Vegetarian', N'Flight', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (144, N'HA141', CAST(0x0000A42100000000 AS DateTime), N'H36', N'Economy', N'Non-Vegetarian', N'Gender', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (145, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'H43', N'Economy', N'Non-Vegetarian', N'sst', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (146, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A8', N'Business', N'Vegetarian', N'ZXC', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (146, N'HA102', CAST(0x0000A42B00000000 AS DateTime), N'A2', N'First', N'Vegetarian', N'ZXC', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (147, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'G41', N'Economy', N'Non-Vegetarian', N'jnkjnkj', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (148, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'H45', N'Economy', N'Non-Vegetarian', N'asdasdas', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (148, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'H45', N'Economy', N'Non-Vegetarian', N'asdasdas', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (150, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'H44', N'Economy', N'Non-Vegetarian', N'January ', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (154, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'H34', N'Economy', N'Non-Vegetarian', N'asdas', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (155, N'HA141', CAST(0x0000A43200000000 AS DateTime), N'J36', N'Economy', N'Vegetarian', N'NameLast ', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (157, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'H44', N'Economy', N'Non-Vegetarian', N'emailadd@emailadd', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (158, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'G45', N'Economy', N'Non-Vegetarian', N'male', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (158, N'HA102', CAST(0x0000A42B00000000 AS DateTime), N'H44', N'Economy', N'Non-Vegetarian', N'male', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (160, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'G40', N'Economy', N'Non-Vegetarian', N'firstname', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (20, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A1', N'First', N'vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (20, N'HA102', CAST(0x0000A43400000000 AS DateTime), N'A1', N'First', N'vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (55, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'C3', N'First', N'Non-Vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (55, N'HA102', CAST(0x0000A42B00000000 AS DateTime), N'D36', N'Economy', N'Non-Vegetarian', N'na', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (150, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'H42', N'Economy', N'Non-Vegetarian', N'January ', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (58, N'HA141', CAST(0x0000A42100000000 AS DateTime), N'E17', N'Economy', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (58, N'HA142', CAST(0x0000A41400000000 AS DateTime), N'G17', N'Economy', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (60, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'G30', N'Economy', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (60, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'C7', N'Business', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (61, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'F21', N'Economy', N'Non-Vegetarian', N'', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (139, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'G45', N'Economy', N'Non-Vegetarian', N'tryyyy', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (142, N'HA142', CAST(0x0000A42200000000 AS DateTime), N'J36', N'Economy', N'Non-Vegetarian', N'Mobile Number', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (149, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'G43', N'Economy', N'Non-Vegetarian', N'catalino', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (109, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B11', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (110, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B12', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (111, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B12', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (112, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'B14', N'Economy', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (114, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A2', N'First', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (115, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A2', N'First', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (116, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A3', N'First', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (117, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A4', N'Business', N'Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (142, N'HA141', CAST(0x0000A42100000000 AS DateTime), N'H33', N'Economy', N'Non-Vegetarian', N'Mobile Number', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (133, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'G33', N'Economy', N'Non-Vegetarian', N'Economy', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (135, N'HA101', CAST(0x0000A43400000000 AS DateTime), N'A6', N'Business', N'Non-Vegetarian', N'asdadsad', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (140, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'G44', N'Economy', N'Non-Vegetarian', N'Address', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (140, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'G44', N'Economy', N'Non-Vegetarian', N'Address', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (145, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'G45', N'Economy', N'Non-Vegetarian', N'sst', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (155, N'HA142', CAST(0x0000A43700000000 AS DateTime), N'H28', N'Economy', N'Vegetarian', N'NameLast ', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (157, N'HA102', CAST(0x0000A43000000000 AS DateTime), N'H43', N'Economy', N'Non-Vegetarian', N'emailadd@emailadd', 0)
INSERT [dbo].[ReservedFlights] ([PNRNo], [FlightNo], [FlightDate], [SeatNo], [Class], [Meal], [SSR], [CancelFlag]) VALUES (159, N'HA101', CAST(0x0000A42600000000 AS DateTime), N'G42', N'Economy', N'Non-Vegetarian', N'airbus', 0)
GO
print 'Processed 100 total records'
/****** Object:  Table [dbo].[Flights]    Script Date: 12/18/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Flights](
	[FlightNo] [char](5) NOT NULL,
	[DepTime] [char](5) NOT NULL,
	[ArrTime] [char](5) NOT NULL,
	[AircraftTypeID] [char](4) NOT NULL,
	[SectorID] [char](5) NOT NULL,
 CONSTRAINT [PK_Flights] PRIMARY KEY CLUSTERED 
(
	[FlightNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA101', N'08:55', N'12:00', N'ARBS', N'NY-CH')
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA102', N'06:25', N'12:31', N'ARBS', N'CH-NY')
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA141', N'06:30', N'11:45', N'BOEI', N'NY-MI')
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA142', N'12:20', N'05:50', N'BOEI', N'MI-NY')
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA222', N'11:30', N'18:17', N'ARBS', N'NY-NO')
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA223', N'06:20', N'12:31', N'ARBS', N'NO-NY')
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA875', N'06:30', N'10:10', N'BOEI', N'NY-ME')
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA876', N'06:20', N'12:10', N'BOEI', N'ME-NY')
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA901', N'08:55', N'10:40', N'ARBS', N'NY-PI')
INSERT [dbo].[Flights] ([FlightNo], [DepTime], [ArrTime], [AircraftTypeID], [SectorID]) VALUES (N'HA902', N'07:00', N'08:30', N'ARBS', N'PI-NY')
/****** Object:  View [dbo].[FlightDetailsInDays]    Script Date: 12/18/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FlightDetailsInDays]
AS
SELECT DISTINCT 
                      dbo.Flights.FlightNo, dbo.Sector.SectorID, dbo.Sector.WeekDay1, dbo.Sector.WeekDay2, dbo.Aircraft.Description, dbo.Flights.DepTime, dbo.Flights.ArrTime, 
                      dbo.Sector.FirstClassFare, dbo.Sector.BusinessClassFare, dbo.Sector.EconomyClassFare
FROM         dbo.Aircraft INNER JOIN
                      dbo.Flights ON dbo.Aircraft.AircraftTypeID = dbo.Flights.AircraftTypeID INNER JOIN
                      dbo.ScheduledFlights ON dbo.Flights.FlightNo = dbo.ScheduledFlights.FlightNo INNER JOIN
                      dbo.Sector ON dbo.Flights.SectorID = dbo.Sector.SectorID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[16] 2[20] 3) )"
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
         Begin Table = "Aircraft"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Flights"
            Begin Extent = 
               Top = 6
               Left = 260
               Bottom = 125
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ScheduledFlights"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sector"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 365
               Right = 217
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
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FlightDetailsInDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FlightDetailsInDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FlightDetailsInDays'
GO
/****** Object:  View [dbo].[FlightDetails]    Script Date: 12/18/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FlightDetails]
AS
SELECT     dbo.ScheduledFlights.FlightNo, dbo.Sector.SectorID, dbo.Aircraft.Description, dbo.ScheduledFlights.FlightDate, dbo.Flights.DepTime, dbo.Flights.ArrTime, 
                      dbo.Sector.FirstClassFare, dbo.Sector.BusinessClassFare, dbo.Sector.EconomyClassFare
FROM         dbo.Aircraft INNER JOIN
                      dbo.Flights ON dbo.Aircraft.AircraftTypeID = dbo.Flights.AircraftTypeID INNER JOIN
                      dbo.ScheduledFlights ON dbo.Flights.FlightNo = dbo.ScheduledFlights.FlightNo INNER JOIN
                      dbo.Sector ON dbo.Flights.SectorID = dbo.Sector.SectorID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[9] 2[26] 3) )"
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
         Begin Table = "Aircraft"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Flights"
            Begin Extent = 
               Top = 6
               Left = 260
               Bottom = 125
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ScheduledFlights"
            Begin Extent = 
               Top = 6
               Left = 458
               Bottom = 125
               Right = 685
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sector"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FlightDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FlightDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FlightDetails'
GO
/****** Object:  View [dbo].[VwFlightPassengerCountByClass]    Script Date: 12/18/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwFlightPassengerCountByClass]
AS
SELECT     COUNT(PNRNo) AS 'Count', Class, FlightNo, FlightDate
FROM         dbo.ReservedFlights rf
WHERE rf.CancelFlag != 1
GROUP BY FlightNo, FlightDate, Class
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[15] 2[12] 3) )"
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
         Begin Table = "ReservedFlights"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwFlightPassengerCountByClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwFlightPassengerCountByClass'
GO
/****** Object:  View [dbo].[VwFlightByAircraftModel]    Script Date: 12/18/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwFlightByAircraftModel]
AS
SELECT     dbo.Flights.FlightNo, dbo.Aircraft.AircraftTypeID, dbo.Aircraft.Description, dbo.Aircraft.FirstClassSeats, dbo.Aircraft.BusinessClassSeats, 
                      dbo.Aircraft.EconomyClassSeats, dbo.Aircraft.Rows, dbo.Aircraft.FirstClassArrangement, dbo.Aircraft.BusinessClassArrangement, 
                      dbo.Aircraft.EconomyClassArrangement
FROM         dbo.Aircraft INNER JOIN
                      dbo.Flights ON dbo.Aircraft.AircraftTypeID = dbo.Flights.AircraftTypeID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[21] 2[12] 3) )"
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
         Begin Table = "Aircraft"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Flights"
            Begin Extent = 
               Top = 6
               Left = 260
               Bottom = 125
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwFlightByAircraftModel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwFlightByAircraftModel'
GO
/****** Object:  View [dbo].[ViewReservedFlights]    Script Date: 12/18/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewReservedFlights]
AS
SELECT     dbo.ReservedFlights.PNRNo, dbo.ReservedFlights.FlightNo, dbo.ReservedFlights.Class, dbo.ReservedFlights.FlightDate
FROM         dbo.Passenger INNER JOIN
                      dbo.ReservedFlights ON dbo.Passenger.PNRNo = dbo.ReservedFlights.PNRNo
WHERE     (dbo.Passenger.CancelFlag <> 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[5] 2[29] 3) )"
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
         Begin Table = "Passenger"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "ReservedFlights"
            Begin Extent = 
               Top = 2
               Left = 338
               Bottom = 121
               Right = 498
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewReservedFlights'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewReservedFlights'
GO
/****** Object:  View [dbo].[VwPassengerCountPerFlight]    Script Date: 12/18/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwPassengerCountPerFlight] AS
SELECT     FlightNo, FlightDate, ISNULL(SUM(DISTINCT First),0) AS 'First', ISNULL(SUM(DISTINCT Business),0) AS 'Business', ISNULL(SUM(DISTINCT Economy),0) AS 'Economy'
FROM         (SELECT     FlightNo, FlightDate,
                                                  (SELECT     Count
                                                    FROM          dbo.VwFlightPassengerCountByClass AS pc
                                                    WHERE      (Class = 'First') AND (FlightNo = pcbc.FlightNo) AND (FlightDate = pcbc.FlightDate)) AS First,
                                                  (SELECT     Count
                                                    FROM          dbo.VwFlightPassengerCountByClass AS pc
                                                    WHERE      (Class = 'Business') AND (FlightNo = pcbc.FlightNo) AND (FlightDate = pcbc.FlightDate)) AS Business,
                                                  (SELECT     Count
                                                    FROM          dbo.VwFlightPassengerCountByClass AS pc
                                                    WHERE      (Class = 'Economy') AND (FlightNo = pcbc.FlightNo) AND (FlightDate = pcbc.FlightDate)) AS Economy
                       FROM          dbo.VwFlightPassengerCountByClass AS pcbc) AS pv
GROUP BY FlightNo, FlightDate
GO
/****** Object:  View [dbo].[VwPassenger_x_FlightDetails]    Script Date: 12/18/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwPassenger_x_FlightDetails]
AS
SELECT     dbo.Passenger.PNRNo, dbo.Passenger.Firstname, dbo.Passenger.Lastname, dbo.Passenger_x_FlightDetails.FlightNo, dbo.Passenger_x_FlightDetails.FlightDate, 
                      dbo.FlightDetails.SectorID, dbo.FlightDetails.Description, dbo.FlightDetails.DepTime, dbo.FlightDetails.ArrTime, dbo.FlightDetails.FirstClassFare, 
                      dbo.FlightDetails.BusinessClassFare, dbo.FlightDetails.EconomyClassFare
FROM         dbo.Passenger_x_FlightDetails INNER JOIN
                      dbo.Passenger ON dbo.Passenger_x_FlightDetails.PNRNo = dbo.Passenger.PNRNo INNER JOIN
                      dbo.FlightDetails ON dbo.Passenger_x_FlightDetails.FlightNo = dbo.FlightDetails.FlightNo AND 
                      dbo.Passenger_x_FlightDetails.FlightDate = dbo.FlightDetails.FlightDate
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[19] 3) )"
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
         Begin Table = "Passenger_x_FlightDetails"
            Begin Extent = 
               Top = 18
               Left = 250
               Bottom = 122
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Passenger"
            Begin Extent = 
               Top = 64
               Left = 56
               Bottom = 183
               Right = 216
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "FlightDetails"
            Begin Extent = 
               Top = 14
               Left = 574
               Bottom = 133
               Right = 753
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 2790
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwPassenger_x_FlightDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwPassenger_x_FlightDetails'
GO
/****** Object:  View [dbo].[VwFlightSchedules]    Script Date: 12/18/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwFlightSchedules]
AS
SELECT     dbo.FlightDetails.FlightNo, dbo.FlightDetails.SectorID, dbo.FlightDetails.Description, dbo.FlightDetails.FlightDate, dbo.FlightDetails.DepTime, 
                      dbo.FlightDetails.ArrTime, dbo.Aircraft.FirstClassSeats - ISNULL(dbo.VwPassengerCountPerFlight.First, 0) AS AvailableFirstClassSeats, 
                      dbo.Aircraft.BusinessClassSeats - ISNULL(dbo.VwPassengerCountPerFlight.Business, 0) AS AvailableBusinessClassSeats, 
                      dbo.Aircraft.EconomyClassSeats - ISNULL(dbo.VwPassengerCountPerFlight.Economy, 0) AS AvailableEconomyClassSeats
FROM         dbo.FlightDetails INNER JOIN
                      dbo.Aircraft ON dbo.FlightDetails.Description = dbo.Aircraft.Description LEFT OUTER JOIN
                      dbo.VwPassengerCountPerFlight ON dbo.FlightDetails.FlightNo = dbo.VwPassengerCountPerFlight.FlightNo AND 
                      dbo.FlightDetails.FlightDate = dbo.VwPassengerCountPerFlight.FlightDate
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[34] 4[4] 2[22] 3) )"
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
         Begin Table = "FlightDetails"
            Begin Extent = 
               Top = 0
               Left = 219
               Bottom = 119
               Right = 398
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "VwPassengerCountPerFlight"
            Begin Extent = 
               Top = 24
               Left = 483
               Bottom = 143
               Right = 643
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Aircraft"
            Begin Extent = 
               Top = 66
               Left = 2
               Bottom = 185
               Right = 186
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwFlightSchedules'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwFlightSchedules'
GO
/****** Object:  Default [DF_ReservedFlights_CancelFlag]    Script Date: 12/18/2014 17:57:42 ******/
ALTER TABLE [dbo].[ReservedFlights] ADD  CONSTRAINT [DF_ReservedFlights_CancelFlag]  DEFAULT ((0)) FOR [CancelFlag]
GO
/****** Object:  ForeignKey [FK4299719B85E8354D]    Script Date: 12/18/2014 17:57:42 ******/
ALTER TABLE [dbo].[ReservedFlights]  WITH CHECK ADD  CONSTRAINT [FK4299719B85E8354D] FOREIGN KEY([PNRNo])
REFERENCES [dbo].[Passenger] ([PNRNo])
GO
ALTER TABLE [dbo].[ReservedFlights] CHECK CONSTRAINT [FK4299719B85E8354D]
GO
/****** Object:  ForeignKey [AircraftTypeID]    Script Date: 12/18/2014 17:57:42 ******/
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [AircraftTypeID] FOREIGN KEY([AircraftTypeID])
REFERENCES [dbo].[Aircraft] ([AircraftTypeID])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [AircraftTypeID]
GO
/****** Object:  ForeignKey [SectorID]    Script Date: 12/18/2014 17:57:42 ******/
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [SectorID] FOREIGN KEY([SectorID])
REFERENCES [dbo].[Sector] ([SectorID])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [SectorID]
GO
