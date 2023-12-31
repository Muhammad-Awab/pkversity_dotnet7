USE [master]
GO
/****** Object:  Database [db_pkversity]    Script Date: 8/23/2023 5:59:12 PM ******/
CREATE DATABASE [db_pkversity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_pkversity', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\db_pkversity.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_pkversity_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\db_pkversity_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [db_pkversity] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_pkversity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_pkversity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_pkversity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_pkversity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_pkversity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_pkversity] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_pkversity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_pkversity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_pkversity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_pkversity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_pkversity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_pkversity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_pkversity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_pkversity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_pkversity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_pkversity] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_pkversity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_pkversity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_pkversity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_pkversity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_pkversity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_pkversity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_pkversity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_pkversity] SET RECOVERY FULL 
GO
ALTER DATABASE [db_pkversity] SET  MULTI_USER 
GO
ALTER DATABASE [db_pkversity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_pkversity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_pkversity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_pkversity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_pkversity] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_pkversity] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_pkversity', N'ON'
GO
ALTER DATABASE [db_pkversity] SET QUERY_STORE = ON
GO
ALTER DATABASE [db_pkversity] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [db_pkversity]
GO
/****** Object:  Table [dbo].[AcademicInfo]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicInfo](
	[AcademicId] [int] NULL,
	[DegreeName] [nvarchar](50) NULL,
	[ObtainedMarks] [nvarchar](50) NULL,
	[TotalMarks] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[SubjectGroups] [nvarchar](50) NULL,
	[Institute] [nvarchar](50) NULL,
	[Board/University] [nvarchar](50) NULL,
	[PassingYear] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApprovedBy]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovedBy](
	[ApprovedById] [int] IDENTITY(1,1) NOT NULL,
	[Approval] [nvarchar](50) NULL,
 CONSTRAINT [PK_ApprovedBys] PRIMARY KEY CLUSTERED 
(
	[ApprovedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[CityCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Citys] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eligibilities]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eligibilities](
	[EligibilityId] [int] IDENTITY(1,1) NOT NULL,
	[PassingDSGroups] [nvarchar](50) NULL,
	[ProgramDDId] [int] NULL,
	[ProgramDegreeDetailsId] [int] NULL,
	[Percentage] [int] NULL,
	[InstituteId] [int] NULL,
 CONSTRAINT [PK_Eligibilitys] PRIMARY KEY CLUSTERED 
(
	[EligibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExceptionHandelling]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExceptionHandelling](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NULL,
	[Exception] [nvarchar](500) NULL,
 CONSTRAINT [PK_ExceptionHandelling] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FutureScope]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FutureScope](
	[ProgramDegreeId] [int] NULL,
	[Description] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institutes]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institutes](
	[InstituteId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[admission_open_close] [bit] NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CreatedOn] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CityId] [int] NULL,
	[TypeOfId] [int] NULL,
	[Location] [nvarchar](50) NULL,
	[AdminId] [int] NULL,
 CONSTRAINT [PK_Institutes] PRIMARY KEY CLUSTERED 
(
	[InstituteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassingDegrees]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassingDegrees](
	[PassingDegreeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_PassingDegrees] PRIMARY KEY CLUSTERED 
(
	[PassingDegreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassingDSGroups]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassingDSGroups](
	[PassingDSGroupsId] [int] IDENTITY(1,1) NOT NULL,
	[PassingDSGroups] [nvarchar](60) NULL,
	[PassingDegreeId] [int] NULL,
 CONSTRAINT [PK_PassingDSGroups] PRIMARY KEY CLUSTERED 
(
	[PassingDSGroupsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramCategories]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramCategories](
	[ProgramCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProgramCatagorys] PRIMARY KEY CLUSTERED 
(
	[ProgramCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramDegreeDetails]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramDegreeDetails](
	[ProgramDegreeDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[Programs] [nvarchar](50) NULL,
	[Duration] [nvarchar](50) NULL,
	[TotalSemesters] [int] NULL,
	[Matric] [int] NULL,
	[FSC] [int] NULL,
	[BS] [int] NULL,
	[TotalFee] [nvarchar](50) NULL,
	[SemesterFee] [nvarchar](50) NULL,
	[ClosingMerit] [nvarchar](50) NULL,
	[ApprovedById] [nvarchar](50) NULL,
	[Morning] [bit] NULL,
	[Evening] [bit] NULL,
	[Weekened] [bit] NULL,
	[CityId] [int] NULL,
	[PassingDegreeGroups] [nvarchar](60) NULL,
	[ProgramDegreeId] [int] NULL,
	[InstituteId] [int] NULL,
 CONSTRAINT [PK_ProgramDegreeDetails] PRIMARY KEY CLUSTERED 
(
	[ProgramDegreeDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramDegrees]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramDegrees](
	[ProgramDegreeId] [int] IDENTITY(1,1) NOT NULL,
	[DegreeName] [nvarchar](50) NULL,
	[ProgramCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_ProgramDegrees] PRIMARY KEY CLUSTERED 
(
	[ProgramDegreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationFrom]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationFrom](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_RegistrationFrom] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StdFsc]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StdFsc](
	[SID] [int] NULL,
	[PassingDSGroup] [nvarchar](50) NULL,
	[Board_University] [nvarchar](50) NULL,
	[ObtainedMarks] [nvarchar](50) NULL,
	[TotalMarks] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[PassingYear] [nvarchar](50) NULL,
	[Institute] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StdMatric]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StdMatric](
	[SID] [int] NULL,
	[PassingDSGroup] [nvarchar](50) NULL,
	[Board_University] [nvarchar](50) NULL,
	[ObtainedMarks] [nvarchar](50) NULL,
	[TotalMarks] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[PassingYear] [nvarchar](50) NULL,
	[Institute] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentInfo]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInfo](
	[SID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[FatherName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[StdCnic] [nvarchar](50) NULL,
	[DateOfBirth] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[StdMobileNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectsId] [int] IDENTITY(1,1) NOT NULL,
	[SubCode] [nvarchar](50) NULL,
	[SubTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subjectss] PRIMARY KEY CLUSTERED 
(
	[SubjectsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfs]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfs](
	[TypeOfId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeOfs] PRIMARY KEY CLUSTERED 
(
	[TypeOfId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityId], [CityName], [CityCode]) VALUES (1, N'Islamabad', N'51')
INSERT [dbo].[Cities] ([CityId], [CityName], [CityCode]) VALUES (2, N'Rawalpindi', N'52')
INSERT [dbo].[Cities] ([CityId], [CityName], [CityCode]) VALUES (3, N'Karachi', N'32')
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[ExceptionHandelling] ON 

INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (1, CAST(N'2022-09-08T16:48:23.570' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.GetProgramDegreeDetailsByInstituteId(String InstituteId) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 77')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (2, CAST(N'2022-09-08T16:48:48.170' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.GetProgramDegreeDetailsByInstituteId(String InstituteId) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 77')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (3, CAST(N'2022-09-08T16:50:01.470' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.GetProgramDegreeDetailsByInstituteId(String InstituteId) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 77')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (4, CAST(N'2022-09-14T11:12:21.607' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (5, CAST(N'2022-09-14T11:12:27.703' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (6, CAST(N'2022-09-14T11:12:48.703' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (7, CAST(N'2022-09-14T11:12:51.073' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (8, CAST(N'2022-09-14T11:12:56.820' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (9, CAST(N'2022-09-14T11:12:58.297' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (10, CAST(N'2022-09-14T11:13:19.887' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (11, CAST(N'2022-09-14T11:26:52.120' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (12, CAST(N'2022-09-14T11:29:04.210' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (13, CAST(N'2022-09-14T11:32:30.113' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (14, CAST(N'2022-09-14T11:32:42.237' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (15, CAST(N'2022-09-14T16:30:31.140' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (16, CAST(N'2022-09-14T16:30:37.403' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (17, CAST(N'2022-09-14T16:30:39.533' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (18, CAST(N'2022-09-14T16:30:51.473' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (19, CAST(N'2022-09-14T16:31:18.867' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (20, CAST(N'2022-09-14T16:32:41.920' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (21, CAST(N'2022-09-14T16:35:20.983' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (22, CAST(N'2022-09-14T16:35:22.150' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (23, CAST(N'2022-09-14T16:35:23.640' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (24, CAST(N'2022-09-14T16:35:24.770' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (25, CAST(N'2022-09-14T16:35:25.917' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (26, CAST(N'2022-09-14T16:36:11.380' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (27, CAST(N'2022-09-16T16:16:32.073' AS DateTime), N'Procedure or function ''U_SP_GetDepartmentCountByGroupIdAndCityId'' expects parameter ''@PDSGID'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (28, CAST(N'2022-09-17T19:40:37.173' AS DateTime), N'Procedure or function ''U_SP_SaveSignUp'' expects parameter ''@Gender'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpl')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (29, CAST(N'2022-09-23T15:03:51.730' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (30, CAST(N'2022-09-23T15:03:54.160' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (31, CAST(N'2022-09-23T15:56:29.143' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (32, CAST(N'2022-11-13T00:34:12.513' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (33, CAST(N'2022-11-21T16:41:33.507' AS DateTime), N'Procedure or function ''U_SP_SaveSignUp'' expects parameter ''@FirstName'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySi')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (34, CAST(N'2023-01-31T21:49:32.010' AS DateTime), N'Procedure or function ''SP_SaveStudentInfo'' expects parameter ''@Gender'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySi')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (35, CAST(N'2023-01-31T23:33:00.720' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (36, CAST(N'2023-01-31T23:33:58.740' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (37, CAST(N'2023-01-31T23:34:32.267' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (38, CAST(N'2023-01-31T23:35:45.130' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (39, CAST(N'2023-03-07T00:58:58.570' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (40, CAST(N'2023-03-07T00:59:10.533' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (41, CAST(N'2023-03-07T01:00:47.607' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (42, CAST(N'2023-03-07T01:02:18.990' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (43, CAST(N'2023-03-07T01:03:17.840' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (44, CAST(N'2023-03-07T01:13:23.067' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (45, CAST(N'2023-03-07T01:14:15.423' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (46, CAST(N'2023-03-07T01:15:02.577' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (47, CAST(N'2023-03-07T01:16:51.363' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (48, CAST(N'2023-03-07T01:16:58.640' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (49, CAST(N'2023-03-07T01:17:53.543' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (50, CAST(N'2023-03-07T01:19:01.487' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (51, CAST(N'2023-04-02T03:11:20.347' AS DateTime), N'Procedure or function ''SP_SaveStdFsc'' expects parameter ''@PassingDSGroup'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCop')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (52, CAST(N'2023-04-02T09:53:23.207' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (53, CAST(N'2023-04-02T09:53:37.133' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (54, CAST(N'2023-04-02T09:55:28.530' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (55, CAST(N'2023-04-02T09:55:36.210' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (56, CAST(N'2023-04-02T09:56:46.040' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (57, CAST(N'2023-04-02T09:56:52.800' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (58, CAST(N'2023-04-02T09:57:12.080' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (59, CAST(N'2023-04-02T09:58:53.643' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (60, CAST(N'2023-04-02T10:15:03.980' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (61, CAST(N'2023-04-02T10:15:55.520' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (62, CAST(N'2023-04-03T19:25:38.180' AS DateTime), N'A connection was successfully established with the server, but then an error occurred during the login process. (provider: TCP Provider, error: 0 - An existing connection was forcibly closed by the remote host.)   at System.Data.ProviderBase.DbConnectionPool.CheckPoolBlockingPeriod(Exception e)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPo')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (63, CAST(N'2023-04-03T19:27:36.750' AS DateTime), N'A connection was successfully established with the server, but then an error occurred during the login process. (provider: TCP Provider, error: 0 - An existing connection was forcibly closed by the remote host.)   at System.Data.ProviderBase.DbConnectionPool.CheckPoolBlockingPeriod(Exception e)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPo')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (64, CAST(N'2023-04-06T10:05:28.580' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (65, CAST(N'2023-04-06T10:05:41.863' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (66, CAST(N'2023-04-06T10:06:15.320' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (67, CAST(N'2023-04-06T10:06:21.973' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (68, CAST(N'2023-04-06T10:08:32.067' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (69, CAST(N'2023-04-06T10:08:33.390' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (70, CAST(N'2023-04-06T10:08:47.333' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (71, CAST(N'2023-04-06T10:09:37.337' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (72, CAST(N'2023-04-06T10:09:38.933' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (73, CAST(N'2023-04-06T10:13:09.213' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (74, CAST(N'2023-04-06T10:13:19.613' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (75, CAST(N'2023-04-06T10:13:24.717' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (76, CAST(N'2023-04-06T10:13:27.857' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (77, CAST(N'2023-04-06T10:13:28.827' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (78, CAST(N'2023-04-06T10:13:34.210' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (79, CAST(N'2023-04-06T10:31:58.453' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (80, CAST(N'2023-04-06T22:18:43.877' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (81, CAST(N'2023-04-06T22:18:55.530' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (82, CAST(N'2023-04-06T22:19:01.630' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (83, CAST(N'2023-04-06T22:19:56.243' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (84, CAST(N'2023-04-06T22:20:58.453' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (85, CAST(N'2023-04-06T22:23:39.140' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage)')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (86, CAST(N'2023-04-07T17:55:12.600' AS DateTime), N'A transport-level error has occurred when receiving results from the server. (provider: TCP Provider, error: 0 - The semaphore timeout period has expired.)   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParserStateObject.ReadSniError(TdsPars')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (87, CAST(N'2023-04-07T18:46:20.597' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Pkversity_testing\pkversity_old\PKVERSITY_ASYSEM\ClassLibraryDAL\DalFilter.cs:line 59')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (88, CAST(N'2023-04-10T09:39:02.620' AS DateTime), N'Connection Timeout Expired.  The timeout period elapsed during the post-login phase.  The connection could have timed out while waiting for server to complete the login process and respond; Or it could have timed out while attempting to create multiple active connections.  The duration spent while attempting to connect to this server was - [Pre-Login] initialization=356; handshake=428; [Login] initialization=13; authentication=45; [Post-Login] complete=28490;    at System.Data.ProviderBase.DbCon')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (89, CAST(N'2023-04-10T09:39:02.723' AS DateTime), N'Connection Timeout Expired.  The timeout period elapsed during the post-login phase.  The connection could have timed out while waiting for server to complete the login process and respond; Or it could have timed out while attempting to create multiple active connections.  The duration spent while attempting to connect to this server was - [Pre-Login] initialization=147; handshake=394; [Login] initialization=0; authentication=0; [Post-Login] complete=29474;    at System.Data.ProviderBase.DbConne')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (90, CAST(N'2023-04-10T09:39:02.973' AS DateTime), N'Timeout expired.  The timeout period elapsed prior to obtaining a connection from the pool.  This may have occurred because all pooled connections were in use and max pool size was reached.   at System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (91, CAST(N'2023-04-10T13:55:43.100' AS DateTime), N'Procedure or function ''U_SP_GetDepartmentCountByGroupIdAndCityId'' expects parameter ''@PDSGID'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnect')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (92, CAST(N'2023-04-11T05:33:30.497' AS DateTime), N'Procedure or function ''U_SP_GetUserByName'' expects parameter ''@Email'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncCl')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (93, CAST(N'2023-04-13T14:56:39.500' AS DateTime), N'Internal .NET Framework Data Provider error 6.   at System.Data.ProviderBase.DbConnectionPool.CheckPoolBlockingPeriod(Exception e)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (94, CAST(N'2023-04-16T00:38:10.810' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (95, CAST(N'2023-04-16T00:39:34.980' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (96, CAST(N'2023-04-16T00:41:46.080' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (97, CAST(N'2023-04-16T00:42:26.360' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (98, CAST(N'2023-04-16T00:42:30.560' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (99, CAST(N'2023-04-16T00:42:31.670' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
GO
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (100, CAST(N'2023-04-16T00:43:45.563' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (101, CAST(N'2023-04-16T00:44:17.887' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (102, CAST(N'2023-04-16T00:45:35.700' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (103, CAST(N'2023-04-16T00:45:37.477' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (104, CAST(N'2023-04-16T00:45:38.373' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes()')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (105, CAST(N'2023-04-16T00:57:25.480' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (106, CAST(N'2023-04-16T00:57:25.883' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (107, CAST(N'2023-04-16T00:57:27.550' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (108, CAST(N'2023-04-16T00:57:34.140' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (109, CAST(N'2023-04-16T00:57:37.730' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (110, CAST(N'2023-04-16T00:57:38.670' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (111, CAST(N'2023-04-16T00:59:44.093' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (112, CAST(N'2023-04-16T00:59:45.280' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (113, CAST(N'2023-04-16T01:00:11.177' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (114, CAST(N'2023-04-16T01:02:33.287' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (115, CAST(N'2023-04-16T01:02:36.260' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (116, CAST(N'2023-04-16T01:03:52.253' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (117, CAST(N'2023-04-16T01:05:14.247' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (118, CAST(N'2023-04-16T01:06:06.650' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (119, CAST(N'2023-04-16T01:07:59.610' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (120, CAST(N'2023-04-16T01:16:50.853' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (121, CAST(N'2023-04-16T01:16:57.197' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalInstitutes.SaveAdmissionInfo(Nullable`1 value, String InstituteId) in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 143')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (122, CAST(N'2023-04-16T01:17:12.750' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (123, CAST(N'2023-04-16T01:17:49.217' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (124, CAST(N'2023-04-16T01:21:01.703' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (125, CAST(N'2023-04-16T01:21:14.563' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (126, CAST(N'2023-04-16T01:21:18.133' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (127, CAST(N'2023-04-16T01:21:19.483' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (128, CAST(N'2023-04-16T01:22:14.300' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (129, CAST(N'2023-04-16T01:22:17.033' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (130, CAST(N'2023-04-16T01:22:42.030' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (131, CAST(N'2023-04-16T01:22:43.593' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (132, CAST(N'2023-04-16T01:22:43.850' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (133, CAST(N'2023-04-16T01:22:47.420' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (134, CAST(N'2023-04-16T01:22:48.670' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (135, CAST(N'2023-04-16T01:23:46.847' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (136, CAST(N'2023-04-16T01:28:10.050' AS DateTime), N'Procedure or function SP_SaveInstitutes has too many arguments specified.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopy')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (137, CAST(N'2023-04-16T01:28:14.877' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (138, CAST(N'2023-04-16T01:28:16.730' AS DateTime), N'Conversion failed when converting the nvarchar value ''air'' to data type bit.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkC')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (139, CAST(N'2023-04-16T01:28:17.093' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (140, CAST(N'2023-04-16T01:28:20.643' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (141, CAST(N'2023-04-16T01:28:21.477' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (142, CAST(N'2023-04-16T01:28:59.217' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (143, CAST(N'2023-04-16T01:28:59.217' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (144, CAST(N'2023-04-16T01:29:01.827' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (145, CAST(N'2023-04-16T01:31:06.127' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (146, CAST(N'2023-04-16T01:32:35.837' AS DateTime), N'Conversion failed when converting the nvarchar value ''air'' to data type bit.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkC')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (147, CAST(N'2023-04-16T01:32:55.137' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (148, CAST(N'2023-04-16T01:33:12.160' AS DateTime), N'Unable to cast object of type ''System.DBNull'' to type ''System.Nullable`1[System.Boolean]''.   at ClassLibraryDAL.DalInstitutes.GetInstitutes() in E:\pkversity\ClassLibraryDAL\DalInstitues.cs:line 44')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (149, CAST(N'2023-08-23T14:57:19.330' AS DateTime), N'Procedure or function ''U_SP_GetDepartmentCountByGroupIdAndCityId'' expects parameter ''@PDSGID'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader')
SET IDENTITY_INSERT [dbo].[ExceptionHandelling] OFF
GO
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (1, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>Computer science is a broad field with many different specializations, so there are many different job opportunities available to graduates.</li><li>Some of the most in-demand computer science jobs include:<ul><li>Software engineer</li><li>Data scientist</li><li>Machine learning engineer</li><li>Artificial intelligence engineer</li><li>Cybersecurity engineer</li><li>Web developer</li><li>Database administrator</li><li>Information security analyst</li><li>Network engineer</li><li>Game developer</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for computer science graduates is over $100,000 per year.</li><li>Salaries for computer science graduates can vary depending on the position, experience, and location.</li><li>However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of computer science is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that we live and work, and there will be a need for computer scientists to develop and implement these technologies.</li><li>Some of the emerging technologies that are driving the demand for computer scientists include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>Blockchain</li><li>Quantum computing</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Problem-Solving Skills</strong></p><ul><li>Computer science is a problem-solving field, and employers are looking for graduates who can think critically and come up with creative solutions to problems.</li><li>Computer scientists also need to be able to work independently and as part of a team.</li></ul><p style="margin-left:0px;"><strong>Demand for Creativity</strong></p><ul><li>Computer science is a creative field, and employers are looking for graduates who can come up with new ideas and solutions to problems.</li><li>Computer scientists also need to be able to think outside the box and be innovative.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for computer scientists can vary depending on the job and the company.</li><li>However, many computer science jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Computer Science is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled computer scientists who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (2, N'<p style="margin-left:0px;"><strong>Future Scope of BSIT</strong></p><p style="margin-left:0px;"><strong>Emerging Technologies and Trends</strong></p><ul><li>Artificial Intelligence (AI) and Machine Learning (ML)</li><li>Internet of Things (IoT) and Smart Devices</li><li>Blockchain Technology</li><li>Quantum Computing</li><li>Augmented Reality (AR) and Virtual Reality (VR)</li><li>5G and Next-Generation Networks</li></ul><p style="margin-left:0px;"><strong>Cybersecurity and Data Privacy</strong></p><ul><li>Increasing Importance of Cybersecurity</li><li>Data Breach Prevention and Mitigation</li><li>Ethical Hacking and Penetration Testing</li><li>Compliance with Data Protection Regulations (e.g., GDPR, CCPA)</li></ul><p style="margin-left:0px;"><strong>Cloud Computing and Distributed Systems</strong></p><ul><li>Cloud Adoption and Migration</li><li>Serverless Architecture</li><li>Edge Computing</li><li>Hybrid and Multi-Cloud Strategies</li></ul><p style="margin-left:0px;"><strong>Software Development and DevOps</strong></p><ul><li>Agile and DevOps Methodologies</li><li>Continuous Integration and Continuous Deployment (CI/CD)</li><li>Microservices Architecture</li><li>Low-Code and No-Code Development</li></ul><p style="margin-left:0px;"><strong>Big Data and Analytics</strong></p><ul><li>Data Science and Predictive Analytics</li><li>Real-time Data Processing</li><li>Data Visualization and Business Intelligence</li><li>Scalable Data Storage Solutions</li></ul><p style="margin-left:0px;"><strong>User Experience (UX) and User Interface (UI) Design</strong></p><ul><li>Human-Centered Design Principles</li><li>Personalized and Adaptive Interfaces</li><li>Accessibility and Inclusive Design</li><li>Voice and Gesture Interfaces</li></ul><p style="margin-left:0px;"><strong>Mobile App Development</strong></p><ul><li>Cross-Platform App Development</li><li>Progressive Web Apps (PWAs)</li><li>Mobile Security and Privacy Considerations</li><li>Integration with IoT and Wearable Devices</li></ul><p style="margin-left:0px;"><strong>E-Commerce and Digital Business</strong></p><ul><li>Online Marketplaces and Payment Systems</li><li>Supply Chain Automation</li><li>Customer Relationship Management (CRM) Systems</li><li>Personalization and Recommendation Engines</li></ul><p style="margin-left:0px;"><strong>Health IT and Telemedicine</strong></p><ul><li>Electronic Health Records (EHR) Systems</li><li>Telehealth and Remote Patient Monitoring</li><li>Health Data Interoperability</li><li>Cybersecurity in Healthcare</li></ul><p style="margin-left:0px;"><strong>Green IT and Sustainability</strong></p><ul><li>Energy-Efficient Computing</li><li>Sustainable IT Practices</li><li>E-Waste Management</li><li>Environmental Impact Assessment of IT Solutions</li></ul><p style="margin-left:0px;"><strong>Ethics and Social Implications</strong></p><ul><li>Ethical Considerations in Technology Development</li><li>Addressing Bias in AI and Algorithms</li><li>Social and Cultural Impact of IT Innovations</li><li>Privacy and Surveillance Concerns</li></ul><p style="margin-left:0px;"><strong>Entrepreneurship and Innovation</strong></p><ul><li>Startups in the Tech Industry</li><li>Creating Tech-Based Solutions</li><li>Business Models for IT Ventures</li><li>Pitching and Funding Tech Ideas</li></ul><p style="margin-left:0px;">The future scope of a BSIT degree is diverse and dynamic, encompassing various technological domains and their intersections with society, ethics, and business. Graduates can expect to play a pivotal role in shaping the digital landscape and addressing the challenges and opportunities that arise in the ever-evolving world of technology.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (3, N'<h2 style="margin-left:0px;"><strong>1. Quantum Cryptography and Post-Quantum Security:</strong></h2><p style="margin-left:0px;">With the advent of powerful quantum computers, traditional encryption methods are at risk. Quantum cryptography offers a new paradigm for secure communication. Research and development in post-quantum algorithms and cryptographic techniques will be crucial to ensure data remains secure in a quantum computing era.</p><h2 style="margin-left:0px;"><strong>2. AI and Machine Learning in Cybersecurity:</strong></h2><p style="margin-left:0px;">AI and machine learning are being increasingly integrated into cybersecurity tools to detect and respond to evolving threats in real-time. The future involves refining these technologies to better identify anomalies and patterns in vast datasets, thereby enhancing threat detection and mitigation.</p><h2 style="margin-left:0px;"><strong>3. IoT Security:</strong></h2><p style="margin-left:0px;">As the Internet of Things (IoT) continues to expand, the need for securing interconnected devices becomes more critical. Future efforts will focus on developing robust security mechanisms, authentication protocols, and device management strategies to protect against IoT-based attacks.</p><h2 style="margin-left:0px;"><strong>4. Cloud Security:</strong></h2><p style="margin-left:0px;">As cloud computing becomes ubiquitous, ensuring the security and privacy of data stored and processed in cloud environments will remain a key challenge. Innovations will center around enhancing cloud security architecture, data encryption, and access controls to prevent unauthorized access and data breaches.</p><h2 style="margin-left:0px;"><strong>5. Cyber-Physical Systems (CPS) Security:</strong></h2><p style="margin-left:0px;">Securing critical infrastructure, such as power grids, transportation systems, and industrial processes, from cyber-physical attacks is a growing concern. Future efforts will involve designing security measures to protect these systems from digital threats that can have real-world consequences.</p><h2 style="margin-left:0px;"><strong>6. Biometric and Multi-Factor Authentication:</strong></h2><p style="margin-left:0px;">Biometric authentication methods, such as fingerprint and facial recognition, are becoming more prevalent. Research will focus on refining these methods and integrating them with multi-factor authentication to establish robust identity verification processes.</p><h2 style="margin-left:0px;"><strong>7. Privacy and Data Protection:</strong></h2><p style="margin-left:0px;">As data breaches and privacy violations continue to make headlines, the future of cybersecurity will involve stricter regulations and technologies that empower individuals to control their personal data. Tools for data anonymization, secure data sharing, and compliance with data protection laws will be developed.</p><h2 style="margin-left:0px;"><strong>8. Supply Chain Security:</strong></h2><p style="margin-left:0px;">With complex supply chains, software and hardware components can become entry points for cyberattacks. Future cybersecurity efforts will concentrate on assessing and mitigating risks throughout the supply chain, from development to deployment.</p><h2 style="margin-left:0px;"><strong>9. Behavioral Analytics:</strong></h2><p style="margin-left:0px;">Understanding user behavior to detect deviations from the norm will play a pivotal role in threat detection. Future research will focus on refining behavioral analytics to create more accurate profiles and identify potential threats based on unusual patterns of behavior.</p><h2 style="margin-left:0px;"><strong>10. Cybersecurity Policy and Legislation:</strong></h2><p style="margin-left:0px;">As technology advances, governments and organizations will need to develop and update cybersecurity policies and regulations to address emerging threats. Collaboration between public and private sectors will be essential in establishing effective cyber')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (4, N'<h2 style="margin-left:0px;"><strong>1. Advanced Deep Learning Architectures:</strong></h2><ul><li>Continued development of more complex and efficient neural network architectures.</li><li>Integration of biological neural network insights into AI architectures for improved learning and adaptability.</li></ul><h2 style="margin-left:0px;"><strong>2. Explainable AI (XAI):</strong></h2><ul><li>Research focused on making AI models more transparent and understandable to humans.</li><li>Development of techniques to explain AI decisions and actions, particularly in critical applications like healthcare and law.</li></ul><h2 style="margin-left:0px;"><strong>3. AI in Healthcare:</strong></h2><ul><li>Increased utilization of AI for personalized medicine, disease diagnosis, and drug discovery.</li><li>AI-powered medical image analysis for accurate and early detection of diseases.</li><li>Remote patient monitoring and AI-driven health predictions.</li></ul><h2 style="margin-left:0px;"><strong>4. Autonomous Systems:</strong></h2><ul><li>Advancements in self-driving cars, drones, and robotics for tasks ranging from manufacturing to space exploration.</li><li>Integration of AI into smart cities and infrastructure for efficient management and resource allocation.</li></ul><h2 style="margin-left:0px;"><strong>5. Natural Language Processing (NLP) Evolution:</strong></h2><ul><li>Creation of AI systems that can engage in more nuanced, context-aware, and human-like conversations.</li><li>Breaking down language barriers with improved real-time translation and interpretation.</li></ul><h2 style="margin-left:0px;"><strong>6. AI Ethics and Governance:</strong></h2><ul><li>Establishment of robust frameworks for ensuring responsible AI development and deployment.</li><li>Development of AI that respects cultural and societal norms, and avoids bias and discrimination.</li></ul><h2 style="margin-left:0px;"><strong>7. AI Augmentation:</strong></h2><ul><li>Collaboration between humans and AI systems to enhance creativity, problem-solving, and decision-making.</li><li>AI-powered tools to assist professionals in various fields, such as writing, design, and scientific research.</li></ul><h2 style="margin-left:0px;"><strong>8. Quantum AI:</strong></h2><ul><li>Exploration of the synergy between quantum computing and AI to solve complex problems faster.</li><li>Development of AI algorithms that leverage quantum properties for improved performance.</li></ul><h2 style="margin-left:0px;"><strong>9. AI in Entertainment and Creativity:</strong></h2><ul><li>Expansion of AI-generated art, music, and literature, blurring the lines between human and machine creativity.</li><li>AI-driven content recommendation systems for personalized entertainment experiences.</li></ul>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (5, N'<p style="margin-left:0px;"><strong>Future Scope of Data Science</strong></p><p style="margin-left:0px;">**1. ** <strong>Advanced Machine Learning and AI Models</strong></p><p style="margin-left:0px;">As technology continues to evolve, the future of data science lies in developing more advanced machine learning and artificial intelligence models. This includes creating models that can understand and process complex data types like unstructured text, images, audio, and video. Deep learning architectures, reinforcement learning, and generative adversarial networks (GANs) are expected to play a significant role in this advancement.</p><p style="margin-left:0px;">**2. ** <strong>Interdisciplinary Applications</strong></p><p style="margin-left:0px;">Data science is expanding its reach beyond traditional domains. In the future, we can expect to see increased interdisciplinary applications of data science in fields such as healthcare, finance, agriculture, urban planning, and more. The integration of domain knowledge with data science techniques will lead to innovative solutions and insights.</p><p style="margin-left:0px;">**3. ** <strong>Automated Machine Learning (AutoML)</strong></p><p style="margin-left:0px;">AutoML is a rapidly growing area within data science that aims to automate the process of model selection, feature engineering, and hyperparameter tuning. This will enable individuals without extensive data science expertise to leverage machine learning effectively. The future will likely bring more sophisticated AutoML tools that can handle complex tasks and datasets.</p><p style="margin-left:0px;">**4. ** <strong>Ethics and Responsible AI</strong></p><p style="margin-left:0px;">With the increasing influence of AI and data-driven decision-making, ethical considerations are becoming paramount. The future of data science will involve a stronger focus on creating responsible AI systems that are unbiased, transparent, and fair. Researchers and practitioners will work on developing frameworks to ensure that AI technologies benefit all segments of society.</p><p style="margin-left:0px;">**5. ** <strong>Big Data and Real-time Analytics</strong></p><p style="margin-left:0px;">As the volume of data generated continues to explode, there will be a growing need for data science techniques that can handle and process massive amounts of data in real time. Future data scientists will need to specialize in developing solutions for real-time analytics, leveraging technologies like stream processing and distributed computing.</p><p style="margin-left:0px;">**6. ** <strong>Explainable AI (XAI)</strong></p><p style="margin-left:0px;">Explainable AI aims to make machine learning models more interpretable and understandable, especially for critical applications such as healthcare and finance. In the future, there will be a strong demand for data scientists who can develop models that provide clear explanations for their decisions, increasing user trust and accountability.</p><p style="margin-left:0px;">**7. ** <strong>Edge Analytics</strong></p><p style="margin-left:0px;">Edge analytics involves performing data analysis directly on devices or sensors at the "edge" of a network, rather than sending all data to a central location. This approach reduces latency and bandwidth requirements. Future data scientists will work on creating efficient algorithms and models that can operate on resource-constrained devices while still providing meaningful insights.</p><p style="margin-left:0px;">**8. ** <strong>Quantum Data Science</strong></p><p style="margin-left:0px;">As quantum computing technology matures, it holds the potential to revolutionize data science by solving complex problems that are currently intractable for classical computers. Data scientists will explore quantum algorithms and techniques to analyze large datasets and optimize machine learning models in ways that were previously impossible.</p><p style="margin-left:0px;">**9. ** <strong>Con')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (6, N'<h2 style="margin-left:0px;"><strong>Future Scope of Creative Technology</strong></h2><h3 style="margin-left:0px;"><strong>1. Immersive Experiences</strong></h3><p style="margin-left:0px;">Advancements in augmented reality (AR) and virtual reality (VR) technologies will enable the creation of highly immersive experiences across various industries. From entertainment and gaming to education and real estate, creative technology will play a crucial role in designing interactive and lifelike virtual environments.</p><h3 style="margin-left:0px;"><strong>2. AI-Driven Content Generation</strong></h3><p style="margin-left:0px;">The integration of artificial intelligence (AI) into creative technology will lead to the development of tools capable of generating high-quality content, such as artwork, music, and even entire narratives. AI-powered creative tools will assist artists and creators, speeding up the content creation process and pushing the boundaries of artistic expression.</p><h3 style="margin-left:0px;"><strong>3. Interactive Storytelling</strong></h3><p style="margin-left:0px;">The future of creative technology will involve interactive storytelling that engages users on multiple levels. With advancements in interactive narrative structures, users will have the ability to influence the direction of a story, creating personalized and dynamic experiences in various forms of media, including games, films, and literature.</p><h3 style="margin-left:0px;"><strong>4. Generative Design</strong></h3><p style="margin-left:0px;">Generative design, driven by algorithms and AI, will revolutionize product and architectural design. Creative technology will enable designers to input constraints and parameters, allowing the software to generate a multitude of design options that go beyond human imagination. This approach will lead to highly innovative and optimized solutions.</p><h3 style="margin-left:0px;"><strong>5. Ethics and Digital Expression</strong></h3><p style="margin-left:0px;">As creative technology continues to evolve, ethical considerations related to digital expression, deepfakes, and the potential misuse of AI-generated content will become more significant. The future scope of creative technology will involve establishing guidelines and regulations to ensure responsible and ethical use of these tools.</p><h3 style="margin-left:0px;"><strong>6. Neurocreative Interfaces</strong></h3><p style="margin-left:0px;">Advancements in neurotechnology will enable direct interfaces between the human brain and creative applications. This could lead to entirely new forms of artistic expression, allowing individuals to create art and music by directly translating their thoughts and emotions into digital formats.</p><h3 style="margin-left:0px;"><strong>7. Sustainability and Green Tech</strong></h3><p style="margin-left:0px;">The future of creative technology will also focus on sustainability and environmental consciousness. Creative solutions will be sought to address ecological challenges and promote eco-friendly practices. Virtual events, eco-conscious design, and sustainable materials will be integrated into creative projects.</p><h3 style="margin-left:0px;"><strong>8. Cross-Disciplinary Collaboration</strong></h3><p style="margin-left:0px;">Collaboration between artists, scientists, engineers, and other experts will become more prevalent. Creative technology will serve as a bridge between different disciplines, resulting in innovative projects that combine artistic expression with cutting-edge scientific discoveries and technological advancements.</p><h3 style="margin-left:0px;"><strong>9. Personalized Learning and Edutainment</strong></h3><p style="margin-left:0px;">The educational sector will benefit from the integration of creative technology to create personalized and engaging learning experiences. Edutainment platforms will leverage interactive content, VR simulations, and AI tutors to make learning more enjoyable and effective.</p><h3 ')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (7, N'<p style="margin-left:0px;"><br>Sure, here are some of the future scopes of mechanical engineering in proper headings:</p><ul><li><strong>Automotive Engineering</strong><ul><li>With the increasing demand for electric and self-driving cars, there will be a high demand for mechanical engineers who can design and develop these new technologies.</li><li>Mechanical engineers will also be needed to improve the efficiency and performance of traditional gasoline-powered cars.</li></ul></li><li><strong>Aerospace Engineering</strong><ul><li>Mechanical engineers are essential in the design, development, and testing of aircraft, spacecraft, and missiles.</li><li>With the growing interest in space exploration, there will be a need for more mechanical engineers to work on projects such as developing new rockets and satellites.</li></ul></li><li><strong>Robotics</strong><ul><li>Mechanical engineers are involved in the design, construction, and operation of robots.</li><li>As robots become more sophisticated, there will be a need for more mechanical engineers to develop new technologies and applications for them.</li></ul></li><li><strong>Energy Engineering</strong><ul><li>Mechanical engineers are involved in the development of new energy technologies, such as renewable energy sources and energy efficiency measures.</li><li>With the increasing demand for clean energy, there will be a high demand for mechanical engineers in this field.</li></ul></li><li><strong>Manufacturing</strong><ul><li>Mechanical engineers are involved in the design, construction, and operation of manufacturing plants and equipment.</li><li>As manufacturing becomes more automated, there will be a need for more mechanical engineers to develop new technologies and processes.</li></ul></li><li><strong>Medical Engineering</strong><ul><li>Mechanical engineers are involved in the design, development, and testing of medical devices, such as artificial limbs, heart valves, and surgical robots.</li><li>With the aging population and the increasing demand for healthcare, there will be a growing need for mechanical engineers in this field.</li></ul></li><li><strong>Nanotechnology</strong><ul><li>Mechanical engineers are involved in the development of new nanoscale materials and devices.</li><li>Nanotechnology has the potential to revolutionize many industries, such as healthcare, energy, and manufacturing.</li></ul></li></ul><p style="margin-left:0px;">These are just a few of the many future scopes of mechanical engineering. With the rapid pace of technological change, the demand for mechanical engineers is expected to remain strong in the years to come.</p><p style="margin-left:0px;">In addition to the above, here are some other emerging trends in mechanical engineering that are expected to create new job opportunities in the future:</p><ul><li><strong>Sustainable engineering</strong><ul><li>Mechanical engineers will be needed to develop new technologies and processes that help to reduce environmental impact.</li></ul></li><li><strong>Additive manufacturing</strong><ul><li>Also known as 3D printing, additive manufacturing is a rapidly growing technology that has the potential to revolutionize the way products are manufactured.</li></ul></li><li><strong>Cyber-physical systems</strong><ul><li>Cyber-physical systems are systems that combine physical components with computational and networking capabilities. Mechanical engineers will be needed to design, develop, and test these systems.</li></ul></li><li><strong>Augmented reality and virtual reality</strong><ul><li>Augmented reality and virtual reality are technologies that are being used in a variety of industries, including manufacturing, healthcare, and education. Mechanical engineers will be needed to develop new applications for these technologies.</li></ul></li></ul><p style="margin-left:0px;">The future of mechanical engineering is bright. With the rapid pace of technological change, there will be a growing demand for mechanical ')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (8, N'<p style="margin-left:0px;">Sure, here are some of the future scopes of electrical telecom in proper headings:</p><ul><li><strong>5G and Beyond:</strong> 5G is the fifth generation of cellular network technology, and it is expected to revolutionize the way we communicate and interact with the world around us. 5G offers much faster speeds, lower latency, and greater capacity than previous generations of cellular networks, making it ideal for applications such as augmented reality (AR), virtual reality (VR), and the Internet of Things (IoT). The demand for 5G is expected to grow rapidly in the coming years, creating many new job opportunities for electrical telecom engineers.</li><li><strong>Software-Defined Networking (SDN):</strong> SDN is a new networking paradigm that decouples the control plane from the data plane. This allows for more flexibility and agility in network management, and it is essential for the deployment of 5G and other next-generation networks. Electrical telecom engineers with expertise in SDN will be in high demand in the coming years.</li><li><strong>Network Function Virtualization (NFV):</strong> NFV is a technology that allows network functions to be virtualized and run on general-purpose hardware. This can lead to significant cost savings and flexibility in network deployments. Electrical telecom engineers with expertise in NFV will be in high demand in the coming years.</li><li><strong>The Internet of Things (IoT):</strong> The IoT is the network of physical objects that are connected to the internet and can collect and exchange data. The IoT is expected to grow rapidly in the coming years, and it will create many new opportunities for electrical telecom engineers. Electrical telecom engineers will be needed to design, install, and maintain the networks that support the IoT.</li><li><strong>Artificial Intelligence (AI):</strong> AI is rapidly gaining traction in the telecommunications industry, and it is expected to have a major impact on the way networks are designed, deployed, and operated. Electrical telecom engineers with expertise in AI will be in high demand in the coming years.</li></ul><p style="margin-left:0px;">These are just a few of the many future scopes of electrical telecom. The field is constantly evolving, and there are always new opportunities emerging. Electrical telecom engineers who are willing to learn new technologies and adapt to change will be well-positioned for success in the years to come.</p><p style="margin-left:0px;">In addition to the above, here are some other promising areas of growth in electrical telecom:</p><ul><li><strong>Smart cities:</strong> Smart cities are using telecommunications technology to improve the efficiency and sustainability of their operations. Electrical telecom engineers will be needed to design, install, and maintain the networks that support smart city applications such as smart transportation, smart lighting, and smart water management.</li><li><strong>Telehealth:</strong> Telehealth is the use of telecommunications technology to provide healthcare services remotely. Electrical telecom engineers will be needed to design, install, and maintain the networks that support telehealth applications such as video conferencing and remote patient monitoring.</li><li><strong>Education and training:</strong> Telecommunications technology is being used to deliver education and training more efficiently and effectively. Electrical telecom engineers will be needed to design, install, and maintain the networks that support e-learning and distance learning applications.</li><li><strong>Entertainment and gaming:</strong> Telecommunications technology is being used to deliver entertainment and gaming content more immersively and interactively. Electrical telecom engineers will be needed to design, install, and maintain the networks that support these applications.</li></ul><p style="margin-left:0px;">The future of electrical telecom is bright. The field is con')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (9, N'<h2 style="margin-left:0px;">Future Scope:</h2><p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>Avionics engineers are in high demand in the aerospace industry, which is expected to grow significantly in the coming years.</li><li>Job opportunities in avionics engineering are available in a variety of settings, including:<ul><li>Commercial airlines</li><li>Defense contractors</li><li>General aviation companies</li><li>Automotive industry</li><li>Medical industry</li><li>Transportation industry</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for an avionics engineer is over $100,000 per year.</li><li>Salaries for avionics engineers can vary depending on experience, education, and location.</li><li>Avionics engineers with specialized skills, such as experience in unmanned aerial systems (UAS), can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of avionics is constantly evolving, with new technologies being developed all the time.</li><li>Avionics engineers who are up-to-date on the latest technologies will be in high demand.</li><li>Some of the emerging technologies in avionics include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>5G wireless technology</li><li>Unmanned aerial systems (UAS)</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Greener Aircraft</strong></p><ul><li>There is a growing demand for greener aircraft, which are more fuel-efficient and produce less pollution.</li><li>Avionics engineers will be needed to develop and implement the avionics systems for these aircraft.</li><li>Some of the technologies that are being used to develop greener aircraft include:<ul><li>Lighter materials</li><li>More efficient engines</li><li>Advanced avionics systems</li></ul></li></ul><p style="margin-left:0px;"><strong>Increased Safety Requirements</strong></p><ul><li>The aviation industry is constantly implementing new safety regulations.</li><li>Avionics engineers will be needed to design and test avionics systems that meet these regulations.</li><li>Some of the safety features that are being implemented in avionics systems include:<ul><li>Enhanced navigation systems</li><li>Improved collision avoidance systems</li><li>More robust flight control systems</li></ul></li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>Avionics engineers typically work regular hours, although there may be some on-call requirements.</li><li>The job can be stressful, but it is also rewarding to work on cutting-edge technology that keeps people safe.</li></ul><p style="margin-left:0px;">Overall, the future scope of a BS Avionics degree is very bright. The demand for avionics engineers is expected to grow significantly in the coming years, and those who are up-to-date on the latest technologies and have strong problem-solving and analytical skills will be in high demand.</p><p style="margin-left:0px;">&nbsp;</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (10, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">Mathematics graduates are in high demand in a variety of industries, including:</p><ul><li>Finance</li><li>Accounting</li><li>Actuarial science</li><li>Data science</li><li>Engineering</li><li>Computer science</li><li>Information technology</li><li>Business</li><li>Education</li><li>Research</li></ul><p style="margin-left:0px;">Mathematics graduates can also find work in government, non-profit organizations, and consulting firms.</p><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for a mathematics graduate is over $70,000 per year.</li><li>Salaries for mathematics graduates can vary depending on experience, education, and location.</li><li>Mathematics graduates with specialized skills, such as experience in data science or financial modeling, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of mathematics is constantly evolving, with new mathematical concepts and applications being developed all the time.</li><li>Mathematics graduates who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for mathematics graduates include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>Blockchain</li><li>Quantum computing</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Problem-Solvers</strong></p><ul><li>In today''s world, there is a growing demand for problem-solvers.</li><li>Mathematics graduates are well-prepared to meet this demand, as they have been trained to think logically and solve complex problems.</li><li>Mathematics graduates are also able to think abstractly and visualize solutions, which are essential skills for many jobs.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>Mathematics graduates typically work regular hours, although there may be some on-call requirements.</li><li>The job can be challenging, but it is also rewarding to work on cutting-edge problems that have a real-world impact.</li></ul><p style="margin-left:0px;">Overall, the future scope of a BS Math degree is very bright. The demand for mathematics graduates is expected to grow significantly in the coming years, and those who are up-to-date on the latest trends and have strong problem-solving and analytical skills will be in high demand.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (11, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">English graduates are in high demand in a variety of industries, including:</p><ul><li>Education</li><li>Publishing</li><li>Journalism</li><li>Marketing</li><li>Public relations</li><li>Law</li><li>Business</li><li>Government</li><li>Non-profit organizations</li><li>Technology</li></ul><p style="margin-left:0px;">English graduates can also find work as freelance writers, editors, or translators.</p><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for an English graduate is over $60,000 per year.</li><li>Salaries for English graduates can vary depending on experience, education, and location.</li><li>English graduates with specialized skills, such as experience in technical writing or copywriting, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of English is constantly evolving, with new technologies being developed all the time.</li><li>English graduates who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for English graduates include:<ul><li>Content management systems (CMS)</li><li>Digital marketing</li><li>Social media</li><li>Data analytics</li><li>Machine learning</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Communication Skills</strong></p><ul><li>In today''s world, there is a growing demand for communication skills.</li><li>English graduates are well-prepared to meet this demand, as they have been trained to think critically and communicate effectively.</li><li>English graduates are also able to write clearly and concisely, which are essential skills for many jobs.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>English graduates typically work regular hours, although there may be some on-call requirements.</li><li>The job can be demanding, but it is also rewarding to work in a field that allows you to use your creativity and communication skills.</li></ul><p style="margin-left:0px;">Overall, the future scope of a BS English degree is very bright. The demand for English graduates is expected to grow significantly in the coming years, and those who are up-to-date on the latest trends and have strong communication skills will be in high demand.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (12, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">Graduates of BS Pakistan Studies can find jobs in a variety of fields, including:</p><ul><li>Government</li><li>Education</li><li>Media</li><li>Non-profit organizations</li><li>Research</li><li>Consulting</li><li>Business</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of BS Pakistan Studies may be qualified for include:</p><ul><li>Policy analyst</li><li>Historian</li><li>Journalist</li><li>Educator</li><li>Researcher</li><li>Consultant</li><li>Public relations officer</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for a graduate of BS Pakistan Studies is over $40,000 per year.</li><li>Salaries for graduates of BS Pakistan Studies can vary depending on experience, education, and location.</li><li>Graduates with specialized skills, such as experience in research or data analysis, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Demand for Pakistan Studies</strong></p><ul><li>There is a growing demand for Pakistan Studies, as the country becomes increasingly important in the global arena.</li><li>Pakistan is a diverse country with a rich history and culture, and there is a need for people who understand these complexities.</li><li>Graduates of BS Pakistan Studies can play a vital role in promoting understanding of Pakistan and its people.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of Pakistan Studies is constantly evolving, with new technologies being developed all the time.</li><li>Graduates of BS Pakistan Studies who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for graduates of BS Pakistan Studies include:<ul><li>Data analytics</li><li>Social media</li><li>Artificial intelligence</li><li>Machine learning</li></ul></li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>Graduates of BS Pakistan Studies typically work regular hours, although there may be some on-call requirements.</li><li>The job can be demanding, but it is also rewarding to work in a field that allows you to use your knowledge and skills to make a difference.</li></ul><p style="margin-left:0px;">Overall, the future scope of a BS Pakistan Studies degree is bright. The demand for graduates of BS Pakistan Studies is expected to grow significantly in the coming years, and those who are up-to-date on the latest trends and have strong research and analytical skills will be in high demand.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (13, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">Electrical and electronics engineers are in high demand in a variety of industries, including:</p><ul><li>Power generation and distribution</li><li>Electronics manufacturing</li><li>Telecommunications</li><li>Transportation</li><li>Medical devices</li><li>Renewable energy</li><li>Automation</li></ul><p style="margin-left:0px;">Electrical and electronics engineers can also find work in government, research, and consulting firms.</p><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for an electrical and electronics engineer is over $90,000 per year.</li><li>Salaries for electrical and electronics engineers can vary depending on experience, education, and location.</li><li>Electrical and electronics engineers with specialized skills, such as experience in renewable energy or robotics, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of electrical and electronics engineering is constantly evolving, with new technologies being developed all the time.</li><li>Electrical and electronics engineers who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for electrical and electronics engineers include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>5G wireless technology</li><li>Electric vehicles</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Greener Technology</strong></p><ul><li>There is a growing demand for greener technology, which is more energy-efficient and produces less pollution.</li><li>Electrical and electronics engineers will be needed to develop and implement the technologies that make this possible.</li><li>Some of the technologies that are being used to develop greener technology include:<ul><li>Solar cells</li><li>Wind turbines</li><li>Energy storage devices</li><li>Smart grid technologies</li></ul></li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>Electrical and electronics engineers typically work regular hours, although there may be some on-call requirements.</li><li>The job can be demanding, but it is also rewarding to work on cutting-edge technology that has a positive impact on the environment.</li></ul><p style="margin-left:0px;">Overall, the future scope of a BS Electrical Electronics degree is very bright. The demand for electrical and electronics engineers is expected to grow significantly in the coming years, and those who are up-to-date on the latest trends and have strong problem-solving and analytical skills will be in high demand.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (14, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">Electrical power engineers are in high demand in a variety of industries, including:</p><ul><li>Power generation and distribution companies</li><li>Electronics and telecommunications industries</li><li>Research and development organizations</li><li>Academia</li><li>Government</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of BS Electrical Power may be qualified for include:</p><ul><li>Power engineer</li><li>Electrical engineer</li><li>Transmission engineer</li><li>Distribution engineer</li><li>Renewable energy engineer</li><li>Research engineer</li><li>Professor</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for an electrical power engineer is over $100,000 per year.</li><li>Salaries for electrical power engineers can vary depending on experience, education, and location.</li><li>Engineers with specialized skills, such as experience in renewable energy or power systems, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of electrical power is constantly evolving, with new technologies being developed all the time.</li><li>Electrical power engineers who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for electrical power engineers include:<ul><li>Renewable energy</li><li>Smart grids</li><li>Energy storage</li><li>Distributed generation</li><li>Microgrids</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Green Energy</strong></p><ul><li>There is a growing demand for green energy, as people become more aware of the environmental impact of traditional energy sources.</li><li>Electrical power engineers will be needed to develop and implement the technologies that are needed to generate and distribute green energy.</li></ul><p style="margin-left:0px;"><strong>Demand for Efficient Energy Use</strong></p><ul><li>There is also a growing demand for efficient energy use, as people look for ways to reduce their energy bills and their environmental impact.</li><li>Electrical power engineers will be needed to develop and implement the technologies that are needed to make energy use more efficient.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>Electrical power engineers typically work regular hours, although there may be some on-call requirements.</li><li>The job can be demanding, but it is also rewarding to work in a field that is essential to the modern world.</li></ul><p style="margin-left:0px;">Overall, the future scope of a BS Electrical Power degree is bright. The demand for electrical power engineers is expected to grow significantly in the coming years, and those who are up-to-date on the latest trends and have strong problem-solving and analytical skills will be in high demand.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (15, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">Mechatronics engineers are in high demand in a variety of industries, including:</p><ul><li>Automotive</li><li>Aerospace</li><li>Manufacturing</li><li>Robotics</li><li>Medical devices</li><li>Energy</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of BS Mechatronics may be qualified for include:</p><ul><li>Mechatronics engineer</li><li>Robotics engineer</li><li>Automation engineer</li><li>Control engineer</li><li>Design engineer</li><li>Manufacturing engineer</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for a mechatronics engineer is over $100,000 per year.</li><li>Salaries for mechatronics engineers can vary depending on experience, education, and location.</li><li>Engineers with specialized skills, such as experience in robotics or automation, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of mechatronics is constantly evolving, with new technologies being developed all the time.</li><li>Mechatronics engineers who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for mechatronics engineers include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Robotics</li><li>3D printing</li><li>Internet of Things (IoT)</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Automation</strong></p><ul><li>There is a growing demand for automation, as businesses look for ways to reduce costs and improve efficiency.</li><li>Mechatronics engineers will be needed to design, develop, and implement automated systems.</li></ul><p style="margin-left:0px;"><strong>Demand for Green Energy</strong></p><ul><li>There is also a growing demand for green energy, as people become more aware of the environmental impact of traditional energy sources.</li><li>Mechatronics engineers will be needed to develop and implement the technologies that are needed to generate and distribute green energy.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>Mechatronics engineers typically work regular hours, although there may be some on-call requirements.</li><li>The job can be demanding, but it is also rewarding to work in a field that is essential to the modern world.</li></ul><p style="margin-left:0px;">Overall, the future scope of a BS Mechatronics degree is bright. The demand for mechatronics engineers is expected to grow significantly in the coming years, and those who are up-to-date on the latest trends and have strong problem-solving and analytical skills will be in high demand.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (16, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">Biomedical engineers are in high demand in a variety of industries, including:</p><ul><li>Healthcare</li><li>Pharmaceutical</li><li>Medical device</li><li>Biotechnology</li><li>Research and development</li><li>Government</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of Biomedical Engineering may be qualified for include:</p><ul><li>Biomedical engineer</li><li>Clinical engineer</li><li>Medical device engineer</li><li>Biomaterials engineer</li><li>Tissue engineer</li><li>Computational biologist</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for a biomedical engineer is over $90,000 per year.</li><li>Salaries for biomedical engineers can vary depending on experience, education, and location.</li><li>Engineers with specialized skills, such as experience in medical devices or biotechnology, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of biomedical engineering is constantly evolving, with new technologies being developed all the time.</li><li>Biomedical engineers who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for biomedical engineers include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Robotics</li><li>3D printing</li><li>Gene editing</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Personalized Medicine</strong></p><ul><li>There is a growing demand for personalized medicine, which is the tailoring of medical treatment to the individual patient.</li><li>Biomedical engineers will be needed to develop the technologies that are needed to make personalized medicine a reality.</li></ul><p style="margin-left:0px;"><strong>Demand for Improved Healthcare Delivery</strong></p><ul><li>There is also a growing demand for improved healthcare delivery, as people look for ways to get better and more affordable healthcare.</li><li>Biomedical engineers will be needed to develop the technologies that are needed to improve healthcare delivery.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>Biomedical engineers typically work regular hours, although there may be some on-call requirements.</li><li>The job can be demanding, but it is also rewarding to work in a field that is essential to improving human health.</li></ul><p style="margin-left:0px;">Overall, the future scope of Biomedical Engineering is bright. The demand for biomedical engineers is expected to grow significantly in the coming years, and those who are up-to-date on the latest trends and have strong problem-solving and analytical skills will be in high demand.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (17, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">BBA (Honours) graduates are in high demand in a variety of industries, including:</p><ul><li>Banking and finance</li><li>Consulting</li><li>Marketing</li><li>Human resources</li><li>Information technology</li><li>Supply chain management</li><li>Real estate</li><li>Non-profit organizations</li><li>Government</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of BBA (Honours) may be qualified for include:</p><ul><li>Financial analyst</li><li>Marketing manager</li><li>Human resources manager</li><li>Information technology manager</li><li>Supply chain manager</li><li>Real estate agent</li><li>Consultant</li><li>Policy analyst</li><li>Government official</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for a BBA (Honours) graduate is over $60,000 per year.</li><li>Salaries for BBA (Honours) graduates can vary depending on experience, education, and location.</li><li>Graduates with specialized skills, such as experience in finance or marketing, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of business administration is constantly evolving, with new technologies being developed all the time.</li><li>BBA (Honours) graduates who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for BBA (Honours) graduates include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>Blockchain</li><li>Quantum computing</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Problem-Solvers</strong></p><ul><li>In today''s world, there is a growing demand for problem-solvers.</li><li>BBA (Honours) graduates are well-prepared to meet this demand, as they have been trained to think critically and solve complex problems.</li><li>BBA (Honours) graduates are also able to think strategically and make sound business decisions.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>BBA (Honours) graduates typically work regular hours, although there may be some on-call requirements.</li><li>The job can be demanding, but it is also rewarding to work in a field that is essential to the modern world.</li></ul><p style="margin-left:0px;">Overall, the future scope of BBA (Honours) is bright. The demand for BBA (Honours) graduates is expected to grow significantly in the coming years, and those who are up-to-date on the latest trends and have strong problem-solving and analytical skills will be in high demand.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (18, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">There are many job opportunities in accounting and finance, in a variety of industries, including:</p><ul><li>Financial services</li><li>Accounting firms</li><li>Consulting firms</li><li>Government</li><li>Non-profit organizations</li><li>Manufacturing</li><li>Retail</li><li>Technology</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of Accounting and Finance may be qualified for include:</p><ul><li>Accountant</li><li>Auditor</li><li>Financial analyst</li><li>Investment banker</li><li>Risk manager</li><li>Treasury manager</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for an accountant or financial analyst is over $70,000 per year.</li><li>Salaries for accountants and financial analysts can vary depending on experience, education, and location.</li><li>Those with specialized skills, such as experience in data analysis or financial modeling, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of accounting and finance is constantly evolving, with new technologies being developed all the time.</li><li>Accountants and financial analysts who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for accountants and financial analysts include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>Blockchain</li><li>Quantum computing</li></ul></li></ul><p style="margin-left:0px;"><strong>Globalization</strong></p><ul><li>The world is becoming increasingly globalized, and businesses are operating in more and more countries.</li><li>This creates a need for accountants and financial analysts who have a global perspective and can understand the different accounting standards and regulations in different countries.</li></ul><p style="margin-left:0px;"><strong>Regulatory Changes</strong></p><ul><li>The accounting and finance industry is also subject to a variety of regulations, which are constantly changing.</li><li>Accountants and financial analysts need to be able to keep up with these changes in order to ensure that their clients are in compliance.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>Accountants and financial analysts typically work regular hours, although there may be some on-call requirements during busy periods.</li><li>The job can be demanding, but it is also rewarding to work in a field that is essential to the smooth running of businesses.</li></ul><p style="margin-left:0px;">Overall, the future scope of accounting and finance is bright. The demand for accountants and financial analysts is expected to grow significantly in the coming years, and those who are up-to-date on the latest trends and have strong analytical skills will be in high demand.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (19, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>The tourism and hospitality industry is one of the largest and fastest-growing industries in the world.</li><li>It is estimated to generate over $8 trillion in revenue annually and employ over 280 million people.</li><li>The industry offers a wide range of job opportunities, including:<ul><li>Front-of-house staff (e.g., waiters, waitresses, receptionists)</li><li>Back-of-house staff (e.g., chefs, housekeepers, engineers)</li><li>Management staff (e.g., hotel managers, tour operators)</li><li>Sales and marketing staff (e.g., travel agents, tourism promoters)</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>Salaries in the tourism and hospitality industry vary depending on the position, experience, and location.</li><li>However, the industry generally offers competitive salaries, especially for management positions.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The tourism and hospitality industry is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that people travel and experience tourism destinations.</li><li>Some of the emerging technologies that are driving the demand for tourism and hospitality workers include:<ul><li>Artificial intelligence (AI)</li><li>Virtual reality (VR)</li><li>Augmented reality (AR)</li><li>Blockchain</li><li>Big data analytics</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Sustainable Tourism</strong></p><ul><li>There is a growing demand for sustainable tourism, which is tourism that minimizes its negative impact on the environment and local communities.</li><li>The tourism and hospitality industry will need to adapt to this demand by developing more sustainable practices.</li></ul><p style="margin-left:0px;"><strong>Demand for Cross-Cultural Understanding</strong></p><ul><li>The world is becoming increasingly interconnected, and tourism is one of the ways that people from different cultures can learn about each other.</li><li>The tourism and hospitality industry will need to hire workers who have a strong understanding of different cultures.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The tourism and hospitality industry can be demanding, as it often involves long hours and irregular work schedules.</li><li>However, the industry also offers many opportunities for flexible work arrangements and travel.</li></ul><p style="margin-left:0px;">Overall, the future scope of Tourism and Hospitality is bright. The industry is expected to grow significantly in the coming years, and there will be a demand for skilled workers who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (20, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>Healthcare management is a broad field with many different specializations, so there are many different job opportunities available to graduates.</li><li>Some of the most in-demand healthcare management jobs include:<ul><li>Hospital administrator</li><li>Clinic manager</li><li>Nursing home administrator</li><li>Health insurance manager</li><li>Pharmaceutical manager</li><li>Medical equipment manager</li><li>Health information technology manager</li><li>Public health administrator</li><li>Quality improvement manager</li><li>Patient safety manager</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for healthcare management graduates is over $100,000 per year.</li><li>Salaries for healthcare management graduates can vary depending on the position, experience, and location.</li><li>However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of healthcare management is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that healthcare is delivered, and there will be a need for healthcare managers to adapt to these changes.</li><li>Some of the emerging technologies that are driving the demand for healthcare managers include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>Telehealth</li><li>Robotics</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Increased Efficiency</strong></p><ul><li>The healthcare industry is facing increasing pressure to become more efficient.</li><li>Healthcare managers will need to find ways to improve efficiency without sacrificing quality of care.</li></ul><p style="margin-left:0px;"><strong>Demand for Improved Patient Outcomes</strong></p><ul><li>Healthcare managers will also need to find ways to improve patient outcomes.</li><li>This may involve implementing new technologies, improving communication between providers, or finding ways to reduce wait times.</li></ul><p style="margin-left:0px;"><strong>Demand for Leadership</strong></p><ul><li>Healthcare managers will need to be able to lead and motivate teams.</li><li>They will also need to be able to make difficult decisions and manage complex projects.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for healthcare managers can vary depending on the job and the company.</li><li>However, many healthcare management jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Healthcare Management is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled healthcare managers who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (21, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>The demand for software engineers is expected to grow significantly in the coming years.</li><li>This is due to the increasing reliance on technology in all aspects of our lives, from the way we work to the way we play.</li><li>Some of the most in-demand software engineering jobs include:<ul><li>Software developer</li><li>Software architect</li><li>Software engineer in test (SEI)</li><li>Data scientist</li><li>Machine learning engineer</li><li>Artificial intelligence engineer</li><li>Cybersecurity engineer</li><li>Cloud engineer</li><li>Full-stack engineer</li><li>DevOps engineer</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for software engineers is over $100,000 per year.</li><li>Salaries for software engineers can vary depending on the position, experience, and location.</li><li>However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of software engineering is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that software is developed and used, and there will be a need for software engineers to adapt to these changes.</li><li>Some of the emerging technologies that are driving the demand for software engineers include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>Blockchain</li><li>Quantum computing</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Innovation</strong></p><ul><li>Software engineers will be needed to develop new and innovative software solutions to meet the needs of businesses and consumers.</li><li>This will require software engineers to be creative and have a strong understanding of the latest technologies.</li></ul><p style="margin-left:0px;"><strong>Demand for Quality</strong></p><ul><li>Software engineers will be needed to ensure that the software they develop is of high quality and meets the needs of users.</li><li>This will require software engineers to have a strong understanding of software testing and quality assurance.</li></ul><p style="margin-left:0px;"><strong>Demand for Collaboration</strong></p><ul><li>Software engineers will need to be able to collaborate effectively with other engineers, product managers, and other stakeholders.</li><li>This will require software engineers to be able to communicate effectively and work well in a team environment.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for software engineers can vary depending on the job and the company.</li><li>However, many software engineering jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Software Engineering is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled software engineers who can adapt to the changing needs of the industry.</p><p><br>&nbsp;</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (22, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>The gaming and multimedia industry is one of the fastest-growing industries in the world.</li><li>It is estimated to generate over $180 billion in revenue annually and employ over 220 million people.</li><li>The industry offers a wide range of job opportunities, including:<ul><li>Game developers</li><li>Game designers</li><li>Game artists</li><li>Game programmers</li><li>Audio engineers</li><li>Video editors</li><li>Marketing and sales professionals</li><li>Business developers</li><li>Content creators</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>Salaries in the gaming and multimedia industry vary depending on the position, experience, and location.</li><li>However, the industry generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The gaming and multimedia industry is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that games are made and played, and there will be a need for skilled workers who can adapt to these changes.</li><li>Some of the emerging technologies that are driving the demand for gaming and multimedia professionals include:<ul><li>Virtual reality (VR)</li><li>Augmented reality (AR)</li><li>Artificial intelligence (AI)</li><li>Blockchain</li><li>Cloud computing</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Increased Realism</strong></p><ul><li>Gamers are demanding more realistic and immersive experiences.</li><li>This is driving the development of new technologies, such as VR and AR, that can create more realistic game worlds.</li></ul><p style="margin-left:0px;"><strong>Demand for More Engaging Content</strong></p><ul><li>Gamers are also demanding more engaging and interactive content.</li><li>This is driving the development of new game mechanics and storytelling techniques.</li></ul><p style="margin-left:0px;"><strong>Demand for Cross-Platform Play</strong></p><ul><li>Gamers are increasingly playing games across multiple platforms, such as PC, consoles, and mobile devices.</li><li>This is driving the development of games that can be played on multiple platforms.</li></ul><p style="margin-left:0px;"><strong>Demand for Diversity</strong></p><ul><li>The gaming and multimedia industry is becoming increasingly diverse.</li><li>This is driving the demand for games and content that reflect the diversity of the world.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for gaming and multimedia professionals can vary depending on the job and the company.</li><li>However, many gaming and multimedia jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Gaming and Multimedia is bright. The industry is expected to grow significantly in the coming years, and there will be a demand for skilled gaming and multimedia professionals who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (23, N'<p style="margin-left:0px;"><strong>Job Opportunities:</strong></p><ul><li>There are many different job opportunities available to psychology graduates, in a variety of settings. These include:<ul><li>Clinical psychology: Psychologists who work in this setting diagnose and treat mental health disorders.</li><li>Counseling psychology: Psychologists who work in this setting help people with personal, social, and career issues.</li><li>Industrial-organizational psychology: Psychologists who work in this setting apply psychology to the workplace, such as in employee selection and training.</li><li>School psychology: Psychologists who work in this setting provide assessment and intervention services to children and adolescents.</li><li>Forensic psychology: Psychologists who work in this setting apply psychology to the legal system, such as in assessing criminal responsibility and providing expert testimony.</li><li>Health psychology: Psychologists who work in this setting focus on the psychological aspects of health and illness.</li><li>Other: There are many other psychology-related jobs, such as research psychologist, marketing psychologist, and human factors psychologist.</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary:</strong></p><ul><li>The average salary for psychology graduates is \$75,000 per year. However, salaries can vary depending on the job, experience, and location.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology:</strong></p><ul><li>The field of psychology is constantly evolving, with new technologies being developed all the time. These technologies are changing the way that psychologists diagnose and treat mental health disorders, conduct research, and deliver interventions.<ul><li>For example, artificial intelligence (AI) is being used to develop new diagnostic tools and treatment interventions.</li><li>Virtual reality (VR) is being used to simulate real-world experiences, which can be helpful for exposure therapy and other treatments.</li><li>Big data analytics is being used to analyze large datasets of psychological data, which can help psychologists to identify patterns and trends.</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Mental Health Services:</strong></p><ul><li>There is a growing demand for mental health services, as people are increasingly aware of the importance of mental health. This is leading to an increase in the number of jobs in the mental health field.</li></ul><p style="margin-left:0px;"><strong>Demand for Diversity and Inclusion:</strong></p><ul><li>There is a growing demand for diversity and inclusion in the field of psychology. This is leading to an increase in the number of jobs that focus on these issues.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance:</strong></p><ul><li>The work-life balance for psychology graduates can vary depending on the job. However, many psychology jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of psychology is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled psychologists who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (24, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>Physics is a broad field with many different specializations, so there are many different job opportunities available to graduates.</li><li>Some of the most in-demand physics jobs include:<ul><li>Physicist</li><li>Engineer</li><li>Data scientist</li><li>Artificial intelligence researcher</li><li>Software developer</li><li>Teacher</li><li>Scientific researcher</li><li>Healthcare technologist</li><li>Renewable energy engineer</li><li>Materials scientist</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for physics graduates is over $100,000 per year.</li><li>Salaries for physics graduates can vary depending on the position, experience, and location.</li><li>However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of physics is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that we live and work, and there will be a need for physicists to develop and implement these technologies.</li><li>Some of the emerging technologies that are driving the demand for physicists include:<ul><li>Artificial intelligence (AI)</li><li>Quantum computing</li><li>Medical imaging</li><li>Renewable energy</li><li>Space exploration</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Problem-Solving Skills</strong></p><ul><li>Physics is a problem-solving field, and employers are looking for graduates who can think critically and come up with creative solutions to problems.</li><li>Physicists also need to be able to work independently and as part of a team.</li></ul><p style="margin-left:0px;"><strong>Demand for Creativity</strong></p><ul><li>Physics is a creative field, and employers are looking for graduates who can come up with new ideas and solutions to problems.</li><li>Physicists also need to be able to think outside the box and be innovative.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for physicists can vary depending on the job and the company.</li><li>However, many physics jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Physics is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled physicists who can adapt to the changing needs of the industry.</p><p style="margin-left:0px;">Here are some specific examples of how physics is being used in the real world today:</p><ul><li>Physics is used to develop new medical imaging technologies, such as MRI and CT scans.</li><li>Physics is used to develop new renewable energy technologies, such as solar and wind power.</li><li>Physics is used to develop new materials, such as graphene and carbon nanotubes.</li><li>Physics is used to develop new technologies for space exploration, such as spacecraft and satellites.</li><li>Physics is used to develop new technologies for national defense, such as radar and sonar.</li></ul><p style="margin-left:0px;">The scope of physics is vast and ever-changing. As new technologies are developed, there will be a need for physicists to help develop and implement these technologies. The future of physics is bright, and there will be a demand for skilled physicists in many different fields.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (25, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">International relations graduates can find jobs in a variety of fields, including:</p><ul><li>Government</li><li>Non-profit organizations</li><li>Think tanks</li><li>Consulting firms</li><li>International organizations</li><li>Business</li><li>Media</li><li>Education</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of international relations may be qualified for include:</p><ul><li>Diplomat</li><li>Foreign policy analyst</li><li>Development worker</li><li>Human rights advocate</li><li>Peacebuilding specialist</li><li>Business consultant</li><li>Journalist</li><li>Professor</li><li>Researcher</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for international relations graduates is over $70,000 per year.</li><li>Salaries for international relations graduates can vary depending on the position, experience, and location.</li><li>However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of international relations is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that we communicate and interact with each other, and they are also changing the way that we conduct international relations.</li><li>Some of the emerging technologies that are driving the demand for international relations experts include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>Social media</li><li>Virtual reality</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Global Problem-Solving</strong></p><ul><li>The world is facing a number of global challenges, such as climate change, poverty, and conflict.</li><li>There is a growing need for experts who can help to solve these problems.</li><li>International relations graduates are well-positioned to meet this demand, as they have the skills and knowledge to understand and address complex global issues.</li></ul><p style="margin-left:0px;"><strong>Demand for Cultural Understanding</strong></p><ul><li>The world is becoming increasingly interconnected, and there is a growing need for people who understand different cultures.</li><li>International relations graduates have the skills and knowledge to understand and appreciate different cultures, which is essential for effective international relations.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for international relations professionals can vary depending on the job and the organization.</li><li>However, many international relations jobs offer flexible work arrangements and the opportunity to travel.</li></ul><p style="margin-left:0px;">Overall, the future scope of International Relations is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled international relations experts who can help to address the challenges of the 21st century.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (26, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>Data science is a rapidly growing field, and there is a high demand for data scientists in a variety of industries.</li><li>Some of the most in-demand data science jobs include:<ul><li>Data scientist</li><li>Machine learning engineer</li><li>Data analyst</li><li>Business intelligence analyst</li><li>Data engineer</li><li>Data architect</li><li>Data visualization specialist</li><li>Data ethics consultant</li><li>Data privacy specialist</li><li>Data compliance officer</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for data scientists is over $110,000 per year.</li><li>Salaries for data scientists can vary depending on the position, experience, and location.</li><li>However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of data science is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that we collect, analyze, and use data.</li><li>Some of the emerging technologies that are driving the demand for data scientists include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>Natural language processing</li><li>Cloud computing</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Data-Driven Decision Making</strong></p><ul><li>More and more businesses are realizing the importance of data-driven decision making.</li><li>This means that they are looking for data scientists who can help them collect, analyze, and interpret data to make better decisions.</li></ul><p style="margin-left:0px;"><strong>Demand for Increased Transparency</strong></p><ul><li>There is also a growing demand for transparency in the use of data.</li><li>This means that businesses are looking for data scientists who can help them ensure that their data is being used ethically and responsibly.</li></ul><p style="margin-left:0px;"><strong>Demand for Creativity</strong></p><ul><li>Data science is a creative field, and employers are looking for graduates who can come up with new ideas and solutions to problems.</li><li>Data scientists also need to be able to think outside the box and be innovative.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for data scientists can vary depending on the job and the company.</li><li>However, many data science jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Data Science is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled data scientists who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (27, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>Environmental science is a broad field with many different specializations, so there are many different job opportunities available to graduates.</li><li>Some of the most in-demand environmental science jobs include:<ul><li>Environmental engineer</li><li>Environmental scientist</li><li>Environmental policy analyst</li><li>Environmental educator</li><li>Environmental consultant</li><li>Green building consultant</li><li>Sustainability analyst</li><li>Natural resource manager</li><li>Wildlife biologist</li><li>Conservationist</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for environmental science graduates is over $70,000 per year.</li><li>Salaries for environmental science graduates can vary depending on the position, experience, and location.</li><li>However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of environmental science is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that we study and manage the environment, and there will be a need for environmental scientists to develop and use these technologies.</li><li>Some of the emerging technologies that are driving the demand for environmental scientists include:<ul><li>Remote sensing</li><li>Geographic information systems (GIS)</li><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Sustainability</strong></p><ul><li>There is a growing demand for sustainability, which is the practice of meeting our needs without compromising the ability of future generations to meet their own needs.</li><li>Environmental scientists will be needed to help develop and implement sustainable practices.</li></ul><p style="margin-left:0px;"><strong>Demand for Climate Change Mitigation and Adaptation</strong></p><ul><li>Climate change is one of the most pressing environmental challenges of our time.</li><li>Environmental scientists will be needed to help mitigate climate change and adapt to its effects.</li></ul><p style="margin-left:0px;"><strong>Demand for Policymaking</strong></p><ul><li>Environmental scientists will be needed to help develop and implement environmental policy.</li><li>This may involve working with government agencies, businesses, or non-profit organizations.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for environmental scientists can vary depending on the job and the company.</li><li>However, many environmental science jobs offer flexible work arrangements and the opportunity to work outdoors.</li></ul><p style="margin-left:0px;">Overall, the future scope of Environmental Science is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled environmental scientists who can help address the environmental challenges of our time.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (28, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">Remote sensing and GIS are in high demand in a variety of industries, including:</p><ul><li>Agriculture</li><li>Forestry</li><li>Environmental science</li><li>Natural resources</li><li>Infrastructure</li><li>Urban planning</li><li>Disaster management</li><li>Climate change</li><li>Security</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of Remote Sensing and GIS may be qualified for include:</p><ul><li>Remote sensing analyst</li><li>GIS analyst</li><li>Cartographer</li><li>Data scientist</li><li>Environmental scientist</li><li>Natural resources manager</li><li>Urban planner</li><li>Disaster management specialist</li><li>Climate change analyst</li><li>Security analyst</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for remote sensing and GIS graduates is over $70,000 per year.</li><li>Salaries for remote sensing and GIS graduates can vary depending on the position, experience, and location.</li><li>However, the field generally offers competitive salaries, especially for specialized skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of remote sensing and GIS is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that we collect, analyze, and visualize spatial data.</li><li>Some of the emerging technologies that are driving the demand for remote sensing and GIS experts include:<ul><li>Unmanned aerial vehicles (UAVs)</li><li>Satellite imagery</li><li>LiDAR</li><li>Big data analytics</li><li>Artificial intelligence (AI)</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Sustainable Development</strong></p><ul><li>There is a growing demand for sustainable development, which is development that meets the needs of the present without compromising the ability of future generations to meet their own needs.</li><li>Remote sensing and GIS can be used to monitor and manage natural resources, track climate change, and plan sustainable development projects.</li></ul><p style="margin-left:0px;"><strong>Demand for Disaster Management</strong></p><ul><li>Remote sensing and GIS can be used to monitor and assess natural disasters, such as floods, earthquakes, and wildfires.</li><li>They can also be used to plan and implement disaster relief and recovery efforts.</li></ul><p style="margin-left:0px;"><strong>Demand for Security</strong></p><ul><li>Remote sensing and GIS can be used to monitor and secure borders, detect illegal activity, and track criminals.</li><li>They can also be used to plan and implement security operations.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for remote sensing and GIS professionals can vary depending on the job and the company.</li><li>However, many remote sensing and GIS jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Remote Sensing and GIS is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled remote sensing and GIS professionals who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (32, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">Civil engineers are in high demand in a variety of industries, including:</p><ul><li>Construction</li><li>Transportation</li><li>Water resources</li><li>Environmental engineering</li><li>Geotechnical engineering</li><li>Structural engineering</li><li>Municipal engineering</li><li>Industrial engineering</li><li>Energy engineering</li><li>Disaster management</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of civil engineering may be qualified for include:</p><ul><li>Civil engineer</li><li>Construction engineer</li><li>Transportation engineer</li><li>Water resources engineer</li><li>Environmental engineer</li><li>Geotechnical engineer</li><li>Structural engineer</li><li>Municipal engineer</li><li>Industrial engineer</li><li>Energy engineer</li><li>Disaster management engineer</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for civil engineers is over $80,000 per year.</li><li>Salaries for civil engineers can vary depending on the position, experience, and location.</li><li>Engineers with specialized skills, such as experience in structural engineering or transportation engineering, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of civil engineering is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that civil engineers design, construct, and maintain infrastructure.</li><li>Some of the emerging technologies that are driving the demand for civil engineers include:<ul><li>Artificial intelligence (AI)</li><li>Building information modeling (BIM)</li><li>3D printing</li><li>Drones</li><li>Self-driving vehicles</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Sustainable Infrastructure</strong></p><ul><li>There is a growing demand for sustainable infrastructure, which is infrastructure that minimizes its environmental impact.</li><li>Civil engineers will be needed to design and construct sustainable infrastructure that meets the needs of the population.</li></ul><p style="margin-left:0px;"><strong>Demand for Resilient Infrastructure</strong></p><ul><li>There is also a growing demand for resilient infrastructure, which is infrastructure that can withstand natural disasters and other shocks.</li><li>Civil engineers will be needed to design and construct resilient infrastructure that protects people and property from harm.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>Civil engineers typically work regular hours, although there may be some on-call requirements.</li><li>The job can be demanding, but it is also rewarding to work in a field that is essential to the development and maintenance of our infrastructure.</li></ul><p style="margin-left:0px;">Overall, the future scope of Civil Engineering is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled civil engineers who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (33, N'<p style="margin-left:0px;"><strong>Job Opportunities:</strong></p><ul><li>Chemistry is a broad field with many different specializations, so there are many different job opportunities available to graduates. Some of the most in-demand chemistry jobs include:<ul><li>Analytical chemist</li><li>Environmental chemist</li><li>Forensic chemist</li><li>Materials scientist</li><li>Pharmaceutical chemist</li><li>Petroleum chemist</li><li>Polymer chemist</li><li>Toxicologist</li><li>Research scientist</li><li>Professor</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary:</strong></p><ul><li>The average salary for chemistry graduates is over $60,000 per year. Salaries for chemistry graduates can vary depending on the position, experience, and location. However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology:</strong></p><ul><li>The field of chemistry is constantly evolving, with new technologies being developed all the time. These technologies are changing the way that chemicals are made and used, and there will be a need for chemists to develop and apply these technologies. Some of the emerging technologies that are driving the demand for chemists include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Nanotechnology</li><li>3D printing</li><li>Green chemistry</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for New Products and Materials:</strong></p><ul><li>There is a growing demand for new products and materials, and chemists will be needed to develop these products and materials.</li><li>For example, chemists are working on developing new materials that can be used to make lighter, stronger, and more fuel-efficient cars.</li></ul><p style="margin-left:0px;"><strong>Demand for Environmental Remediation:</strong></p><ul><li>There is also a growing demand for environmental remediation, and chemists will be needed to develop technologies to clean up pollution and contaminated sites.</li><li>For example, chemists are working on developing new ways to remove pollutants from water and air.</li></ul><p style="margin-left:0px;"><strong>Demand for Drug Development:</strong></p><ul><li>The pharmaceutical industry is a major employer of chemists, and there is a constant need for new drugs to treat diseases.</li><li>Chemists are involved in all aspects of drug development, from the discovery of new compounds to the testing and approval of new drugs.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance:</strong></p><ul><li>The work-life balance for chemists can vary depending on the job and the company. However, many chemistry jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Chemistry is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled chemists who can adapt to the changing needs of the industry.</p><p><br>&nbsp;</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (39, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><p style="margin-left:0px;">Computer engineers are in high demand in a variety of industries, including:</p><ul><li>Information technology</li><li>Telecommunications</li><li>Electronics</li><li>Manufacturing</li><li>Aerospace</li><li>Defense</li><li>Healthcare</li><li>Automotive</li><li>Energy</li><li>Education</li></ul><p style="margin-left:0px;">Some specific job titles that graduates of Computer Engineering may be qualified for include:</p><ul><li>Computer engineer</li><li>Software engineer</li><li>Hardware engineer</li><li>Embedded systems engineer</li><li>Network engineer</li><li>Security engineer</li><li>Data scientist</li><li>Machine learning engineer</li><li>Artificial intelligence engineer</li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for computer engineers is over $100,000 per year.</li><li>Salaries for computer engineers can vary depending on the position, experience, and location.</li><li>Engineers with specialized skills, such as experience in artificial intelligence or machine learning, can command even higher salaries.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of computer engineering is constantly evolving, with new technologies being developed all the time.</li><li>Computer engineers who are up-to-date on the latest trends will be in high demand.</li><li>Some of the emerging technologies that are driving the demand for computer engineers include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Robotics</li><li>5G</li><li>Quantum computing</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Innovation</strong></p><ul><li>The world is becoming increasingly digital, and there is a growing demand for innovation in the field of computer engineering.</li><li>Computer engineers will be needed to develop new technologies that can solve problems and improve people''s lives.</li></ul><p style="margin-left:0px;"><strong>Demand for Sustainability</strong></p><ul><li>There is also a growing demand for sustainability in the field of computer engineering.</li><li>Computer engineers will be needed to develop new technologies that are more energy-efficient and environmentally friendly.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for computer engineers can vary depending on the job and the company.</li><li>However, many computer engineering jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Computer Engineering is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled computer engineers who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (40, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>Accounting and finance is a broad field with many different specializations, so there are many different job opportunities available to graduates.</li><li>Some of the most in-demand accounting and finance jobs include:<ul><li>Accountant</li><li>Auditor</li><li>Financial analyst</li><li>Investment banker</li><li>Financial manager</li><li>Risk manager</li><li>Treasury manager</li><li>Tax accountant</li><li>Financial advisor</li><li>Business consultant</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The average salary for accounting and finance graduates is over $70,000 per year.</li><li>Salaries for accounting and finance graduates can vary depending on the position, experience, and location.</li><li>However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of accounting and finance is constantly evolving, with new technologies being developed all the time.</li><li>These technologies are changing the way that accounting and finance is done, and there will be a need for accountants and finance professionals to adapt to these changes.</li><li>Some of the emerging technologies that are driving the demand for accountants and finance professionals include:<ul><li>Artificial intelligence (AI)</li><li>Machine learning</li><li>Big data analytics</li><li>Cloud computing</li><li>Robotic process automation (RPA)</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Data Analytics</strong></p><ul><li>There is a growing demand for data analytics skills in accounting and finance.</li><li>This is because businesses are increasingly using data to make decisions.</li><li>Accountants and finance professionals who can use data analytics will be in high demand.</li></ul><p style="margin-left:0px;"><strong>Demand for Sustainability</strong></p><ul><li>There is also a growing demand for sustainability skills in accounting and finance.</li><li>This is because businesses are increasingly looking for ways to reduce their environmental impact.</li><li>Accountants and finance professionals who can help businesses to measure and manage their environmental impact will be in high demand.</li></ul><p style="margin-left:0px;"><strong>Demand for Compliance</strong></p><ul><li>There is a growing demand for compliance skills in accounting and finance.</li><li>This is because businesses are increasingly subject to regulations.</li><li>Accountants and finance professionals who can help businesses to comply with regulations will be in high demand.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for accountants and finance professionals can vary depending on the job and the company.</li><li>However, many accounting and finance jobs offer flexible work arrangements and the opportunity to work from home.</li></ul><p style="margin-left:0px;">Overall, the future scope of Accounting and Finance is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled accountants and finance professionals who can adapt to the changing needs of the industry.</p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (41, N'<p style="margin-left:0px;"><strong>Job Opportunities</strong></p><ul><li>The aviation industry is expected to grow significantly in the coming years, creating new job opportunities in a variety of fields.</li><li>Some of the most in-demand aviation jobs include:<ul><li>Pilot</li><li>Flight attendant</li><li>Air traffic controller</li><li>Aircraft mechanic</li><li>Aviation safety inspector</li><li>Airline manager</li><li>Aerospace engineer</li><li>Aviation technician</li><li>Drone pilot</li><li>Air cargo handler</li></ul></li></ul><p style="margin-left:0px;"><strong>Salary</strong></p><ul><li>The salary for aviation jobs can vary depending on the position, experience, and location. However, the field generally offers competitive salaries, especially for high-demand skills.</li></ul><p style="margin-left:0px;"><strong>Advancements in Technology</strong></p><ul><li>The field of aviation is constantly evolving, with new technologies being developed all the time. These technologies are changing the way that we fly, and there will be a need for aviation professionals to adapt to these changes.</li><li>Some of the emerging technologies that are driving the demand for aviation professionals include:<ul><li>Artificial intelligence (AI)</li><li>Self-flying aircraft</li><li>Electric aircraft</li><li>Hypersonic aircraft</li><li>Drones</li></ul></li></ul><p style="margin-left:0px;"><strong>Demand for Increased Safety</strong></p><ul><li>The aviation industry is facing increasing pressure to improve safety. Aviation professionals will need to find ways to reduce the risk of accidents and incidents.</li></ul><p style="margin-left:0px;"><strong>Demand for Increased Efficiency</strong></p><ul><li>The aviation industry is also facing increasing pressure to become more efficient. Aviation professionals will need to find ways to reduce costs and improve productivity.</li></ul><p style="margin-left:0px;"><strong>Demand for Sustainability</strong></p><ul><li>The aviation industry is a major contributor to climate change. Aviation professionals will need to find ways to reduce the environmental impact of flying.</li></ul><p style="margin-left:0px;"><strong>Work-Life Balance</strong></p><ul><li>The work-life balance for aviation professionals can vary depending on the job and the company. However, many aviation jobs offer flexible work arrangements and the opportunity to travel.</li></ul><p style="margin-left:0px;">Overall, the future scope of Aviation is bright. The field is expected to grow significantly in the coming years, and there will be a demand for skilled aviation professionals who can adapt to the changing needs of the industry.</p>')
GO
SET IDENTITY_INSERT [dbo].[Institutes] ON 

INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (1, N'Air University Islamabad', N'info@au.edu.pk', N'051-0312331', 1, N'air', N'WVdseQ==', N'Apr 16 2023  1:37AM', 1, 1, 1, N'Shaheen Chowk ,E-9 Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (2, N'Capital University of Science & Technology', N'info@cust.edu.pk', N'+92-51-111555666', 1, N'cust', N'Y3VzdA==', N'Apr 16 2023  1:39AM', 1, 1, 1, N' Capital University of Science & Technology , Isla', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (3, N'Bahria University', N'info@bahria.edu.pk', N'051-9260002', 0, N'bahria', N'YmFocmlh', N'Apr 16 2023  1:39AM', 1, 1, 1, N' Shangrilla Road, Sector E-8 Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (4, N'COMSATS University Islamabad Campus ', N'alich@comsats.edu.pk', N'051-9247000', 1, N'comsatsisb', N'WTI5dGMyRjBjMmx6WWc9PQ==', N'Apr 16 2023  1:44AM', 1, 1, 1, N'Park Road Tarlai Kalan ,Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (5, N'Institute of Space Technology', N'info@ist.edu.pk', N'051-9075100', 0, N'ist', N'aXN0', N'Apr 16 2023  1:46AM', 1, 1, 1, N' 1, Islamabad Expressway, Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (6, N'International Islamic University', N'support@iiu.edu.pk', N'051-9257988', 1, N'iiu', N'aWl1', N'Apr 16 2023  1:49AM', 1, 1, 1, N'New Campus ,Sector H-10 Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (7, N'Allama Iqbal Open University', N'support@aiou.edu.pk', N'051 111 112 468', 1, N'aiou', N'YWlvdQ==', N'', 1, 1, 1, N'Allama Iqbal Open University Sector H-8 Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (8, N'Foundation University Islamabad', N'info@fui.edu.pk', N'051-111 384', 1, N'fu', N'ZnU=', N'', 1, 1, 1, N' Defence Avenue, DHA Phase-I, Islamabad ', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (9, N'Health Services Academy (HSA), Islamabad', N'academy@hsa.edu.pk', N'051 925 5590', 1, N'hsa', N'aHNh', N'', 1, 1, 1, N'Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (10, N'Ibadat International University, Islamabad', N'info@iiui.edu.pk', N'051 111 448 448', 1, N'iiu', N'aWl1', N'', 1, 1, 1, N'Japan Road Sihala', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (11, N'Muslim Youth (MY) University', N' admissions@myu.edu.pk', N'051-2355222', 1, N'myu', N'bXl1', N'', 1, 1, 1, N' Japan Road, Islamabad.', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (12, N'FEDERAL URDU UNIVERSITY OF ARTS, SCIENCES & TECHNO', N'info@fuuastisb.edu.pk', N'051-9252860', 1, N'fuu', N'ZnV1', N'', 1, 1, 1, N'Kuri Model Village Mozah Mohrian Near Bahria Encla', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (13, N'NATIONAL DEFENSE UNIVERSITY', N'registrar@ndu.edu.pk', N'051-9262068', 1, N'ndu', N'bmR1', N'', 1, 1, 1, N'Sector E-9, Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (14, N'National Skills University', N'pro@nsu.edu.pk', N'051-9250908', 1, N'nsu', N'bnN1', N'', 1, 1, 1, N'Faiz Ahmed Faiz Road,
H-8/1, Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (15, N'National University of Modern Languages', N'info@numl.edu.pk', N'051-90856878', 1, N'numl', N'bnVtbA==', N'', 1, 1, 1, N'H-9 Islamabad ,Pakistan.', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (16, N'National University of Sciences & Technology (NUST', N'dadmissions@nust.edu.pk', N'051-11116878', 1, N'nust', N'bnVzdA==', N'', 1, 1, 1, N'Sector H-12, Islamabad', 1234)
SET IDENTITY_INSERT [dbo].[Institutes] OFF
GO
SET IDENTITY_INSERT [dbo].[PassingDegrees] ON 

INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (1, N'Intermediate')
INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (2, N'A Levels')
INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (3, N'Matric')
INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (4, N'O Levels')
SET IDENTITY_INSERT [dbo].[PassingDegrees] OFF
GO
SET IDENTITY_INSERT [dbo].[PassingDSGroups] ON 

INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (1, N'Stats,Computer,Math', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (2, N'Physics,Chemistry,Math', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (3, N'Physics,Chemistry,Biology', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (4, N'Physics,Computer,Math', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (5, N'Physics,Chemistry,Math,Biology', 3)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (6, N'Physics,Chemistry,Math,Computer', 3)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (7, N'ALL Groups', 1)
SET IDENTITY_INSERT [dbo].[PassingDSGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramCategories] ON 

INSERT [dbo].[ProgramCategories] ([ProgramCategoryId], [CategoryName]) VALUES (1, N'Computer Science')
INSERT [dbo].[ProgramCategories] ([ProgramCategoryId], [CategoryName]) VALUES (2, N'Engineering')
INSERT [dbo].[ProgramCategories] ([ProgramCategoryId], [CategoryName]) VALUES (3, N'General Sciences')
SET IDENTITY_INSERT [dbo].[ProgramCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramDegreeDetails] ON 

INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (1, NULL, N'4Year', NULL, 50, 60, NULL, N'9000000', N'850000', N'78', N'True,True', 0, 0, 0, 1, N'7,', 1, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (2, NULL, N'4Year', 8, 60, 60, 2, N'800000', N'72000', N'67', N'True,True', 0, 0, 0, 1, N'4,2,1,', 2, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (3, NULL, N'4Year', 8, 60, 60, 2, N'800000', N'65000', N'78.45', N'True,True', 1, 1, 1, 1, N'3,4,', 7, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (4, NULL, N'4Year', 8, 60, 50, 2, N'750000', N'65000', NULL, N'True,True', 0, 0, 0, 1, N'1,2,4,', 9, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (5, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 8, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, 8, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, 6, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (8, NULL, NULL, NULL, 50, 60, 3, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'2,', 1, 3)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (10, NULL, NULL, NULL, 50, 60, 2, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 1, 4)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (12, NULL, N'4Year', 8, 50, 60, 2, N'100,960', N'35,000', N'78.4', N'True,False', 0, 0, 0, 1, N'2,3,4,1,', 1, 5)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (13, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 3, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (14, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 4, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (15, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 5, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (16, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 6, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (17, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 21, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (18, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 22, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (19, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 73, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (20, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 7, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (21, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 8, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (22, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 9, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (23, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 13, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (24, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 14, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (25, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 41, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (26, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 97, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (27, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 10, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (28, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 11, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (29, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 17, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (30, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 18, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (31, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 18, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (32, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 23, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (33, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 24, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (34, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 19, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (35, NULL, NULL, NULL, 50, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 20, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (43, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 1, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (44, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 2, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (45, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 2, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (46, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 3, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (47, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 4, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (48, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 14, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (49, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 55, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (50, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 58, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (51, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 75, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (52, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 23, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (53, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 61, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (54, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 62, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (55, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 63, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (56, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 65, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (57, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 67, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (58, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 67, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (59, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 70, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (60, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 47, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (61, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 11, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (62, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 18, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (63, NULL, NULL, NULL, 50, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, N'7,', 46, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProgramDegreeDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramDegrees] ON 

INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (1, N'BS Computer Science ', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (2, N'BS Information Technology', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (3, N'BS Cyber Security', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (4, N'BS Artificial Intelligence', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (5, N'BS Data Science', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (6, N'BS Creative Technology', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (7, N'BE Mechanical', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (8, N'BE Electrical(Telecom)', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (9, N'BS Avionics', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (10, N'BS Math', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (11, N'BS English', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (12, N'BS Pak Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (13, N'BE Electrical(Electronics)', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (14, N'BE Electrical(Power)', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (15, N'BE Mechatronics', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (16, N'BE Biomedical Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (17, N'BBA-Honors', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (18, N'BS Accounting and Finance', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (19, N'BS Tourism and Hospitality Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (20, N'BS Healthcare Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (21, N'BS Software Engineering', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (22, N'BS Gaming Multimedia', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (23, N'BS Psychology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (24, N'BS Physics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (25, N'BS International Relationship', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (26, N'BS DataScience', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (27, N'BS Environmental Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (28, N'BS Remote Sensing & GIS', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (29, N'BS Maritime Business & Management', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (30, N'BS Coastal & Marine Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (31, N'BS Media Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (32, N'BS Civil Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (33, N'BS Chemistry', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (34, N'BS German', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (35, N'BS Punjabi', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (36, N'BS Balochi', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (37, N' BS Pashto', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (38, N'BE Materials and Surface ', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (39, N'BE Computer Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (40, N'BS Accounting and Finance', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (41, N'BS Aviation Management', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (42, N'BS Tourism and Hospitality Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (43, N'BS Healthcare Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (44, N'BS Psychology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (45, N'BS Supply Chain Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (46, N'BS Economics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (47, N'BS Geology/Geophysics/Environmental Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (48, N'BS Geo sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (49, N'BS Social Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (50, N'BS Public Health', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (51, N'BS Media Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (52, N'BS Television Broadcasting & Digital Media', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (53, N'BS Biochemistry', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (54, N'BS Business Analytics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (55, N'BS Biotechnology', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (56, N'BS Microbiology', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (57, N'BS Accounting & Finance', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (58, N'BS Bioinformatics', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (59, N'BS Civil Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (60, N'BS Architecture', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (61, N'BS Design', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (62, N'BS Fine Arts', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (63, N'BS Interior Design', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (64, N'BS in Biosciences', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (65, N'BS Food Science and Nutrition', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (66, N'BS Chemical Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (67, N'BS Chemistry', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (68, N'BS Civil Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (69, N'BS Development Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (70, N'BS Geology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (71, N'BS Geophysics', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (72, N'BS Economics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (73, N'BS Computer Engineering', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (74, N'BS Environmental Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (75, N'BS Biotechnology', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (76, N'BS Media and Communication Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (77, N'BS Psychology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (78, N'BS Accounting and Finance', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (79, N'BS Business Administration', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (80, N'BS Mathematics', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (81, N'BS Mechanical Engineering', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (82, N'BS Computer Arts', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (83, N'BS Medical Lab Technology', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (84, N'BS Vision Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (85, N'BS Nursing', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (86, N'BS Medical Imaging Sciences', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (87, N'BS Business Analytics ', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (88, N'BS Commerce', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (89, N'BS Project Management', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (90, N'BS Public Administration', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (91, N'BS History', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (92, N'BS Pakistan Studies', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (93, N'BS Media & Communication', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (94, N'BS Political Science', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (95, N'BS Sociology', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (96, N'Bachelors of Business Administration', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (97, N'BS International Relations (Bridge Program)', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (98, N'BS Sports Sciences and Physical Education', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (99, N'BS Peace & Conflict Studies', 3)
GO
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (100, N'BS Mass Communication', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (101, N'BS Islamic Thought and Culture', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (102, N'BS Urdu (Bridging)', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (103, N'BS Urdu Hons', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (104, N'BS Urdu Foreigners', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (105, N'BS Educational Leadership', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (106, N'BS Early Childhood Care and Education', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (107, N'BS Health and Physical Education', 3)
SET IDENTITY_INSERT [dbo].[ProgramDegrees] OFF
GO
INSERT [dbo].[StdFsc] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (1, N'Physics,Chemistry,Math', N'Rwp', N'970', N'1100', N'60', N'2021', N'Punjab College')
INSERT [dbo].[StdFsc] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (2, N'Physics,Chemistry,Math', N'Rwp', N'1100', N'1100', N'89', N'2022', N'siddeeq')
INSERT [dbo].[StdFsc] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (3, N'Physics,Chemistry,Math', N'Rwp', N'989', N'1100', N'89', N'2021', N'Punjab college information technology ')
GO
INSERT [dbo].[StdMatric] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (1, N'Physics,Chemistry,Math,Biology', N'Rwp', N'970', N'1100', N'88', N'2019', N'Al Ahmed')
INSERT [dbo].[StdMatric] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (3, N'Physics,Chemistry,Math,Biology', N'Rwp', N'968', N'1100', N'87', N'2019', N'Siddeeq')
GO
INSERT [dbo].[StudentInfo] ([SID], [FirstName], [FatherName], [Gender], [StdCnic], [DateOfBirth], [City], [Address], [StdMobileNumber], [Email]) VALUES (3, N'Rehan Akhtar ', N'Muhammad Akhtar ', N'Male', N'37405-3988888-8', N'2023-04-04', N'Rawalpindi', N'kk13c st 02 ', N'0314-5582717', N'rehan.akhtar.985@gmail.com')
INSERT [dbo].[StudentInfo] ([SID], [FirstName], [FatherName], [Gender], [StdCnic], [DateOfBirth], [City], [Address], [StdMobileNumber], [Email]) VALUES (1, N'Muhammad Awab Ahmed', N'Mustafa', N'Male', N'2324234324', N'2023-04-05', N'Rawalpindi', N'Dhoke Kashmirian d/k 325  street no 15 Rawalpindi', N'03411889638', N'muhammadawab82002@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[TypeOfs] ON 

INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (1, N'University')
INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (2, N'College')
INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (3, N'School')
INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (4, N'Madrisa')
SET IDENTITY_INSERT [dbo].[TypeOfs] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (1, N'Awab', N'Ahmed', N'awab@gmail.com', N'YXdhYg==', N'03411899638', N'Rawalpindi', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (2, N'Rehan', N'Akhtar', N'rehan@gmail.com', N'cmVoYW4=', N'03145582717', N'Rawalpindi', N'Female', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (3, N'Muhammad', N'Ahmed', N'rehan@gmail.com', N'cmVoYW4xMjM=', N'03435345', N'Rawalpindi', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (4, N'Saad', N'Minhas', N'saadr8840@gmail.com', N'MTIz', N'+923477848411', N'Rawalpindi', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (5, N'Tahir ', N'Mehmood ', N'tm448028@gmail.com', N'OWJnNjMwNXRhaGly', N'03345504576', N'Rawalpindi ', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (6, N'asim', N'ali', N'yesiamrana@gmail.com', N'MTIzNA==', N'03214700454', N'Islamabad', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (7, N'asim', N'ali', N'yesiamrana@gamil.com', N'MTIzNA==', N'03214700454', N'Islamabad ', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (8, N'muhammad ', N'aashir', N'aashirzubair84@gmail.com', N'MTIzNDU=', N'03335293875', N'islamabad', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (9, N'Asim', N'Ali', N'asim@gmail.com', N'YXNpbQ==', N'342332434', N'Islamabad', N'Male', N'User')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
/****** Object:  StoredProcedure [dbo].[A_SP_GetError]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[A_SP_GetError]
as
begin
select * from ExceptionHandelling
end
GO
/****** Object:  StoredProcedure [dbo].[A_SP_SaveAdmissionInfo]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[A_SP_SaveAdmissionInfo]
@InstituteId int,
@admission_open_close bit
as
begin
update Institutes set admission_open_close = @admission_open_close where InstituteId=@InstituteId;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AddCategoryWithID]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AddCategoryWithID]
@CAID int
as
begin
select * from ProgramCategories
where ProgramCategoryId=@CAID 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AddDegreeWithID]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_AddDegreeWithID]
@DID int
as
begin
select * from ProgramDegrees
where ProgramDegreeId=@DID 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AddProgramDegreeDetailsById]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_AddProgramDegreeDetailsById]
@DDID int
as
begin
select * from ProgramDegreeDetails
where ProgramDegreeDetailsId=@DDID 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteCities]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeleteCities]
@CityId int
as
begin
delete from Cities
where CityId = @CityId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteFsc]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_DeleteFsc]
@SID int
as
begin
Delete FROM StdFsc 
where 
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteInstitutes]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_DeleteInstitutes]
@InstituteId int
as
begin
delete from Institutes
where InstituteId = @InstituteId  
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteMatric]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeleteMatric]
@SID int
as
begin
Delete FROM StdMatric 
where 
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeletePassingDegrees]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_DeletePassingDegrees] 
@PassingDegreeId int
as
begin
delete from PassingDegrees
where 
PassingDegreeId=@PassingDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeletePassingDSGroups]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeletePassingDSGroups]
@PassingDSGroupsId int
as
begin
delete from PassingDSGroups 
where
PassingDSGroupsId=@PassingDSGroupsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProgramCategory]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DeleteProgramCategory]
@ID int
as
begin
DELETE FROM ProgramCategories
where 
ProgramCategoryId=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProgramDegree]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DeleteProgramDegree]
@ProgramDegreeId int
as
begin
DELETE FROM ProgramDegrees
where 
ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProgramDegreeDetails]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DeleteProgramDegreeDetails]
@ProgramDegreeDetailsId int
as
begin
DELETE FROM ProgramDegreeDetails
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteTypeOfs]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_DeleteTypeOfs]
@TypeOfId int
as
begin
delete from TypeOfs
where TypeOfId = @TypeOfId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCities]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetCities]
as
begin
select *from Cities
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCityById]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetCityById]
@CityId int 
as
begin
select * from Cities
where CityId = @CityId 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetFsc]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetFsc]
@SID int
as
begin
select * from StdFsc
where
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetFutureScopeById]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetFutureScopeById]
@ProgramDegreeId int
as
begin
select * from FutureScope where ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetInstituteBtId]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetInstituteBtId]
@InstituteId int 
as
begin
select * from Institutes
where InstituteId = @InstituteId 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetInstitutes]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetInstitutes]
as
begin
select InstituteId, Title, Email, Phone, UserName, [Password], CreatedOn, IsActive, CityId, TypeOfId, [Location], AdminId ,admission_open_close
from Institutes
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMatric]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetMatric]
@SID int
as
begin
select * from StdMatric
where
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPassingDegrees]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetPassingDegrees]
as
begin
select * from PassingDegrees
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetpassingDegreesById]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetpassingDegreesById]
@PassingDegreesId int
as
begin
select * from PassingDegrees
where
PassingDegreeId=@PassingDegreesId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPassingDSGroups]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetPassingDSGroups]
as
begin
select * from PassingDSGroups
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetpassingDSGroupsById]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetpassingDSGroupsById]
@PassingDSGroupsId int
as
begin
select * from PassingDSGroups
where
PassingDSGroupsId = @PassingDSGroupsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramCategory]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProgramCategory]
as
begin
Select * from ProgramCategories
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramDegree]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProgramDegree]
as
begin
Select * from ProgramDegrees
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramDegreeDetails]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProgramDegreeDetails]
as
begin
Select * from ProgramDegreeDetails
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramDegreeDetailsByInstituteId]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_GetProgramDegreeDetailsByInstituteId]
@InstituteId int
as
begin
Select pd.[ProgramDegreeDetailsId], 
pd.[Programs], 
pd.[Duration], 
pd.[TotalSemesters], 
pd.[Matric], 
pd.[FSC], 
pd.[BS], 
pd.[TotalFee], 
pd.[SemesterFee], 
pd.[ClosingMerit], 
pd.[ApprovedById], 
pd.[Morning], 
pd.[Evening], 
pd.[Weekened], 
pd.[CityId], 
pd.[PassingDegreeGroups], 
p.DegreeName, 
pd.[InstituteId] 
from ProgramDegreeDetails as pd
inner join ProgramDegrees as p
on
p.ProgramDegreeId=pd.ProgramDegreeId
where InstituteId=@InstituteId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramGroupsBYID]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetProgramGroupsBYID] 
@ID int,
@InstituteId int
as
begin
declare @passvales nvarchar(max)
set @passvales=(select top(1) PassingDegreeGroups  from  
ProgramDegreeDetails where ProgramDegreeDetailsId=@ID and InstituteId=@InstituteId)
select value, t.PassingDSGroups from STRING_SPLIT(@passvales,',') 
inner join PassingDSGroups as t
on
t.PassingDSGroupsId=value
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTableCounts]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_GetTableCounts]
as
BEGIN
select count(*) as CitiesCount,
(select count(*) from Institutes) as InstCount,
(select COUNT(*) from PassingDegrees) as PD,
(select COUNT(*) from PassingDSGroups) as PassingDSGroups,
(select COUNT(*) from ProgramDegrees) as ProgramDegrees,
(select COUNT(*) from UserInfo) as UserInfo,
(select COUNT(*) from Subjects) as Subjects

from Cities

end 
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTypeById]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTypeById]
@TypeOfId int 
as
begin
select * from TypeOfs
where TypeOfId = @TypeOfId 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTypeOfs]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTypeOfs]
as
begin
select *from TypeOfs
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserByName]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetUserByName]
@UserName nvarchar(50)
as
begin
select InstituteId, UserName, [Password]
from Institutes
where
UserName=@UserName
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveCities]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveCities]
@CityName nvarchar(50),
@CityCode nvarchar (50)
as
begin
insert into Cities( CityName, CityCode)
values ( @CityName, @CityCode)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveDescription]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveDescription]
@ProgramDegreeId int,
@Description nvarchar(4000)
as
begin
insert into FutureScope (ProgramDegreeId,Description) values(@ProgramDegreeId,@Description)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveInstitutes]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveInstitutes]	

@Title nvarchar(50), 
@Email nvarchar(50),
@Phone nvarchar(50),  

@UserName nvarchar(50),
@Password nvarchar(50),   
@CityId int, 
@TypeOfId int, 
@Location nvarchar(50),
@AdminId int,
@admission_open_close bit
as
begin
insert into Institutes( Title, Email, Phone, admission_open_close ,UserName, Password, CreatedOn, IsActive, CityId, TypeOfId, Location, AdminId)
values ( @Title, @Email, @Phone, @admission_open_close,@UserName,@Password,GETDATE() , 'true', @CityId, @TypeOfId, @Location, @AdminId)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SavePassingDegrees]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_SavePassingDegrees]

@Title nvarchar(50)
as
begin
insert into PassingDegrees(Title)values(@Title);
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SavePassingDSGroups]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SavePassingDSGroups]
@PassingDSGroups nvarchar(60),
@PassingDegreeId int
as
begin
insert into PassingDSGroups(PassingDSGroups,PassingDegreeId)values(@PassingDSGroups,@PassingDegreeId)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveProgramCategory]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SaveProgramCategory]
@CategoryName nvarchar(50)
as
begin
 INSERT INTO ProgramCategories(CategoryName) VALUES( @CategoryName)  
end 
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveProgramDegree]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SaveProgramDegree]
@DegreeName nvarchar(50),
@ProgramCategoryid int
as
begin
 INSERT INTO ProgramDegrees(DegreeName,ProgramCategoryId) VALUES( @DegreeName,@ProgramCategoryid)  
end 
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveProgramDegreeDetails]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveProgramDegreeDetails]
@Programs nvarchar(50)=null,
@Duration nvarchar(50)=null,
@TotalSemesters int=null,
@Matric int =null,
@FSC int =null,
@BS int=null,
@TotalFee nvarchar(50)=null,
@SemesterFee nvarchar(50)=null,
@ClosingMerit nvarchar(50)=null,
@ApprovedById int=null,
@Morning bit=null,
@Evening bit=null,
@Weekened bit=null,
@CityId int=null,
@PassingDegreeGroups nvarchar(60)=null,
@ProgramDegreeId int=null,
@InstituteId int=null
as
begin
 INSERT INTO ProgramDegreeDetails( Programs,Duration, TotalSemesters,Matric,FSC,BS,TotalFee,SemesterFee,ClosingMerit, ApprovedById,Morning, Evening, Weekened,CityId,PassingDegreeGroups, ProgramDegreeId, InstituteId) VALUES(@Programs,@Duration, @TotalSemesters,@Matric,@FSC,@BS, @TotalFee,@SemesterFee, @ClosingMerit, @ApprovedById, @Morning, @Evening, @Weekened,@CityId, @PassingDegreeGroups, @ProgramDegreeId, @InstituteId)  
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveRegistrationForm]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveRegistrationForm]
@Name nvarchar(50),
@Password nvarchar(50),
@Role nvarchar(50)

as 
begin 

insert into UserData (UserName,Password,Role) values(@Name,@Password,@Role)
end

GO
/****** Object:  StoredProcedure [dbo].[SP_SaveStdFsc]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SaveStdFsc]
@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
INSERT INTO StdFsc(SID,PassingDSGroup,Board_University,ObtainedMarks,TotalMarks,Percentage,PassingYear,Institute) values ( @SID,@PassingDSGroup,@Board_University,@ObtainedMarks,@TotalMarks,@Percentage,@PassingYear,@Institute)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveStdMatric]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveStdMatric]
@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
INSERT INTO StdMatric (SID,PassingDSGroup,Board_University,ObtainedMarks,TotalMarks,Percentage,PassingYear,Institute) values ( @SID,@PassingDSGroup,@Board_University,@ObtainedMarks,@TotalMarks,@Percentage,@PassingYear,@Institute)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveStudentInfo]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_SaveStudentInfo]
@SID int,
@FirstName nvarchar(50),
@FatherName nvarchar(50),
@Gender nvarchar(50),
@CNIC nvarchar(50),
@DateOfBirth nvarchar(50),
@City nvarchar(50),
@Address nvarchar(50),
@StudentMobileNo nvarchar(50),
@Email nvarchar(50)
as
begin
insert into StudentInfo(SID,FirstName,FatherName,Gender,StdCnic,DateOfBirth,City,Address,StdMobileNumber,Email)values(@SID,@FirstName,@FatherName,@Gender,@CNIC,@DateOfBirth,@City,@Address,@StudentMobileNo,@Email)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveTypeOfs]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_SaveTypeOfs]
@Type nvarchar(50)
as
begin
insert into TypeOfs([Type])
values (@Type)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateCities]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateCities]
@CityId int,
@CityName nvarchar(50),
@CityCode nvarchar (50)
as
begin
update Cities
set
CityName = @CityName,
CityCode = @CityCode 
where CityId = @CityId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateDescription]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateDescription]
@ProgramDegreeId int,
@Description nvarchar(4000)
as
begin
update FutureScope set ProgramDegreeId=@ProgramDegreeId , Description=@Description where ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateInstitute]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdateInstitute]
@InstituteId int, 
@Title nvarchar(50), 
@Email nvarchar(50),
@Phone nvarchar(50),  

@UserName nvarchar(50), 
@Password nvarchar(50), 
@CreatedOn nvarchar(50), 
@IsActive bit, 
@CityId int, 
@TypeOfId int, 
@Location nvarchar(50),
@AdminId int
as
begin
update Institutes
set  
Title = @Title, 
Email = @Email, 
Phone = @Phone, 
 
UserName = @UserName, 
[Password] = @Password, 
CreatedOn = @CreatedOn, 
IsActive = @IsActive, 
CityId = @CityId, 
TypeOfId = @TypeOfId, 
[Location] = @Location, 
AdminId = @AdminId
where InstituteId = @InstituteId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdatePassingDegree]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdatePassingDegree]
@id int,
@title nvarchar(50)
as
begin
update PassingDegrees
set 
Title=@title
where 
PassingDegreeId=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdatePassingDSGroups]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdatePassingDSGroups]
@PassingDSGroupsId int,
@passingDSGroups nvarchar(60),
@passingDegreeId int
as
begin
update PassingDSGroups
set 
PassingDSGroups=@passingDSGroups,
PassingDegreeId=@passingDegreeId
where 
PassingDSGroupsId=@PassingDSGroupsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProgramCategory]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_UpdateProgramCategory]
@ProgramCategoryId int,
@CategoryName nvarchar(50)
as 
begin 
update ProgramCategories
set
CategoryName=@CategoryName
where 
ProgramCategoryId=@ProgramCategoryId
end

GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProgramDegree]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_UpdateProgramDegree]
@ProgramDegreeId int,
@DegreeName nvarchar(50),
@ProgramCategoryid nvarchar(50)
as 
begin 
update ProgramDegrees
set
DegreeName=@DegreeName,
ProgramCategoryid =@ProgramCategoryid 
where 
ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProgramDegreeDetails]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdateProgramDegreeDetails] 
@Programs nvarchar(50)=null,
@Duration nvarchar(50)=null,
@TotalSemesters int=null,
@Matric int =null,
@FSC int =null,
@BS int=null,
@TotalFee nvarchar(50)=null,
@SemesterFee nvarchar(50)=null,
@ClosingMerit nvarchar(50)=null,
@ApprovedById nvarchar(50)=null,
@Morning bit=null,
@Evening bit=null,
@Weekened bit=null,
@CityId int=null,
@PassingDegreeGroups nvarchar(60)=null,
@ProgramDegreeId int=null,
@InstituteId int=null,
@ProgramDegreeDetailsId int,
@type nvarchar(20)
as
begin

if(@type='shift')
	begin
		update ProgramDegreeDetails
		set 
		Morning=@Morning, 
		Evening=@Evening, 
		Weekened=@Weekened
		where 
		ProgramDegreeDetailsId=@ProgramDegreeDetailsId
	end
else if(@type='FEE')
	begin
		update ProgramDegreeDetails
		set
		TotalFee=@TotalFee,
		SemesterFee=@SemesterFee
		where 
		ProgramDegreeDetailsId=@ProgramDegreeDetailsId
	end
else if(@type='Approvedby')
begin
update ProgramDegreeDetails
set
ApprovedById=@ApprovedById
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end

else if(@type='Criteria')
begin
update ProgramDegreeDetails
set
Matric=@Matric,
FSC=@FSC,
BS=@BS
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
else if(@type='ClosingMerit')
begin
update ProgramDegreeDetails
set
ClosingMerit=@ClosingMerit
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
else if(@type='TotalSemesters')
begin
update ProgramDegreeDetails
set
TotalSemesters=@TotalSemesters
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end

else if(@type='Duration')
begin
update ProgramDegreeDetails
set
Duration=@Duration
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end

else if(@type='Groups')
begin
update ProgramDegreeDetails
set
PassingDegreeGroups=@PassingDegreeGroups
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
end


GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateTypeOfs]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateTypeOfs]
@TypeOfId int,
@Type nvarchar(50)
as
begin
update TypeOfs
set
Type = @Type 
where TypeOfId = @TypeOfId
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_DeleteStudentInfobyID]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_DeleteStudentInfobyID]
@SID int
as
begin
delete from StudentInfo
where SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetDepartmentCountByGroupIdAndCityId]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetDepartmentCountByGroupIdAndCityId]
@CityId int,
@PDSGID nvarchar(50),
@Percentage int
as 
begin
select count(p.InstituteId) as Departments, i.admission_open_close,i.Title,p.InstituteId from ProgramDegreeDetails as p
inner join Institutes as i 
on
i.InstituteId=p.InstituteId
where (p.PassingDegreeGroups like CONCAT('%',@PDSGID, '%')  or p.PassingDegreeGroups like CONCAT('%',7, '%'))
and p.CityId=@CityId and @Percentage>=p.FSC
group by p.InstituteId, i.Title,i.admission_open_close
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetDepartmentDetails]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetDepartmentDetails]
@PDSGID nvarchar(50),
@InstituteID int
as
begin
select 
p.[Duration],
p.[TotalSemesters], 
p.[Matric],
p.[FSC],
p.[TotalFee],
p.[SemesterFee],
p.[ClosingMerit],
p.[ProgramDegreeId], 
p.[InstituteId],
p.ProgramDegreeId,
pd.DegreeName 
from ProgramDegreeDetails as p
inner join ProgramDegrees as pd
on pd.ProgramDegreeId=p.ProgramDegreeId
where (( p.PassingDegreeGroups like CONCAT('%',@PDSGID, '%') or  p.PassingDegreeGroups like CONCAT('%',7, '%') )and p.InstituteId=@InstituteID)
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetProgramDegreeByInstituteId]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[U_SP_GetProgramDegreeByInstituteId]
@InstituteId int
as
begin
Select pd.[ProgramDegreeDetailsId], 
pd.[Programs], 
pd.[Duration], 
pd.[TotalSemesters], 
pd.[Matric], 
pd.[FSC], 
pd.[BS], 
pd.[TotalFee], 
pd.[SemesterFee], 
pd.[ClosingMerit], 
pd.[ApprovedById], 
pd.[Morning], 
pd.[Evening], 
pd.[Weekened], 
pd.[CityId], 
pd.[PassingDegreeGroups], 
p.ProgramDegreeId,
p.DegreeName,
pd.[InstituteId] 
from ProgramDegreeDetails as pd
inner join ProgramDegrees as p
on
p.ProgramDegreeId=pd.ProgramDegreeId
where InstituteId=@InstituteId
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetResultById]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetResultById] 
@PDSGID nvarchar(50)
as 
begin
select
P.PassingDegreeGroups,
I.Title,
I.InstituteId,
P.ProgramDegreeId,
PD.DegreeName,
C.CityId,
C.CityName
from Institutes as I
inner join ProgramDegreeDetails as P 
on p.InstituteId = I.InstituteId 
inner join ProgramDegrees as PD 
on PD.ProgramDegreeId = P.ProgramDegreeId
inner join Cities as C 
on C.CityId=P.CityId

where P.PassingDegreeGroups like  CONCAT('%',@PDSGID, '%');
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetStudentInfobyID]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_GetStudentInfobyID] 

@StdId int
as
begin
select * from StudentInfo
where SID=@StdId
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetUserByName]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetUserByName]
@Email nvarchar(50)
as
begin
select * from UserInfo
where 
Email =@Email
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_SaveSignUp]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_SaveSignUp]
@FirstName nvarchar(50),
@LastName nvarchar(50),
@Email nvarchar(50),
@Password nvarchar(50),
@ContactNo nvarchar(50),
@City nvarchar(50),
@Gender nvarchar(50),
@Role nvarchar(50)
as
begin
Insert into UserInfo (FirstName,LastName,Email,Password,ContactNo,City,Gender,Role) values (@FirstName,@LastName,@Email,@Password,@ContactNo,@City,@Gender,@Role)
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_StoreError]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_StoreError] 
@Err nvarchar(500)
as
begin
insert into ExceptionHandelling ([DateTime],Exception) values (GetDate() ,@Err)
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_UpdateFSCInfo]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_UpdateFSCInfo]
@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
update StdFsc
set
PassingDSGroup=@PassingDSGroup,
Board_University=@Board_University,
ObtainedMarks=@ObtainedMarks,
TotalMarks=@TotalMarks,
Percentage=@Percentage,
PassingYear=@PassingYear,
Institute=@Institute
where SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_UpdateMatricInfo]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_UpdateMatricInfo]

@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
update StdMatric
set
PassingDSGroup=@PassingDSGroup,
Board_University=@Board_University,
ObtainedMarks=@ObtainedMarks,
TotalMarks=@TotalMarks,
Percentage=@Percentage,
PassingYear=@PassingYear,
Institute=@Institute
where SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_UpdatePassword]    Script Date: 8/23/2023 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[U_SP_UpdatePassword]
@UserId int,
@Password nvarchar(30)
as
begin
Update UserInfo set Password=@Password where UserId=@UserId; 
end
GO
USE [master]
GO
ALTER DATABASE [db_pkversity] SET  READ_WRITE 
GO
