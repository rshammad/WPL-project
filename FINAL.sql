USE [master]
GO
/****** Object:  Database [db_ManagementSystem]    Script Date: 12/19/2019 11:51:45 PM ******/
CREATE DATABASE [db_ManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_ManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\db_ManagementSystem.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_ManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\db_ManagementSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_ManagementSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_ManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_ManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_ManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_ManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_ManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_ManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_ManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [db_ManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_ManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_ManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_ManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [db_ManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [db_ManagementSystem]
GO
/****** Object:  Table [dbo].[tblADMIN]    Script Date: 12/19/2019 11:51:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblADMIN](
	[Role] [int] NOT NULL,
	[ID] [int] NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblADMIN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 12/19/2019 11:51:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[Employee_Number] [int] NOT NULL,
	[Employee_Name] [varchar](50) NOT NULL,
	[Role] [int] NOT NULL,
	[Current_Project] [varchar](50) NOT NULL,
	[Current_Department] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[Employee_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEmployeeMaster]    Script Date: 12/19/2019 11:51:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmployeeMaster](
	[Employee_number] [int] NOT NULL,
	[Employee_Name] [varchar](50) NOT NULL,
	[Role] [int] NOT NULL,
	[Work_Experience] [varchar](50) NOT NULL,
	[Current_Project] [varchar](50) NOT NULL,
	[Current_Location] [varchar](50) NOT NULL,
	[Transfer_Project] [varchar](50) NOT NULL,
	[Transfer_Location] [varchar](50) NOT NULL,
	[Current_Department] [varchar](50) NOT NULL,
	[Transfer_Department] [varchar](50) NOT NULL,
	[Transfer_Relieving_Date] [varchar](50) NOT NULL,
	[Transfer_Joining_Date] [varchar](50) NOT NULL,
	[Reporting_Manager] [varchar](50) NOT NULL,
	[Approved] [varchar](50) NULL,
 CONSTRAINT [PK_tblEmployeeMaster] PRIMARY KEY CLUSTERED 
(
	[Employee_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [db_ManagementSystem] SET  READ_WRITE 
GO
