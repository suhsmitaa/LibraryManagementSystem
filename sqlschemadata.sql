USE [master]
GO
/****** Object:  Database [LMS]    Script Date: 11/14/2019 10:49:39 AM ******/
CREATE DATABASE [LMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LMS', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LMS.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LMS_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LMS_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LMS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [LMS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LMS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LMS] SET  MULTI_USER 
GO
ALTER DATABASE [LMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LMS]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 11/14/2019 10:49:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password_admin] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[book]    Script Date: 11/14/2019 10:49:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[book](
	[bookID] [int] IDENTITY(1,1) NOT NULL,
	[bookTitle] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[author] [varchar](50) NULL,
	[edition] [varchar](50) NULL,
	[volume] [int] NULL,
	[ean_code] [int] NULL,
	[price] [int] NULL,
	[booklanguage] [varchar](50) NULL,
	[bookdescription] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[bookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[history]    Script Date: 11/14/2019 10:49:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[history](
	[history_id] [int] IDENTITY(1,1) NOT NULL,
	[student_name] [varchar](50) NULL,
	[book_name] [varchar](50) NULL,
	[issue_date] [date] NULL,
	[renewed_date] [date] NULL,
	[return_date] [date] NULL,
	[Description_student] [varchar](50) NULL,
	[status_student] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[history_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 11/14/2019 10:49:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[admission_number] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[student_grade] [varchar](50) NULL,
	[student_section] [char](1) NULL,
	[student_status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([admin_id], [username], [password_admin]) VALUES (1, N'jack', N'jack123')
INSERT [dbo].[admin] ([admin_id], [username], [password_admin]) VALUES (2, N'mike', N'mike123')
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[book] ON 

INSERT [dbo].[book] ([bookID], [bookTitle], [category], [author], [edition], [volume], [ean_code], [price], [booklanguage], [bookdescription]) VALUES (1, N'herculus', N'cartoon', N'the great sushmita', N'23sca', 2, 34534, 200, N'english', N'bed time story')
INSERT [dbo].[book] ([bookID], [bookTitle], [category], [author], [edition], [volume], [ean_code], [price], [booklanguage], [bookdescription]) VALUES (2, N'malala', N'life story', N'dr strange', N'e2a3', 1, 123232145, 400, N'urdu', N'real story')
INSERT [dbo].[book] ([bookID], [bookTitle], [category], [author], [edition], [volume], [ean_code], [price], [booklanguage], [bookdescription]) VALUES (3, N'aladin', N'love story', N'Jhon', N'234wsa', 2, 23432454, 100, N'english', N'love saga of aladin and jasmine')
INSERT [dbo].[book] ([bookID], [bookTitle], [category], [author], [edition], [volume], [ean_code], [price], [booklanguage], [bookdescription]) VALUES (4, N'alphabet', N'kindergarden', N'teacher', N'234eds', 2, 1284893, 100, N'english', N'nursery book')
INSERT [dbo].[book] ([bookID], [bookTitle], [category], [author], [edition], [volume], [ean_code], [price], [booklanguage], [bookdescription]) VALUES (1002, N'physics computation', N'physics', N'dr.strnage', N'34cds', 2, 2123221, 200, N'english', N'physics theory')
INSERT [dbo].[book] ([bookID], [bookTitle], [category], [author], [edition], [volume], [ean_code], [price], [booklanguage], [bookdescription]) VALUES (1003, N'physics quantum', N'physics', N'dr.mahmood', N'esc23', 2, 3231, 100, N'urdu', N'defitnation of theory')
SET IDENTITY_INSERT [dbo].[book] OFF
SET IDENTITY_INSERT [dbo].[history] ON 

INSERT [dbo].[history] ([history_id], [student_name], [book_name], [issue_date], [renewed_date], [return_date], [Description_student], [status_student]) VALUES (5, N'sushmita', N'herculus', CAST(0x60400B00 AS Date), CAST(0x61400B00 AS Date), CAST(0x62400B00 AS Date), N'phone', N'pending')
INSERT [dbo].[history] ([history_id], [student_name], [book_name], [issue_date], [renewed_date], [return_date], [Description_student], [status_student]) VALUES (6, N'susshmita', N'herculus', CAST(0x56400B00 AS Date), CAST(0x58400B00 AS Date), CAST(0x65400B00 AS Date), N'87987669', N'Pending')
SET IDENTITY_INSERT [dbo].[history] OFF
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([student_id], [admission_number], [first_name], [last_name], [student_grade], [student_section], [student_status]) VALUES (1, N'c0766593', N'Sushmita', N'Chaurasia', N'A', N'B', N'Active')
INSERT [dbo].[student] ([student_id], [admission_number], [first_name], [last_name], [student_grade], [student_section], [student_status]) VALUES (2, N'c06655858', N'Alisha', N'Thaper', N'A', N'B', N'Active')
SET IDENTITY_INSERT [dbo].[student] OFF
USE [master]
GO
ALTER DATABASE [LMS] SET  READ_WRITE 
GO
