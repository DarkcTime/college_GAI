USE [master]
GO
/****** Object:  Database [GAI]    Script Date: 8/31/2020 12:08:12 PM ******/
CREATE DATABASE [GAI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GAI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\GAI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GAI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\GAI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GAI] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GAI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GAI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GAI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GAI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GAI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GAI] SET ARITHABORT OFF 
GO
ALTER DATABASE [GAI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GAI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GAI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GAI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GAI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GAI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GAI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GAI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GAI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GAI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GAI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GAI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GAI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GAI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GAI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GAI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GAI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GAI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GAI] SET  MULTI_USER 
GO
ALTER DATABASE [GAI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GAI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GAI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GAI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GAI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GAI] SET QUERY_STORE = OFF
GO
USE [GAI]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[IdColor] [int] IDENTITY(1,1) NOT NULL,
	[NameColor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[IdColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[IdDriver] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[RegionId] [int] NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[DrivingLisenceId] [int] NOT NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[IdDriver] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverLisence]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverLisence](
	[IdDrivingLisence] [int] IDENTITY(1,1) NOT NULL,
	[DateOfReceipt] [date] NOT NULL,
	[DateExpiry] [date] NOT NULL,
	[LisenceStatusId] [int] NOT NULL,
 CONSTRAINT [PK_DriverLisence] PRIMARY KEY CLUSTERED 
(
	[IdDrivingLisence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverTransportVehicle]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverTransportVehicle](
	[IdDriverTransportVehicle] [int] IDENTITY(1,1) NOT NULL,
	[DriverId] [int] NOT NULL,
	[TransportVehicleId] [int] NOT NULL,
	[TypeOfOwnerShipId] [int] NOT NULL,
 CONSTRAINT [PK_DriverTransportVehicle] PRIMARY KEY CLUSTERED 
(
	[IdDriverTransportVehicle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Engine]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Engine](
	[IdEngine] [int] IDENTITY(1,1) NOT NULL,
	[Power] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
	[YearOfManufacture] [date] NOT NULL,
 CONSTRAINT [PK_Engine] PRIMARY KEY CLUSTERED 
(
	[IdEngine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[IdGender] [int] IDENTITY(1,1) NOT NULL,
	[NameGender] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[IdGender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurance]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurance](
	[IdInsurance] [int] IDENTITY(1,1) NOT NULL,
	[DateOfReceipt] [date] NOT NULL,
	[DateExpiry] [date] NOT NULL,
 CONSTRAINT [PK_Insurance] PRIMARY KEY CLUSTERED 
(
	[IdInsurance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LicenceStatus]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenceStatus](
	[IdLisenceStatus] [int] IDENTITY(1,1) NOT NULL,
	[NameLisenceStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LicenceStatus] PRIMARY KEY CLUSTERED 
(
	[IdLisenceStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Office]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Office](
	[IdOffice] [int] IDENTITY(1,1) NOT NULL,
	[NameOffice] [nvarchar](50) NOT NULL,
	[RegionId] [int] NOT NULL,
 CONSTRAINT [PK_Office] PRIMARY KEY CLUSTERED 
(
	[IdOffice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Officer]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Officer](
	[IdOfficer] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[OfficeId] [int] NOT NULL,
	[PositionId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Officer] PRIMARY KEY CLUSTERED 
(
	[IdOfficer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Protocol]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Protocol](
	[IdProtocol] [int] NOT NULL,
	[DateOfViolationId] [date] NOT NULL,
	[PlaceOfViolationId] [nvarchar](50) NOT NULL,
	[TypeOfViolationId] [int] NOT NULL,
	[DriverTransportVihicleId] [int] NOT NULL,
	[OfficerId] [int] NOT NULL,
 CONSTRAINT [PK_Protocol] PRIMARY KEY CLUSTERED 
(
	[IdProtocol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[IdRegion] [int] IDENTITY(1,1) NOT NULL,
	[NameRegion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[IdRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransportVehicle]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransportVehicle](
	[IdTransportVehicle] [int] IDENTITY(1,1) NOT NULL,
	[VIN] [varchar](50) NOT NULL,
	[EngineId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[TypeOfTransportVehicle] [int] NOT NULL,
	[InsuranceId] [int] NOT NULL,
 CONSTRAINT [PK_TransportVehicle] PRIMARY KEY CLUSTERED 
(
	[IdTransportVehicle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfOwnerShip]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfOwnerShip](
	[IdTypeOfOwnerShip] [int] IDENTITY(1,1) NOT NULL,
	[NameType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfOwnerShip] PRIMARY KEY CLUSTERED 
(
	[IdTypeOfOwnerShip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfTransportVehicle]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfTransportVehicle](
	[IdTypeOfTransportVehicle] [int] IDENTITY(1,1) NOT NULL,
	[NameTypeOfTransportVehicle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfTransportVehicle] PRIMARY KEY CLUSTERED 
(
	[IdTypeOfTransportVehicle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/31/2020 12:08:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (1, N'Orange')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (2, N'Puce')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (3, N'Khaki')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (4, N'Maroon')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (5, N'Green')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (6, N'Red')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (7, N'Purple')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (8, N'Teal')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (9, N'Maroon')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (10, N'Blue')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (11, N'Violet')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (12, N'Puce')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (13, N'Purple')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (14, N'Goldenrod')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (15, N'Pink')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (16, N'Fuscia')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (17, N'Fuscia')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (18, N'Green')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (19, N'Blue')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (20, N'Maroon')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (21, N'Maroon')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (22, N'Fuscia')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (23, N'Yellow')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (24, N'Purple')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (25, N'Crimson')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (26, N'Mauv')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (27, N'Pink')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (28, N'Pink')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (29, N'Green')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (30, N'Fuscia')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (31, N'Pink')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (32, N'Blue')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (33, N'Khaki')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (34, N'Teal')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (35, N'Crimson')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (36, N'Indigo')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (37, N'Yellow')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (38, N'Goldenrod')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (39, N'Fuscia')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (40, N'Green')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (41, N'Green')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (42, N'Violet')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (43, N'Indigo')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (44, N'Green')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (45, N'Crimson')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (46, N'Teal')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (47, N'Khaki')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (48, N'Maroon')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (49, N'Indigo')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (50, N'Orange')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (51, N'Violet')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (52, N'Turquoise')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (53, N'Aquamarine')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (54, N'Indigo')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (55, N'Fuscia')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (56, N'Mauv')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (57, N'Indigo')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (58, N'Aquamarine')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (59, N'Puce')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (60, N'Mauv')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (61, N'Yellow')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (62, N'Orange')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (63, N'Red')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (64, N'Khaki')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (65, N'Turquoise')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (66, N'Turquoise')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (67, N'Mauv')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (68, N'Aquamarine')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (69, N'Goldenrod')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (70, N'Crimson')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (71, N'Orange')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (72, N'Pink')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (73, N'Violet')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (74, N'Purple')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (75, N'Violet')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (76, N'Yellow')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (77, N'Purple')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (78, N'Yellow')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (79, N'Aquamarine')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (80, N'Pink')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (81, N'Turquoise')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (82, N'Crimson')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (83, N'Orange')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (84, N'Turquoise')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (85, N'Purple')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (86, N'Maroon')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (87, N'Pink')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (88, N'Khaki')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (89, N'Teal')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (90, N'Teal')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (91, N'Aquamarine')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (92, N'Fuscia')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (93, N'Turquoise')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (94, N'Purple')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (95, N'Teal')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (96, N'Pink')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (97, N'Puce')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (98, N'Fuscia')
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (99, N'Khaki')
GO
INSERT [dbo].[Color] ([IdColor], [NameColor]) VALUES (100, N'Goldenrod')
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[Driver] ON 

INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (1, N'Ines', N'Dikes', CAST(N'1988-07-14' AS Date), 1, N'499 Nevada Terrace', 1, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (2, N'Magdalen', N'Fowells', CAST(N'1977-03-18' AS Date), 1, N'33 Schmedeman Hill', 2, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (3, N'Ibby', N'Pieche', CAST(N'1997-01-05' AS Date), 1, N'5693 Sugar Avenue', 3, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (4, N'Brunhilda', N'Haygreen', CAST(N'1988-09-15' AS Date), 1, N'30 Steensland Park', 4, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (5, N'Braden', N'Skinley', CAST(N'1995-03-30' AS Date), 1, N'4018 Fairfield Way', 5, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (6, N'Caspar', N'Ramsdale', CAST(N'1986-03-02' AS Date), 1, N'65106 Ronald Regan Court', 6, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (7, N'Ashly', N'Muncie', CAST(N'1988-08-06' AS Date), 1, N'9 Carey Parkway', 7, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (8, N'Harmonie', N'Dreghorn', CAST(N'1962-02-03' AS Date), 1, N'66840 Carey Road', 8, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (9, N'Isabelita', N'Rosenkrantz', CAST(N'1987-04-30' AS Date), 1, N'67 Bowman Point', 9, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (10, N'Gonzalo', N'Dikelin', CAST(N'1965-10-23' AS Date), 1, N'1178 Hovde Place', 10, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (11, N'Judon', N'Belison', CAST(N'1996-01-14' AS Date), 1, N'490 Toban Street', 11, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (12, N'Auria', N'Careswell', CAST(N'1997-04-08' AS Date), 1, N'1 Derek Place', 12, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (13, N'Karolina', N'Lasty', CAST(N'2000-12-15' AS Date), 1, N'2772 Crest Line Junction', 13, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (14, N'Sigmund', N'Simoncini', CAST(N'1979-11-07' AS Date), 1, N'438 Jay Point', 14, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (15, N'Karoline', N'Dishman', CAST(N'1980-12-26' AS Date), 1, N'31 Bayside Way', 15, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (16, N'Rianon', N'Trattles', CAST(N'1975-10-22' AS Date), 1, N'6013 Miller Plaza', 16, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (17, N'Rosene', N'Brothwood', CAST(N'1983-12-25' AS Date), 1, N'377 Arapahoe Street', 17, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (18, N'Jens', N'Eayrs', CAST(N'1963-06-19' AS Date), 1, N'11 Surrey Road', 18, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (19, N'Britta', N'Rosten', CAST(N'1969-08-06' AS Date), 1, N'0487 Bashford Avenue', 19, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (20, N'Cati', N'Barrott', CAST(N'1994-05-13' AS Date), 1, N'81007 Heffernan Alley', 20, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (21, N'Rivalee', N'Zambonini', CAST(N'1964-09-28' AS Date), 1, N'418 Stang Place', 21, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (22, N'Nicolas', N'Danbi', CAST(N'1969-05-29' AS Date), 1, N'48 Eliot Plaza', 22, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (23, N'Brande', N'De Pero', CAST(N'1998-02-27' AS Date), 1, N'7711 Rowland Terrace', 23, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (24, N'Dalila', N'Comfort', CAST(N'1969-12-12' AS Date), 1, N'26005 Corben Street', 24, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (25, N'Moreen', N'Backe', CAST(N'1993-12-24' AS Date), 1, N'2120 Homewood Road', 25, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (26, N'Payton', N'Kitteringham', CAST(N'2001-05-21' AS Date), 1, N'3 Maryland Trail', 26, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (27, N'Doralynne', N'Twinborne', CAST(N'1967-04-15' AS Date), 1, N'643 Coleman Pass', 27, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (28, N'Barnard', N'Jones', CAST(N'1986-02-27' AS Date), 1, N'82 Farmco Road', 28, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (29, N'Tracey', N'Kirimaa', CAST(N'1979-01-18' AS Date), 1, N'92 Northland Parkway', 29, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (30, N'Hymie', N'Baldwin', CAST(N'1971-02-04' AS Date), 1, N'53168 Waywood Park', 30, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (31, N'Zelig', N'Crecy', CAST(N'1968-01-24' AS Date), 1, N'68 Novick Hill', 31, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (32, N'Augustus', N'Mears', CAST(N'1965-01-28' AS Date), 1, N'07512 Banding Alley', 32, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (33, N'Madelyn', N'Daice', CAST(N'1972-05-14' AS Date), 1, N'8901 Havey Lane', 33, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (34, N'Claybourne', N'Newcome', CAST(N'1971-12-07' AS Date), 1, N'493 Westend Point', 34, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (35, N'Bernardine', N'Stalley', CAST(N'1976-03-01' AS Date), 1, N'49293 Tennessee Drive', 35, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (36, N'Erika', N'Bourges', CAST(N'1991-12-11' AS Date), 1, N'635 Sommers Pass', 36, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (37, N'Debi', N'Dougary', CAST(N'1992-06-17' AS Date), 1, N'614 Ohio Plaza', 37, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (38, N'Den', N'Halfhead', CAST(N'1979-05-15' AS Date), 1, N'8 New Castle Junction', 38, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (39, N'Gail', N'Eneas', CAST(N'1966-05-11' AS Date), 1, N'5 Anhalt Avenue', 39, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (40, N'Constancia', N'Greet', CAST(N'1963-12-05' AS Date), 1, N'3 Loomis Avenue', 40, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (41, N'Larina', N'Knott', CAST(N'1985-12-22' AS Date), 1, N'9518 Manitowish Lane', 41, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (42, N'Mar', N'Cribbin', CAST(N'1974-10-24' AS Date), 1, N'20 Little Fleur Center', 42, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (43, N'Obed', N'Cregg', CAST(N'1964-08-31' AS Date), 1, N'9804 Susan Alley', 43, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (44, N'Mikel', N'Onge', CAST(N'1967-12-17' AS Date), 1, N'6 Green Way', 44, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (45, N'Conrade', N'Biggans', CAST(N'1975-08-02' AS Date), 1, N'27 Summit Place', 45, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (46, N'Danit', N'Trevear', CAST(N'1980-12-16' AS Date), 1, N'56053 Del Sol Plaza', 46, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (47, N'Ruprecht', N'Koomar', CAST(N'1994-09-23' AS Date), 1, N'4 Merry Hill', 47, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (48, N'Kristin', N'Piele', CAST(N'1994-11-16' AS Date), 1, N'023 Lawn Lane', 48, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (49, N'Rudyard', N'Dadd', CAST(N'1963-05-06' AS Date), 1, N'39894 Mitchell Road', 49, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (50, N'Anetta', N'Doyley', CAST(N'2000-12-16' AS Date), 1, N'7 Menomonie Road', 50, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (51, N'Bonita', N'Wilcockes', CAST(N'1981-12-02' AS Date), 1, N'020 Lawn Place', 51, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (52, N'Philly', N'Wraith', CAST(N'1973-06-09' AS Date), 1, N'3 Summit Way', 52, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (53, N'Talbert', N'Peddersen', CAST(N'1963-02-05' AS Date), 1, N'872 Lukken Street', 53, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (54, N'Glynis', N'MacKenzie', CAST(N'1962-06-09' AS Date), 1, N'7645 Kingsford Point', 54, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (55, N'Stormy', N'Impleton', CAST(N'1972-04-10' AS Date), 1, N'277 Warrior Alley', 55, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (56, N'Adelaida', N'Avesque', CAST(N'1964-08-11' AS Date), 1, N'4950 Onsgard Junction', 56, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (57, N'Chev', N'Sunnex', CAST(N'1984-10-04' AS Date), 1, N'151 Raven Street', 57, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (58, N'Trefor', N'Pridmore', CAST(N'1991-08-27' AS Date), 1, N'72 Eggendart Drive', 58, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (59, N'Joy', N'Dopson', CAST(N'1987-12-27' AS Date), 1, N'7697 Eagle Crest Junction', 59, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (60, N'Hamel', N'Attkins', CAST(N'1967-10-27' AS Date), 1, N'88 Everett Drive', 60, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (61, N'Cesar', N'Cole', CAST(N'1980-10-19' AS Date), 1, N'89401 Boyd Pass', 61, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (62, N'Deidre', N'Fley', CAST(N'1990-03-21' AS Date), 1, N'4985 Tennyson Hill', 62, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (63, N'Benedetta', N'Higounet', CAST(N'1984-11-11' AS Date), 1, N'69875 Menomonie Drive', 63, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (64, N'Elinor', N'Condon', CAST(N'1987-10-17' AS Date), 1, N'59859 Rieder Pass', 64, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (65, N'Scotty', N'Jorat', CAST(N'1960-12-25' AS Date), 1, N'69132 Sycamore Alley', 65, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (66, N'Pam', N'Chadburn', CAST(N'1997-04-15' AS Date), 1, N'682 Londonderry Way', 66, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (67, N'Shaina', N'Bagg', CAST(N'1989-07-10' AS Date), 1, N'54 Elmside Place', 67, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (68, N'Chrissy', N'Crucetti', CAST(N'1994-10-28' AS Date), 1, N'392 Merry Alley', 68, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (69, N'Gustav', N'Rehor', CAST(N'1987-12-01' AS Date), 1, N'99335 Vera Road', 69, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (70, N'Al', N'Gwilym', CAST(N'1966-04-30' AS Date), 1, N'2705 Oxford Way', 70, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (71, N'Calida', N'Lathleiff', CAST(N'1984-05-23' AS Date), 1, N'4 Scoville Street', 71, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (72, N'Bronny', N'Dominicacci', CAST(N'1994-02-26' AS Date), 1, N'79377 Marcy Pass', 72, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (73, N'Dniren', N'Van der Daal', CAST(N'1998-08-24' AS Date), 1, N'50752 Barby Junction', 73, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (74, N'Bastian', N'Hentzeler', CAST(N'1984-09-27' AS Date), 1, N'3097 Lakewood Gardens Junction', 74, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (75, N'Layla', N'Price', CAST(N'1984-06-03' AS Date), 1, N'32198 Hintze Street', 75, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (76, N'Gilbert', N'Longmore', CAST(N'1976-08-04' AS Date), 1, N'72669 Hoard Center', 76, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (77, N'Dickie', N'Sans', CAST(N'1988-10-28' AS Date), 1, N'7024 Veith Parkway', 77, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (78, N'Clary', N'Oxtarby', CAST(N'1985-10-13' AS Date), 1, N'2 Straubel Road', 78, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (79, N'Victoria', N'Marrion', CAST(N'1982-11-23' AS Date), 1, N'866 Dexter Alley', 79, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (80, N'Darryl', N'Karpol', CAST(N'1961-09-19' AS Date), 1, N'1 Declaration Road', 80, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (81, N'Cletis', N'Grzesiak', CAST(N'2000-06-17' AS Date), 1, N'22341 Fuller Park', 81, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (82, N'Bethena', N'Synke', CAST(N'1991-04-04' AS Date), 1, N'11 Dawn Drive', 82, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (83, N'Merell', N'Bowick', CAST(N'1997-02-13' AS Date), 1, N'4 Hovde Alley', 83, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (84, N'Newton', N'Nossent', CAST(N'1968-07-07' AS Date), 1, N'6 Roxbury Circle', 84, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (85, N'Josh', N'Bramah', CAST(N'2001-07-06' AS Date), 1, N'6585 Coleman Street', 85, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (86, N'Fremont', N'Verty', CAST(N'1989-11-28' AS Date), 1, N'398 Saint Paul Avenue', 86, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (87, N'Esra', N'Flucker', CAST(N'1973-06-25' AS Date), 1, N'71 Schiller Center', 87, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (88, N'Edy', N'McAdam', CAST(N'1974-10-29' AS Date), 1, N'1447 Monica Hill', 88, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (89, N'Margalit', N'Yves', CAST(N'1984-05-28' AS Date), 1, N'4598 Mendota Court', 89, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (90, N'Niel', N'Treble', CAST(N'1992-12-04' AS Date), 1, N'8 Arapahoe Circle', 90, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (91, N'Ezra', N'Workes', CAST(N'1993-01-23' AS Date), 1, N'10 Nevada Alley', 91, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (92, N'Eloisa', N'Fridlington', CAST(N'1965-07-16' AS Date), 1, N'9 Hayes Terrace', 92, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (93, N'Athena', N'Newson', CAST(N'1998-08-23' AS Date), 1, N'5 Transport Road', 93, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (94, N'Noel', N'Renner', CAST(N'1970-09-30' AS Date), 1, N'9 Raven Point', 94, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (95, N'Elnore', N'Mc Corley', CAST(N'2000-01-23' AS Date), 1, N'8 Paget Court', 95, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (96, N'Berke', N'Statter', CAST(N'1982-12-27' AS Date), 1, N'7783 Daystar Crossing', 96, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (97, N'Jeane', N'Ebourne', CAST(N'1998-10-26' AS Date), 1, N'0051 Cardinal Park', 97, 2)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (98, N'Glyn', N'Brouncker', CAST(N'1968-03-04' AS Date), 1, N'58 Alpine Alley', 98, 1)
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (99, N'Yetty', N'Joderli', CAST(N'1993-12-24' AS Date), 1, N'02 Nova Terrace', 99, 2)
GO
INSERT [dbo].[Driver] ([IdDriver], [FirstName], [LastName], [DateOfBirth], [RegionId], [Address], [DrivingLisenceId], [GenderId]) VALUES (100, N'Veronika', N'Dinnis', CAST(N'1993-08-13' AS Date), 1, N'389 Clyde Gallagher Court', 100, 1)
SET IDENTITY_INSERT [dbo].[Driver] OFF
SET IDENTITY_INSERT [dbo].[DriverLisence] ON 

INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (1, CAST(N'2004-06-10' AS Date), CAST(N'2014-11-14' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (2, CAST(N'2013-03-23' AS Date), CAST(N'2004-12-14' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (3, CAST(N'2003-08-17' AS Date), CAST(N'2006-05-24' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (4, CAST(N'2005-10-09' AS Date), CAST(N'2017-07-31' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (5, CAST(N'2018-09-07' AS Date), CAST(N'2001-08-17' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (6, CAST(N'2002-10-05' AS Date), CAST(N'2005-06-28' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (7, CAST(N'2010-01-09' AS Date), CAST(N'2013-08-15' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (8, CAST(N'2010-08-24' AS Date), CAST(N'2009-05-15' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (9, CAST(N'2020-01-22' AS Date), CAST(N'2012-02-21' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (10, CAST(N'2003-03-12' AS Date), CAST(N'2009-04-04' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (11, CAST(N'2004-04-23' AS Date), CAST(N'2001-06-27' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (12, CAST(N'2000-09-29' AS Date), CAST(N'2016-03-19' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (13, CAST(N'2002-09-13' AS Date), CAST(N'2013-05-14' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (14, CAST(N'2018-06-30' AS Date), CAST(N'2011-10-13' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (15, CAST(N'2003-03-25' AS Date), CAST(N'2006-06-29' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (16, CAST(N'2017-04-29' AS Date), CAST(N'2006-02-10' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (17, CAST(N'2010-06-13' AS Date), CAST(N'2006-05-13' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (18, CAST(N'2009-07-13' AS Date), CAST(N'2019-08-12' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (19, CAST(N'2019-02-20' AS Date), CAST(N'2001-04-17' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (20, CAST(N'2000-09-12' AS Date), CAST(N'2005-06-01' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (21, CAST(N'2007-04-27' AS Date), CAST(N'2002-02-09' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (22, CAST(N'2000-09-17' AS Date), CAST(N'2011-11-10' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (23, CAST(N'2018-04-30' AS Date), CAST(N'2008-01-03' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (24, CAST(N'2014-11-17' AS Date), CAST(N'2011-09-16' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (25, CAST(N'2009-07-20' AS Date), CAST(N'2007-11-28' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (26, CAST(N'2006-03-29' AS Date), CAST(N'2015-06-15' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (27, CAST(N'2015-11-11' AS Date), CAST(N'2000-11-08' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (28, CAST(N'2010-09-26' AS Date), CAST(N'2017-11-27' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (29, CAST(N'2003-11-03' AS Date), CAST(N'2011-09-02' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (30, CAST(N'2005-10-22' AS Date), CAST(N'2017-12-05' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (31, CAST(N'2016-03-19' AS Date), CAST(N'2010-09-18' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (32, CAST(N'2006-05-16' AS Date), CAST(N'2015-07-04' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (33, CAST(N'2004-08-30' AS Date), CAST(N'2008-03-10' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (34, CAST(N'2004-01-21' AS Date), CAST(N'2018-03-09' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (35, CAST(N'2001-11-27' AS Date), CAST(N'2002-10-30' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (36, CAST(N'2014-06-12' AS Date), CAST(N'2001-05-22' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (37, CAST(N'2014-04-25' AS Date), CAST(N'2015-10-10' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (38, CAST(N'2000-11-12' AS Date), CAST(N'2011-08-11' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (39, CAST(N'2019-10-02' AS Date), CAST(N'2004-05-13' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (40, CAST(N'2010-07-17' AS Date), CAST(N'2011-10-24' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (41, CAST(N'2016-12-21' AS Date), CAST(N'2003-07-27' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (42, CAST(N'2016-04-18' AS Date), CAST(N'2017-01-13' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (43, CAST(N'2013-12-08' AS Date), CAST(N'2018-01-14' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (44, CAST(N'2018-04-09' AS Date), CAST(N'2014-07-30' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (45, CAST(N'2002-02-02' AS Date), CAST(N'2006-11-01' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (46, CAST(N'2016-08-29' AS Date), CAST(N'2006-01-12' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (47, CAST(N'2003-03-22' AS Date), CAST(N'2017-10-07' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (48, CAST(N'2017-02-01' AS Date), CAST(N'2007-02-15' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (49, CAST(N'2017-08-03' AS Date), CAST(N'2016-01-17' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (50, CAST(N'2005-10-05' AS Date), CAST(N'2011-04-07' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (51, CAST(N'2013-08-07' AS Date), CAST(N'2001-07-07' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (52, CAST(N'2005-06-30' AS Date), CAST(N'2004-08-11' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (53, CAST(N'2009-12-20' AS Date), CAST(N'2015-10-06' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (54, CAST(N'2005-01-31' AS Date), CAST(N'2007-11-14' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (55, CAST(N'2018-07-06' AS Date), CAST(N'2019-07-18' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (56, CAST(N'2018-06-29' AS Date), CAST(N'2003-09-05' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (57, CAST(N'2004-12-28' AS Date), CAST(N'2004-04-07' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (58, CAST(N'2015-06-04' AS Date), CAST(N'2012-12-31' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (59, CAST(N'2003-03-03' AS Date), CAST(N'2009-05-29' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (60, CAST(N'2015-09-06' AS Date), CAST(N'2015-02-16' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (61, CAST(N'2010-02-12' AS Date), CAST(N'2018-06-04' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (62, CAST(N'2014-09-06' AS Date), CAST(N'2003-05-18' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (63, CAST(N'2011-04-29' AS Date), CAST(N'2010-01-15' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (64, CAST(N'2018-08-29' AS Date), CAST(N'2012-06-21' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (65, CAST(N'2014-09-13' AS Date), CAST(N'2005-02-27' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (66, CAST(N'2012-04-21' AS Date), CAST(N'2001-04-04' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (67, CAST(N'2020-07-02' AS Date), CAST(N'2007-02-27' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (68, CAST(N'2002-12-06' AS Date), CAST(N'2015-09-25' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (69, CAST(N'2001-01-02' AS Date), CAST(N'2020-04-17' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (70, CAST(N'2017-07-21' AS Date), CAST(N'2012-06-23' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (71, CAST(N'2016-03-31' AS Date), CAST(N'2020-06-05' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (72, CAST(N'2011-06-05' AS Date), CAST(N'2009-12-11' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (73, CAST(N'2019-04-17' AS Date), CAST(N'2007-09-05' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (74, CAST(N'2008-03-29' AS Date), CAST(N'2014-11-26' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (75, CAST(N'2013-08-30' AS Date), CAST(N'2014-03-07' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (76, CAST(N'2017-12-03' AS Date), CAST(N'2011-11-12' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (77, CAST(N'2016-11-09' AS Date), CAST(N'2001-01-19' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (78, CAST(N'2007-10-17' AS Date), CAST(N'2015-10-09' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (79, CAST(N'2015-03-19' AS Date), CAST(N'2001-08-07' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (80, CAST(N'2014-08-23' AS Date), CAST(N'2019-09-05' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (81, CAST(N'2014-10-26' AS Date), CAST(N'2019-06-11' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (82, CAST(N'2005-06-26' AS Date), CAST(N'2018-01-18' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (83, CAST(N'2000-10-18' AS Date), CAST(N'2001-06-08' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (84, CAST(N'2015-07-08' AS Date), CAST(N'2020-05-03' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (85, CAST(N'2006-04-16' AS Date), CAST(N'2010-09-20' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (86, CAST(N'2013-07-03' AS Date), CAST(N'2012-01-29' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (87, CAST(N'2003-02-28' AS Date), CAST(N'2014-11-21' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (88, CAST(N'2013-06-26' AS Date), CAST(N'2010-06-23' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (89, CAST(N'2013-03-14' AS Date), CAST(N'2004-07-20' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (90, CAST(N'2013-02-13' AS Date), CAST(N'2006-04-02' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (91, CAST(N'2014-05-16' AS Date), CAST(N'2009-04-11' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (92, CAST(N'2014-07-29' AS Date), CAST(N'2016-11-25' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (93, CAST(N'2010-05-15' AS Date), CAST(N'2004-07-21' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (94, CAST(N'2019-07-23' AS Date), CAST(N'2018-04-13' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (95, CAST(N'2014-02-27' AS Date), CAST(N'2017-10-04' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (96, CAST(N'2012-03-22' AS Date), CAST(N'2019-04-06' AS Date), 3)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (97, CAST(N'2018-08-29' AS Date), CAST(N'2006-02-05' AS Date), 1)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (98, CAST(N'2012-04-15' AS Date), CAST(N'2003-11-23' AS Date), 2)
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (99, CAST(N'2006-10-05' AS Date), CAST(N'2011-07-19' AS Date), 2)
GO
INSERT [dbo].[DriverLisence] ([IdDrivingLisence], [DateOfReceipt], [DateExpiry], [LisenceStatusId]) VALUES (100, CAST(N'2017-01-13' AS Date), CAST(N'2019-06-23' AS Date), 2)
SET IDENTITY_INSERT [dbo].[DriverLisence] OFF
SET IDENTITY_INSERT [dbo].[DriverTransportVehicle] ON 

INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (1, 82, 19, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (2, 18, 45, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (3, 31, 80, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (4, 26, 78, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (5, 25, 15, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (6, 82, 74, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (7, 7, 19, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (8, 36, 40, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (9, 39, 76, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (10, 63, 5, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (11, 68, 66, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (12, 37, 100, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (13, 41, 75, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (14, 66, 88, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (15, 82, 44, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (16, 53, 99, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (17, 95, 9, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (18, 5, 52, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (19, 86, 81, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (20, 93, 62, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (21, 34, 93, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (22, 10, 20, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (23, 74, 92, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (24, 1, 1, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (25, 30, 24, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (26, 72, 8, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (27, 6, 97, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (28, 49, 100, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (29, 98, 90, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (30, 20, 53, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (31, 56, 37, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (32, 35, 65, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (33, 41, 64, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (34, 60, 66, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (35, 10, 47, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (36, 68, 64, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (37, 39, 65, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (38, 62, 86, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (39, 34, 25, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (40, 61, 47, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (41, 26, 14, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (42, 60, 90, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (43, 46, 22, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (44, 65, 71, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (45, 38, 78, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (46, 58, 98, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (47, 95, 56, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (48, 72, 21, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (49, 66, 77, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (50, 45, 31, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (51, 15, 1, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (52, 43, 72, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (53, 50, 86, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (54, 64, 53, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (55, 36, 33, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (56, 92, 92, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (57, 3, 24, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (58, 77, 93, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (59, 5, 43, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (60, 93, 39, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (61, 53, 39, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (62, 8, 16, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (63, 37, 48, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (64, 98, 16, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (65, 2, 3, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (66, 91, 83, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (67, 87, 51, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (68, 2, 45, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (69, 69, 96, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (70, 38, 63, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (71, 35, 75, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (72, 9, 92, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (73, 66, 84, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (74, 57, 78, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (75, 72, 83, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (76, 14, 28, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (77, 38, 1, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (78, 79, 59, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (79, 39, 52, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (80, 50, 25, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (81, 26, 59, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (82, 89, 95, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (83, 96, 45, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (84, 18, 28, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (85, 79, 19, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (86, 52, 21, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (87, 28, 85, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (88, 74, 33, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (89, 56, 3, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (90, 77, 32, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (91, 37, 70, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (92, 19, 27, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (93, 64, 28, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (94, 96, 21, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (95, 87, 40, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (96, 80, 84, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (97, 80, 51, 2)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (98, 92, 15, 1)
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (99, 22, 88, 1)
GO
INSERT [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle], [DriverId], [TransportVehicleId], [TypeOfOwnerShipId]) VALUES (100, 28, 78, 2)
SET IDENTITY_INSERT [dbo].[DriverTransportVehicle] OFF
SET IDENTITY_INSERT [dbo].[Engine] ON 

INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (1, 426, 87, CAST(N'2007-09-24' AS Date))
INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (2, 438, 137, CAST(N'2007-02-17' AS Date))
INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (3, 439, 31, CAST(N'2006-11-13' AS Date))
INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (4, 20, 119, CAST(N'2006-12-16' AS Date))
INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (5, 77, 90, CAST(N'2001-09-09' AS Date))
INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (6, 155, 57, CAST(N'2015-01-28' AS Date))
INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (7, 181, 51, CAST(N'2009-07-16' AS Date))
INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (8, 538, 14, CAST(N'2006-12-14' AS Date))
INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (9, 366, 106, CAST(N'2006-09-22' AS Date))
INSERT [dbo].[Engine] ([IdEngine], [Power], [Capacity], [YearOfManufacture]) VALUES (10, 540, 65, CAST(N'2005-12-03' AS Date))
SET IDENTITY_INSERT [dbo].[Engine] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([IdGender], [NameGender]) VALUES (1, N'Мужчина')
INSERT [dbo].[Gender] ([IdGender], [NameGender]) VALUES (2, N'Женщина')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Insurance] ON 

INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (1, CAST(N'2011-11-18' AS Date), CAST(N'2010-07-26' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (2, CAST(N'2020-08-18' AS Date), CAST(N'2013-09-24' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (3, CAST(N'2014-06-30' AS Date), CAST(N'2019-11-06' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (4, CAST(N'2008-05-25' AS Date), CAST(N'2004-04-16' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (5, CAST(N'2007-03-10' AS Date), CAST(N'2005-11-09' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (6, CAST(N'2016-10-05' AS Date), CAST(N'2018-04-10' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (7, CAST(N'2000-10-09' AS Date), CAST(N'2014-04-28' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (8, CAST(N'2014-08-09' AS Date), CAST(N'2015-05-04' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (9, CAST(N'2014-03-19' AS Date), CAST(N'2004-06-09' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (10, CAST(N'2005-05-06' AS Date), CAST(N'2006-06-27' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (11, CAST(N'2015-07-29' AS Date), CAST(N'2011-11-24' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (12, CAST(N'2013-11-23' AS Date), CAST(N'2019-12-30' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (13, CAST(N'2003-08-31' AS Date), CAST(N'2016-11-24' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (14, CAST(N'2020-02-04' AS Date), CAST(N'2008-02-13' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (15, CAST(N'2018-10-14' AS Date), CAST(N'2019-12-06' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (16, CAST(N'2004-11-29' AS Date), CAST(N'2014-03-26' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (17, CAST(N'2009-02-27' AS Date), CAST(N'2013-03-28' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (18, CAST(N'2004-08-11' AS Date), CAST(N'2003-10-13' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (19, CAST(N'2015-01-09' AS Date), CAST(N'2003-11-09' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (20, CAST(N'2007-01-29' AS Date), CAST(N'2019-05-30' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (21, CAST(N'2009-11-09' AS Date), CAST(N'2004-02-11' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (22, CAST(N'2014-05-02' AS Date), CAST(N'2008-02-01' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (23, CAST(N'2006-10-01' AS Date), CAST(N'2009-01-10' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (24, CAST(N'2009-04-09' AS Date), CAST(N'2011-08-26' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (25, CAST(N'2010-01-22' AS Date), CAST(N'2003-10-24' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (26, CAST(N'2014-07-15' AS Date), CAST(N'2006-06-12' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (27, CAST(N'2015-05-16' AS Date), CAST(N'2011-02-05' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (28, CAST(N'2012-02-21' AS Date), CAST(N'2015-08-19' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (29, CAST(N'2007-07-30' AS Date), CAST(N'2003-01-18' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (30, CAST(N'2006-09-04' AS Date), CAST(N'2016-11-26' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (31, CAST(N'2020-02-06' AS Date), CAST(N'2009-07-27' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (32, CAST(N'2003-07-28' AS Date), CAST(N'2019-04-20' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (33, CAST(N'2012-12-08' AS Date), CAST(N'2004-02-26' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (34, CAST(N'2010-02-06' AS Date), CAST(N'2018-09-26' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (35, CAST(N'2017-06-27' AS Date), CAST(N'2014-05-20' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (36, CAST(N'2006-05-19' AS Date), CAST(N'2014-07-16' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (37, CAST(N'2009-02-03' AS Date), CAST(N'2018-11-20' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (38, CAST(N'2002-02-17' AS Date), CAST(N'2008-02-07' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (39, CAST(N'2016-12-07' AS Date), CAST(N'2018-12-15' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (40, CAST(N'2000-10-17' AS Date), CAST(N'2012-07-01' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (41, CAST(N'2003-10-06' AS Date), CAST(N'2010-12-29' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (42, CAST(N'2011-11-26' AS Date), CAST(N'2001-04-20' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (43, CAST(N'2008-08-27' AS Date), CAST(N'2011-08-21' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (44, CAST(N'2005-05-14' AS Date), CAST(N'2014-02-01' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (45, CAST(N'2016-12-21' AS Date), CAST(N'2014-05-04' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (46, CAST(N'2014-08-01' AS Date), CAST(N'2018-07-05' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (47, CAST(N'2012-06-21' AS Date), CAST(N'2007-01-13' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (48, CAST(N'2013-10-12' AS Date), CAST(N'2016-03-04' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (49, CAST(N'2001-12-18' AS Date), CAST(N'2015-05-10' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (50, CAST(N'2019-04-27' AS Date), CAST(N'2014-11-13' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (51, CAST(N'2005-07-11' AS Date), CAST(N'2014-01-22' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (52, CAST(N'2009-08-01' AS Date), CAST(N'2002-12-28' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (53, CAST(N'2004-03-04' AS Date), CAST(N'2003-10-04' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (54, CAST(N'2017-02-11' AS Date), CAST(N'2017-02-01' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (55, CAST(N'2014-07-03' AS Date), CAST(N'2013-12-21' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (56, CAST(N'2006-04-29' AS Date), CAST(N'2002-06-25' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (57, CAST(N'2009-05-25' AS Date), CAST(N'2002-04-28' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (58, CAST(N'2020-07-30' AS Date), CAST(N'2019-05-04' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (59, CAST(N'2009-11-08' AS Date), CAST(N'2006-03-01' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (60, CAST(N'2007-06-23' AS Date), CAST(N'2008-08-29' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (61, CAST(N'2019-08-26' AS Date), CAST(N'2008-07-08' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (62, CAST(N'2012-03-13' AS Date), CAST(N'2016-09-17' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (63, CAST(N'2010-11-30' AS Date), CAST(N'2008-06-27' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (64, CAST(N'2004-09-08' AS Date), CAST(N'2012-10-08' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (65, CAST(N'2008-07-23' AS Date), CAST(N'2005-04-03' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (66, CAST(N'2004-03-21' AS Date), CAST(N'2005-10-13' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (67, CAST(N'2010-08-12' AS Date), CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (68, CAST(N'2001-07-21' AS Date), CAST(N'2007-01-18' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (69, CAST(N'2006-01-09' AS Date), CAST(N'2016-01-23' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (70, CAST(N'2012-07-23' AS Date), CAST(N'2003-04-07' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (71, CAST(N'2007-05-29' AS Date), CAST(N'2009-02-28' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (72, CAST(N'2003-08-27' AS Date), CAST(N'2014-09-12' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (73, CAST(N'2013-05-07' AS Date), CAST(N'2019-02-15' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (74, CAST(N'2009-11-23' AS Date), CAST(N'2011-07-14' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (75, CAST(N'2016-11-12' AS Date), CAST(N'2018-03-17' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (76, CAST(N'2008-03-04' AS Date), CAST(N'2017-09-02' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (77, CAST(N'2012-03-16' AS Date), CAST(N'2007-03-03' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (78, CAST(N'2010-09-19' AS Date), CAST(N'2004-11-29' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (79, CAST(N'2007-06-13' AS Date), CAST(N'2016-04-13' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (80, CAST(N'2019-06-20' AS Date), CAST(N'2010-03-03' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (81, CAST(N'2014-06-04' AS Date), CAST(N'2013-08-24' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (82, CAST(N'2002-09-12' AS Date), CAST(N'2011-07-02' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (83, CAST(N'2003-12-04' AS Date), CAST(N'2012-06-01' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (84, CAST(N'2005-10-18' AS Date), CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (85, CAST(N'2011-03-23' AS Date), CAST(N'2003-09-30' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (86, CAST(N'2002-08-21' AS Date), CAST(N'2018-08-14' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (87, CAST(N'2020-03-11' AS Date), CAST(N'2012-04-25' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (88, CAST(N'2001-11-17' AS Date), CAST(N'2005-05-17' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (89, CAST(N'2005-09-25' AS Date), CAST(N'2013-08-04' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (90, CAST(N'2007-09-03' AS Date), CAST(N'2007-04-15' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (91, CAST(N'2011-11-10' AS Date), CAST(N'2016-08-13' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (92, CAST(N'2018-09-22' AS Date), CAST(N'2006-06-08' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (93, CAST(N'2018-05-22' AS Date), CAST(N'2006-03-22' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (94, CAST(N'2013-08-03' AS Date), CAST(N'2003-11-18' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (95, CAST(N'2010-10-11' AS Date), CAST(N'2008-04-17' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (96, CAST(N'2016-10-16' AS Date), CAST(N'2020-02-04' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (97, CAST(N'2009-04-29' AS Date), CAST(N'2005-03-03' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (98, CAST(N'2010-07-28' AS Date), CAST(N'2009-01-08' AS Date))
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (99, CAST(N'2011-04-30' AS Date), CAST(N'2016-10-20' AS Date))
GO
INSERT [dbo].[Insurance] ([IdInsurance], [DateOfReceipt], [DateExpiry]) VALUES (100, CAST(N'2011-09-20' AS Date), CAST(N'2013-04-25' AS Date))
SET IDENTITY_INSERT [dbo].[Insurance] OFF
SET IDENTITY_INSERT [dbo].[LicenceStatus] ON 

INSERT [dbo].[LicenceStatus] ([IdLisenceStatus], [NameLisenceStatus]) VALUES (1, N'Активная')
INSERT [dbo].[LicenceStatus] ([IdLisenceStatus], [NameLisenceStatus]) VALUES (2, N'Вышел срок')
INSERT [dbo].[LicenceStatus] ([IdLisenceStatus], [NameLisenceStatus]) VALUES (3, N'Лишена силы')
SET IDENTITY_INSERT [dbo].[LicenceStatus] OFF
SET IDENTITY_INSERT [dbo].[Office] ON 

INSERT [dbo].[Office] ([IdOffice], [NameOffice], [RegionId]) VALUES (1, N'Лубянка', 1)
INSERT [dbo].[Office] ([IdOffice], [NameOffice], [RegionId]) VALUES (2, N'Таганская', 1)
INSERT [dbo].[Office] ([IdOffice], [NameOffice], [RegionId]) VALUES (3, N'Выхино-Жулебино', 1)
SET IDENTITY_INSERT [dbo].[Office] OFF
SET IDENTITY_INSERT [dbo].[Officer] ON 

INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (1, N'Marguerite', N'Bremner', N'719-697-9364', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (2, N'Giacomo', N'Peppard', N'782-612-4075', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (3, N'Hugh', N'Harroll', N'532-642-0800', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (4, N'Graig', N'Buckbee', N'746-778-6912', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (5, N'Berti', N'Shotboulte', N'825-269-2428', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (6, N'Silvano', N'Seater', N'760-576-5785', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (7, N'Gale', N'Bowdidge', N'808-617-9345', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (8, N'Karina', N'Dominik', N'259-649-1608', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (9, N'Donnie', N'Schulz', N'369-726-4651', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (10, N'Leonora', N'Trobe', N'330-497-4631', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (11, N'Emlen', N'Robel', N'923-505-1314', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (12, N'Goldina', N'Huxter', N'609-739-2240', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (13, N'Fabe', N'Acott', N'127-839-4953', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (14, N'Zea', N'Benini', N'795-182-4802', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (15, N'Christin', N'Le Conte', N'679-569-5236', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (16, N'Zuzana', N'Olliar', N'726-822-8245', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (17, N'Francklyn', N'Vinker', N'161-515-1264', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (18, N'Chet', N'Burkinshaw', N'815-351-2096', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (19, N'Carlota', N'Ashburner', N'323-360-1271', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (20, N'Brittan', N'Warrick', N'866-677-5769', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (21, N'Giralda', N'Iiannone', N'141-823-7898', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (22, N'Olimpia', N'Doeg', N'705-263-2817', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (23, N'Olimpia', N'Tofpik', N'821-430-8812', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (24, N'Lacey', N'Pimbley', N'394-596-2325', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (25, N'Wesley', N'Kynaston', N'213-489-9955', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (26, N'Jaclyn', N'Scotford', N'818-683-2430', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (27, N'Si', N'Serginson', N'705-285-0589', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (28, N'Jada', N'McElwee', N'847-935-5557', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (29, N'King', N'Reucastle', N'202-833-1754', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (30, N'Corliss', N'Rizzone', N'299-185-9230', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (31, N'Anton', N'Meenan', N'300-852-3850', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (32, N'Gareth', N'Phelips', N'706-513-3684', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (33, N'Valera', N'Winscum', N'877-259-2224', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (34, N'Hunt', N'Greally', N'197-998-9770', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (35, N'Felicia', N'Dugmore', N'232-410-9595', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (36, N'Trixy', N'Jakoviljevic', N'223-575-5312', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (37, N'Delora', N'De Gregorio', N'479-978-9307', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (38, N'Ransell', N'Hucquart', N'292-106-9846', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (39, N'Lorenza', N'Harly', N'467-468-2052', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (40, N'Prinz', N'Frankes', N'674-109-9971', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (41, N'Jillian', N'Sunner', N'338-528-5260', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (42, N'Adolf', N'Huscroft', N'225-529-6316', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (43, N'Papagena', N'De Mico', N'989-656-6087', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (44, N'Giraud', N'Hellis', N'617-361-7275', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (45, N'Lorry', N'Raitie', N'621-460-3103', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (46, N'Emelen', N'Overal', N'586-734-9122', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (47, N'Derk', N'Honeywood', N'945-813-8621', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (48, N'Bernardo', N'Gellett', N'970-177-4889', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (49, N'Tomaso', N'Rout', N'840-455-3989', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (50, N'Dalton', N'Sanham', N'149-219-6216', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (51, N'Skylar', N'Bourke', N'694-202-0243', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (52, N'Gil', N'Hartzogs', N'993-738-6872', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (53, N'Rochelle', N'Astbery', N'654-825-8861', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (54, N'Barb', N'Goodenough', N'897-788-7813', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (55, N'Gabrila', N'Strick', N'803-465-2299', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (56, N'Frankie', N'Bricham', N'998-701-1754', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (57, N'Lucille', N'Peachey', N'382-266-6823', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (58, N'Joyce', N'O''Cannon', N'759-471-1771', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (59, N'Elly', N'Kyne', N'439-281-7490', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (60, N'Delilah', N'Depke', N'950-226-0659', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (61, N'Nathanil', N'Jodrellec', N'318-581-9362', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (62, N'Mavis', N'Venning', N'728-462-5470', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (63, N'Stewart', N'Mewe', N'689-334-3867', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (64, N'Anette', N'Gaylard', N'938-809-4572', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (65, N'Layne', N'Forte', N'206-575-9174', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (66, N'Coriss', N'Palfery', N'622-660-0457', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (67, N'Baillie', N'Sweatland', N'685-643-4889', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (68, N'Bran', N'Fordham', N'672-689-7121', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (69, N'Douglass', N'Sinkins', N'623-414-6308', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (70, N'Rhea', N'Lucien', N'170-953-3855', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (71, N'Arnold', N'Tampion', N'269-126-6067', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (72, N'Theodosia', N'Dmitriev', N'303-956-3972', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (73, N'Saunders', N'Blemen', N'691-957-9603', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (74, N'Chrisse', N'Cluatt', N'927-163-6563', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (75, N'Hyatt', N'Abys', N'891-615-4901', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (76, N'Perri', N'Southers', N'615-600-2272', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (77, N'Franklyn', N'Norcott', N'815-977-0637', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (78, N'Matthew', N'Tomlins', N'602-479-1797', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (79, N'Leonora', N'Brissenden', N'190-696-9363', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (80, N'Kylila', N'Caghan', N'493-269-4083', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (81, N'Carroll', N'McIntosh', N'733-912-3225', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (82, N'Dasya', N'Pleager', N'785-609-7158', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (83, N'Dietrich', N'Haulkham', N'686-737-3776', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (84, N'Randi', N'Doggett', N'742-872-0118', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (85, N'Keriann', N'Card', N'246-120-3683', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (86, N'Lulu', N'Kirkebye', N'696-728-3813', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (87, N'Astra', N'Coil', N'497-214-7806', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (88, N'Rustie', N'Bavridge', N'361-437-6231', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (89, N'Nanice', N'McMarquis', N'152-495-6454', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (90, N'Melloney', N'Quince', N'823-974-9715', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (91, N'Lacie', N'Bemand', N'411-739-1078', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (92, N'Aryn', N'Dudmarsh', N'530-821-3398', 1, 2)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (93, N'Fifine', N'Aish', N'188-342-7339', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (94, N'Rayner', N'Yu', N'678-771-8079', 1, 1)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (95, N'Gwynne', N'Muncer', N'482-424-8583', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (96, N'Freddie', N'Rountree', N'322-712-6257', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (97, N'Koralle', N'Surtees', N'332-268-9685', 1, 4)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (98, N'Harmonia', N'Domek', N'943-937-4446', 1, 3)
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (99, N'Kay', N'Oneill', N'321-763-0232', 1, 3)
GO
INSERT [dbo].[Officer] ([IdOfficer], [FirstName], [LastName], [PhoneNumber], [OfficeId], [PositionId]) VALUES (100, N'Roze', N'McSporrin', N'794-861-5118', 1, 4)
SET IDENTITY_INSERT [dbo].[Officer] OFF
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([IdRegion], [NameRegion]) VALUES (1, N'Москва')
INSERT [dbo].[Region] ([IdRegion], [NameRegion]) VALUES (2, N'Санкт-Петербург')
INSERT [dbo].[Region] ([IdRegion], [NameRegion]) VALUES (3, N'Тула')
INSERT [dbo].[Region] ([IdRegion], [NameRegion]) VALUES (4, N'Александров')
INSERT [dbo].[Region] ([IdRegion], [NameRegion]) VALUES (5, N'Чувашия')
INSERT [dbo].[Region] ([IdRegion], [NameRegion]) VALUES (6, N'Владивосток')
INSERT [dbo].[Region] ([IdRegion], [NameRegion]) VALUES (7, N'Екатеринбург')
SET IDENTITY_INSERT [dbo].[Region] OFF
SET IDENTITY_INSERT [dbo].[TransportVehicle] ON 

INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (1, N'2C4RDGEG7DR584435', 4, 56, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (2, N'3C63D3NL8CG568963', 3, 24, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (3, N'2FMDK3GC1BB195033', 4, 74, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (4, N'5TDBKRFH7FS562374', 1, 87, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (5, N'1FMCU0C78BK224515', 5, 13, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (6, N'WAUMFAFL3BN549296', 1, 76, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (7, N'3LN6L2G92DR543806', 2, 21, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (8, N'5UXZV4C51CL518661', 1, 86, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (9, N'WBSBL93464P517120', 2, 17, 4, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (10, N'WAUEF98E66A039300', 1, 19, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (11, N'WBALM7C5XEE260351', 4, 16, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (12, N'KNDMG4C73B6932335', 3, 5, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (13, N'1G4HF5EM6AU597736', 3, 11, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (14, N'5FRYD3H61GB464197', 1, 12, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (15, N'WAUHE78P88A476787', 2, 55, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (16, N'5YMGY0C5XDL751505', 4, 62, 2, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (17, N'1GYS4KEF4BR315205', 3, 67, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (18, N'WAUMK78KX9A603049', 1, 14, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (19, N'NM0KS9BN3DT164909', 5, 58, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (20, N'WBANV13568B550353', 3, 62, 2, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (21, N'2T1KU4EE5CC785392', 4, 22, 2, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (22, N'5UXKU6C5XF0403224', 3, 31, 4, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (23, N'2C4RDGAG4CR695061', 4, 16, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (24, N'19UUA66217A437070', 4, 61, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (25, N'JM3TB2BA0C0201577', 3, 2, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (26, N'1GYUKFEJ0AR976934', 2, 20, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (27, N'SALWG2WF1EA811202', 3, 26, 4, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (28, N'1G6AE5SX2D0978442', 1, 27, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (29, N'JTDKN3DU8F0483481', 4, 14, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (30, N'WBAPM775X9N475925', 4, 50, 2, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (31, N'5LMCJ1A95FU138964', 5, 3, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (32, N'3C63DRKL3CG751064', 5, 47, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (33, N'WAUJC58E53A034441', 2, 55, 4, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (34, N'WP0CA2A85BU631963', 3, 80, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (35, N'YV126MFB6F2460889', 4, 29, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (36, N'1GYS3BEF0DR679675', 1, 95, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (37, N'WBA5A7C51FG339091', 2, 49, 2, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (38, N'1N6AA0CC3AN705996', 5, 78, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (39, N'WBA3A5C52DF022175', 1, 47, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (40, N'5BZBF0AA5FN938764', 5, 36, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (41, N'WAUEF98E17A703682', 2, 75, 2, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (42, N'1G4GL5G30DF916310', 4, 35, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (43, N'1N6BF0KL5FN895699', 5, 41, 2, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (44, N'WBAYB6C5XFD861028', 3, 2, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (45, N'5NMSG3AB4AH262577', 4, 59, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (46, N'2G61V5S84F9529491', 1, 41, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (47, N'19UYA42583A605450', 2, 37, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (48, N'WUARL48HX5K348192', 1, 66, 2, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (49, N'SCFAB01A46G334121', 2, 26, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (50, N'2C3CDXCT5FH318625', 2, 97, 4, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (51, N'WBAVD13546K700511', 4, 51, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (52, N'JTEBU5JR3E5649918', 3, 56, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (53, N'JN8AZ1MU6DW763385', 5, 41, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (54, N'WA1LMAFEXBD983060', 4, 95, 4, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (55, N'1G6AG5RX9D0543837', 1, 46, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (56, N'3C3CFFER7FT404886', 4, 68, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (57, N'1G6DV1EPXD0202139', 3, 51, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (58, N'WBADN63471G997413', 1, 27, 2, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (59, N'5N1BA0ND5FN104007', 1, 4, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (60, N'JTDJTUD39ED066859', 3, 42, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (61, N'JTDBT4K30C1314731', 5, 47, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (62, N'1N4AL3AP1EC826294', 1, 8, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (63, N'KMHGH4JH0FU010804', 2, 75, 1, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (64, N'2HNYD18706H834606', 5, 71, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (65, N'5GAKVCED0CJ377709', 2, 92, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (66, N'2T1BU4EE1DC101665', 3, 92, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (67, N'3N1CN7AP2FL405178', 1, 7, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (68, N'TRUTX28N521577078', 3, 84, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (69, N'3GYFNAE36ES063375', 4, 32, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (70, N'1FTSW3A50AE011388', 3, 68, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (71, N'2G4GL5EX5F9746754', 4, 75, 4, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (72, N'SAJWJ0FFXF8692119', 2, 78, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (73, N'JH4CU2F62DC023534', 1, 85, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (74, N'1G6AA1RX7F0409695', 3, 98, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (75, N'3N1CN7AP3EK952402', 5, 85, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (76, N'WA1DGAFP1FA581531', 4, 91, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (77, N'5GAEV23D29J829968', 2, 68, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (78, N'KMHTC6AD1EU249489', 2, 47, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (79, N'5TDDCRFH1ES771047', 5, 16, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (80, N'WBANV1C52AC329588', 5, 75, 1, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (81, N'3GYFNGE35CS388096', 5, 23, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (82, N'1G6AM5S32E0947287', 2, 23, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (83, N'WBAUP735X8V228435', 2, 57, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (84, N'1G6DL5E34C0320339', 5, 69, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (85, N'2G61R5S35F9065488', 2, 44, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (86, N'WBAUL7C59DV997563', 2, 74, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (87, N'1FTWX3B53AE437573', 4, 44, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (88, N'1G4GG5G36CF282455', 4, 12, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (89, N'WAUJT54B02N602341', 3, 5, 5, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (90, N'1D4RD4GG3BC255901', 4, 97, 3, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (91, N'KMHCT4AE1EU076764', 2, 68, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (92, N'SCBZK25E12C091785', 5, 82, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (93, N'SCBGR3ZA6CC037304', 4, 92, 5, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (94, N'WAUAFAFH6EN153897', 2, 93, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (95, N'1D7RB1CP0BS646412', 4, 30, 4, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (96, N'1FTWW3B50AE436724', 2, 53, 2, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (97, N'1G6DP8ED6B0482762', 5, 42, 1, 1)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (98, N'WAUDF98E58A814345', 1, 54, 3, 2)
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (99, N'1G6AY5S30E0479001', 2, 60, 4, 1)
GO
INSERT [dbo].[TransportVehicle] ([IdTransportVehicle], [VIN], [EngineId], [ColorId], [TypeOfTransportVehicle], [InsuranceId]) VALUES (100, N'1D7RB1GK9BS300728', 4, 58, 3, 2)
SET IDENTITY_INSERT [dbo].[TransportVehicle] OFF
SET IDENTITY_INSERT [dbo].[TypeOfOwnerShip] ON 

INSERT [dbo].[TypeOfOwnerShip] ([IdTypeOfOwnerShip], [NameType]) VALUES (1, N'Владелец')
INSERT [dbo].[TypeOfOwnerShip] ([IdTypeOfOwnerShip], [NameType]) VALUES (2, N'Доверенность')
SET IDENTITY_INSERT [dbo].[TypeOfOwnerShip] OFF
SET IDENTITY_INSERT [dbo].[TypeOfTransportVehicle] ON 

INSERT [dbo].[TypeOfTransportVehicle] ([IdTypeOfTransportVehicle], [NameTypeOfTransportVehicle]) VALUES (1, N'Легковая')
INSERT [dbo].[TypeOfTransportVehicle] ([IdTypeOfTransportVehicle], [NameTypeOfTransportVehicle]) VALUES (2, N'Грузовая')
INSERT [dbo].[TypeOfTransportVehicle] ([IdTypeOfTransportVehicle], [NameTypeOfTransportVehicle]) VALUES (3, N'Мотоцикл')
INSERT [dbo].[TypeOfTransportVehicle] ([IdTypeOfTransportVehicle], [NameTypeOfTransportVehicle]) VALUES (4, N'Внедорожник')
INSERT [dbo].[TypeOfTransportVehicle] ([IdTypeOfTransportVehicle], [NameTypeOfTransportVehicle]) VALUES (5, N'Тяжело грузовая')
SET IDENTITY_INSERT [dbo].[TypeOfTransportVehicle] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (1, N'askaid0@ow.ly', N'vJgj6NHR')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (2, N'ccrome1@cdc.gov', N'f9XwKpZUGe')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (3, N'fmceniry2@techcrunch.com', N'G6Hkeuq8')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (4, N'wstange3@buzzfeed.com', N'L1pipu4')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (5, N'zvondrach4@ustream.tv', N'WPz8wMSIfU')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (6, N'chaine5@nymag.com', N'EOwQv8pfj')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (7, N'mgoering6@ning.com', N'Rdv8aMHI')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (8, N'adisney7@booking.com', N'3LnuF7IBG8i')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (9, N'kkelson8@qq.com', N'mWaS14tcdesM')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (10, N'kconor9@sitemeter.com', N'NRF7kv')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (11, N'tglassarda@jigsy.com', N'YrLsmzogA')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (12, N'gchalfainb@mozilla.com', N'CckMrHe')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (13, N'rcoopeyc@mapy.cz', N'xSYfBelLR')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (14, N'cpenningsd@boston.com', N'bTKMBZLX')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (15, N'rsigginse@odnoklassniki.ru', N'abTtgiqC58')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (16, N'ksummonsf@mashable.com', N'zzOZcVWilFA5')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (17, N'dmalliag@ibm.com', N'qW1n49')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (18, N'mivatth@amazonaws.com', N'KKBBQx')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (19, N'cpigoti@devhub.com', N'nSUyaes')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (20, N'jsweetlovej@bloglines.com', N'rx5PxFxdhG5')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (21, N'ygoldsbyk@sogou.com', N'gLigmeL')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (22, N'cgodmarl@opensource.org', N'9dIDbpmnhbd')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (23, N'cmarryattm@comcast.net', N'BghiEjzI')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (24, N'esollimen@webmd.com', N'CX71FqS3Eks')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (25, N'taughtieo@wikia.com', N'ZsZgMpt3')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (26, N'lvanleeuwenp@twitter.com', N'DbV9dUkP')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (27, N'cellseq@gmpg.org', N'IQBqhTfw0iWy')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (28, N'fborrier@paginegialle.it', N'JjJUEtaZhUV')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (29, N'smcatamneys@flickr.com', N'EoV1eN15')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (30, N'rmcardt@msn.com', N'VEdeitJWxJhw')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (31, N'vbrisardu@weebly.com', N'9OVDZmrhO8pr')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (32, N'cbourdisv@ovh.net', N'yIZb5ZrZxO2')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (33, N'lcraigw@ebay.com', N'NiC8Go7PBRHL')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (34, N'tmcculloughx@wix.com', N'RB5RKe')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (35, N'pbuckey@nydailynews.com', N'qYCj2fkb')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (36, N'jyurocjkinz@china.com.cn', N'eGK6uLGEb')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (37, N'bbrabyn10@epa.gov', N'IADyyHVMwiM')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (38, N'bcluett11@github.com', N'YfuGyDmZcbRq')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (39, N'sjimes12@google.com.au', N'GjkpRc')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (40, N'mselwyn13@scientificamerican.com', N'lnX2Hasy')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (41, N'dkelcher14@webnode.com', N'9YsqHq')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (42, N'hbrookzie15@cnbc.com', N'jQ432c0UABR')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (43, N'clockner16@issuu.com', N'28KfcBAR')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (44, N'acorteis17@shinystat.com', N'JdbWhGAgec')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (45, N'pvittery18@cafepress.com', N'TOwRMoXsF2j')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (46, N'dgrealey19@archive.org', N'DGaKiz')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (47, N'ovalentin1a@naver.com', N'QdLOHUn9rhQI')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (48, N'tpantry1b@sphinn.com', N'bzVCOG5OegFi')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (49, N'nanning1c@ed.gov', N'2suRpE')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (50, N'ihubbucks1d@yellowbook.com', N'QUxclLM')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (51, N'mcashin1e@1688.com', N'4QSOUPcHkH')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (52, N'apuden1f@photobucket.com', N'MLZ55ytBjFl')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (53, N'lutton1g@chicagotribune.com', N'ST4AHK6eQq0')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (54, N'cdingley1h@delicious.com', N'TOeoftmj4UNw')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (55, N'nhunting1i@purevolume.com', N'uFsGW2cd')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (56, N'wbyer1j@nyu.edu', N'OuTIKdExo2y')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (57, N'ashallcross1k@istockphoto.com', N'1FtDymeA4v6')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (58, N'hsugden1l@nytimes.com', N'0w2r5N8g')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (59, N'njerzyk1m@simplemachines.org', N'eT7G4ra61')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (60, N'iskelington1n@marriott.com', N'IhD0YT')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (61, N'vbellenie1o@google.fr', N'8z9V1N0qL5')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (62, N'bschoenrock1p@engadget.com', N'c5Yh2sGoFl')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (63, N'rgrisard1q@t-online.de', N'IQByGJ8Gy')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (64, N'rmartinon1r@spotify.com', N'NN13gqd74NN')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (65, N'dberrecloth1s@weebly.com', N'aKLFR311')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (66, N'aesplin1t@craigslist.org', N'QOIgMzf5OcAm')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (67, N'ltrotter1u@craigslist.org', N'sihrcgjVr')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (68, N'mgoforth1v@homestead.com', N'ryZjEb')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (69, N'rmanifold1w@slate.com', N'ZAfToYjh5NBm')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (70, N'dtreske1x@cafepress.com', N'3SVIiCl7G')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (71, N'aflewin1y@google.com.br', N'JBl58MlVvR14')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (72, N'wrickeard1z@bluehost.com', N'3nGO8w')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (73, N'nburker20@zimbio.com', N'6H1fDE2ZY')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (74, N'fsommers21@imdb.com', N'ygcAfnSouA')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (75, N'ggathercoal22@globo.com', N'gWv0aOUhYQNT')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (76, N'ajachimak23@ihg.com', N'JT46rifUB3')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (77, N'ppinkerton24@uiuc.edu', N'mm8nUCG')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (78, N'lpenwright25@goo.ne.jp', N'njjeSdZ')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (79, N'mogready26@techcrunch.com', N'6yZ9Cd')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (80, N'gwhoston27@ocn.ne.jp', N'KmiIueXw')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (81, N'mklugel28@exblog.jp', N'5gC5r5tqLSj')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (82, N'bmilne29@globo.com', N'RFrL9rkqAJTq')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (83, N'cmacnalley2a@irs.gov', N'oFYKCQI')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (84, N'dwagerfield2b@google.co.uk', N'R2XkArk')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (85, N'asiveter2c@comcast.net', N'urYwgyb')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (86, N'einsko2d@youtube.com', N'1ftPoNU')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (87, N'lbasten2e@cam.ac.uk', N'A9ZQwfTaBF')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (88, N'glammie2f@disqus.com', N'bv6JXSWsH')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (89, N'avasilischev2g@yolasite.com', N'wvsAZZbSH6hD')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (90, N'sklyn2h@chicagotribune.com', N'd8988Uee')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (91, N'lberringer2i@google.ru', N'RYvaY7kVVg')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (92, N'ccorringham2j@newyorker.com', N'ZaR6MCDZ')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (93, N'uleedal2k@issuu.com', N'ZKyLYUX')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (94, N'breeken2l@gnu.org', N'ogRGjYXDZVK')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (95, N'tkenrat2m@usgs.gov', N'yO8ZZ8Ar94TR')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (96, N'mgosart2n@123-reg.co.uk', N'n3HOiAdpYcP')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (97, N'afairholme2o@blogspot.com', N'YkDZZqEP')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (98, N'mmelbert2p@google.com.br', N'KWOxnWI')
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (99, N'vcaplen2q@about.me', N'MkmKgCjDd')
GO
INSERT [dbo].[Users] ([IdUser], [Email], [Password]) VALUES (100, N'cclarridge2r@goo.gl', N'c4cWbmw')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_DriverLisence] FOREIGN KEY([DrivingLisenceId])
REFERENCES [dbo].[DriverLisence] ([IdDrivingLisence])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_DriverLisence]
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([IdGender])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Gender]
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([IdRegion])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Region]
GO
ALTER TABLE [dbo].[DriverLisence]  WITH CHECK ADD  CONSTRAINT [FK_DriverLisence_LicenceStatus] FOREIGN KEY([LisenceStatusId])
REFERENCES [dbo].[LicenceStatus] ([IdLisenceStatus])
GO
ALTER TABLE [dbo].[DriverLisence] CHECK CONSTRAINT [FK_DriverLisence_LicenceStatus]
GO
ALTER TABLE [dbo].[DriverTransportVehicle]  WITH CHECK ADD  CONSTRAINT [FK_DriverTransportVehicle_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Driver] ([IdDriver])
GO
ALTER TABLE [dbo].[DriverTransportVehicle] CHECK CONSTRAINT [FK_DriverTransportVehicle_Driver]
GO
ALTER TABLE [dbo].[DriverTransportVehicle]  WITH CHECK ADD  CONSTRAINT [FK_DriverTransportVehicle_TransportVehicle] FOREIGN KEY([TransportVehicleId])
REFERENCES [dbo].[TransportVehicle] ([IdTransportVehicle])
GO
ALTER TABLE [dbo].[DriverTransportVehicle] CHECK CONSTRAINT [FK_DriverTransportVehicle_TransportVehicle]
GO
ALTER TABLE [dbo].[DriverTransportVehicle]  WITH CHECK ADD  CONSTRAINT [FK_DriverTransportVehicle_TypeOfOwnerShip] FOREIGN KEY([TypeOfOwnerShipId])
REFERENCES [dbo].[TypeOfOwnerShip] ([IdTypeOfOwnerShip])
GO
ALTER TABLE [dbo].[DriverTransportVehicle] CHECK CONSTRAINT [FK_DriverTransportVehicle_TypeOfOwnerShip]
GO
ALTER TABLE [dbo].[Office]  WITH CHECK ADD  CONSTRAINT [FK_Office_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([IdRegion])
GO
ALTER TABLE [dbo].[Office] CHECK CONSTRAINT [FK_Office_Region]
GO
ALTER TABLE [dbo].[Officer]  WITH CHECK ADD  CONSTRAINT [FK_Officer_Office] FOREIGN KEY([OfficeId])
REFERENCES [dbo].[Office] ([IdOffice])
GO
ALTER TABLE [dbo].[Officer] CHECK CONSTRAINT [FK_Officer_Office]
GO
ALTER TABLE [dbo].[Officer]  WITH CHECK ADD  CONSTRAINT [FK_Officer_Users] FOREIGN KEY([IdOfficer])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[Officer] CHECK CONSTRAINT [FK_Officer_Users]
GO
ALTER TABLE [dbo].[Protocol]  WITH CHECK ADD  CONSTRAINT [FK_Protocol_DriverTransportVehicle] FOREIGN KEY([DriverTransportVihicleId])
REFERENCES [dbo].[DriverTransportVehicle] ([IdDriverTransportVehicle])
GO
ALTER TABLE [dbo].[Protocol] CHECK CONSTRAINT [FK_Protocol_DriverTransportVehicle]
GO
ALTER TABLE [dbo].[Protocol]  WITH CHECK ADD  CONSTRAINT [FK_Protocol_Officer] FOREIGN KEY([OfficerId])
REFERENCES [dbo].[Officer] ([IdOfficer])
GO
ALTER TABLE [dbo].[Protocol] CHECK CONSTRAINT [FK_Protocol_Officer]
GO
ALTER TABLE [dbo].[TransportVehicle]  WITH CHECK ADD  CONSTRAINT [FK_TransportVehicle_Color] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Color] ([IdColor])
GO
ALTER TABLE [dbo].[TransportVehicle] CHECK CONSTRAINT [FK_TransportVehicle_Color]
GO
ALTER TABLE [dbo].[TransportVehicle]  WITH CHECK ADD  CONSTRAINT [FK_TransportVehicle_Engine] FOREIGN KEY([EngineId])
REFERENCES [dbo].[Engine] ([IdEngine])
GO
ALTER TABLE [dbo].[TransportVehicle] CHECK CONSTRAINT [FK_TransportVehicle_Engine]
GO
ALTER TABLE [dbo].[TransportVehicle]  WITH CHECK ADD  CONSTRAINT [FK_TransportVehicle_Insurance] FOREIGN KEY([InsuranceId])
REFERENCES [dbo].[Insurance] ([IdInsurance])
GO
ALTER TABLE [dbo].[TransportVehicle] CHECK CONSTRAINT [FK_TransportVehicle_Insurance]
GO
ALTER TABLE [dbo].[TransportVehicle]  WITH CHECK ADD  CONSTRAINT [FK_TransportVehicle_TypeOfTransportVehicle] FOREIGN KEY([TypeOfTransportVehicle])
REFERENCES [dbo].[TypeOfTransportVehicle] ([IdTypeOfTransportVehicle])
GO
ALTER TABLE [dbo].[TransportVehicle] CHECK CONSTRAINT [FK_TransportVehicle_TypeOfTransportVehicle]
GO
USE [master]
GO
ALTER DATABASE [GAI] SET  READ_WRITE 
GO
