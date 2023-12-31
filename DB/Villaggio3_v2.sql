USE [master]
GO
/****** Object:  Database [Villaggio3]    Script Date: 13/06/2023 21:06:15 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Villaggio3')
BEGIN
CREATE DATABASE [Villaggio3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Villaggio3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Villaggio3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Villaggio3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Villaggio3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
END
GO
ALTER DATABASE [Villaggio3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Villaggio3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Villaggio3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Villaggio3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Villaggio3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Villaggio3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Villaggio3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Villaggio3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Villaggio3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Villaggio3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Villaggio3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Villaggio3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Villaggio3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Villaggio3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Villaggio3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Villaggio3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Villaggio3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Villaggio3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Villaggio3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Villaggio3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Villaggio3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Villaggio3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Villaggio3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Villaggio3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Villaggio3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Villaggio3] SET  MULTI_USER 
GO
ALTER DATABASE [Villaggio3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Villaggio3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Villaggio3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Villaggio3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Villaggio3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Villaggio3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Villaggio3] SET QUERY_STORE = OFF
GO
USE [Villaggio3]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 13/06/2023 21:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contacts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contacts](
	[Name] [nchar](50) NOT NULL,
	[Email_address] [nchar](50) NOT NULL,
	[Message] [nchar](255) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Esperienze]    Script Date: 13/06/2023 21:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Esperienze]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Esperienze](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Event_type] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Max_places] [int] NOT NULL,
	[Price_per_person] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Esperienze] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[User]    Script Date: 13/06/2023 21:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[CF] [nvarchar](15) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[email_cliente] [nvarchar](50) NOT NULL,
	[IdentityRole] [int] NOT NULL,
	[Number_places] [int] NOT NULL,
	[Start_date] [date] NOT NULL,
	[End_date] [date] NOT NULL,
	[id_esperienza] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Esperienze] ON 

INSERT [dbo].[Esperienze] ([id], [Name], [Event_type], [Description], [Max_places], [Price_per_person]) VALUES (2, N'Avventura', N'Equitazione e Kayak', N'Splendida occasione per provare nuove esperienze! I nostri istruttori di equitazione ti accompagneranno fino in riva al fiume dove potrai poi provare il brivido di scendere fino a valle in kayak. Adatto a persone che amano provare emozioni forti.', 50, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Esperienze] ([id], [Name], [Event_type], [Description], [Max_places], [Price_per_person]) VALUES (3, N'Relax', N'Piscina e Massaggi', N'Sei in cerca della vacanza che ti rigeneri? Questa è la scelta giusta per te! La nostra piscina riscaldata ti coccolerà ed il nostro staff massaggi si prenderà cura del tuo benessere.', 50, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Esperienze] ([id], [Name], [Event_type], [Description], [Max_places], [Price_per_person]) VALUES (4, N'Fun', N'Disco e OpenBar', N'Per te che vuoi divertirti tutta la notte! I migliori dj si alterneranno in console per tutta la notte, mentre potrai gustare ottimi cocktails presso il nostro bar. Su le maniii.', 300, CAST(50.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Esperienze] OFF
GO
USE [master]
GO
ALTER DATABASE [Villaggio3] SET  READ_WRITE 
GO
