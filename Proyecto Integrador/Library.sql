USE [master]
GO
/****** Object:  Database [library]    Script Date: 18/07/2019 03:58:01 a.m. ******/
CREATE DATABASE [library]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'library', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\library.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'library_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\library_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [library] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [library].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [library] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [library] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [library] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [library] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [library] SET ARITHABORT OFF 
GO
ALTER DATABASE [library] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [library] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [library] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [library] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [library] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [library] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [library] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [library] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [library] SET  ENABLE_BROKER 
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [library] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [library] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [library] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [library] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [library] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [library] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [library] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [library] SET  MULTI_USER 
GO
ALTER DATABASE [library] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [library] SET DB_CHAINING OFF 
GO
ALTER DATABASE [library] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [library] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [library] SET DELAYED_DURABILITY = DISABLED 
GO
USE [library]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 18/07/2019 03:58:01 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Authors](
	[ID] [int] NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[Nationality] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Books]    Script Date: 18/07/2019 03:58:01 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Books](
	[ISBNID] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[EditorialID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
	[GenderID] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ISBNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Editorials]    Script Date: 18/07/2019 03:58:01 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Editorials](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Editorials] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 18/07/2019 03:58:01 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genders](
	[ID] [int] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Authors] ([ID], [Author], [Nationality]) VALUES (1, N'Three Initiates', N'Egyptian')
INSERT [dbo].[Authors] ([ID], [Author], [Nationality]) VALUES (2, N'Spiesberger, Karl', N'German')
INSERT [dbo].[Authors] ([ID], [Author], [Nationality]) VALUES (3, N'Harris, E.E. ', N'American')
INSERT [dbo].[Authors] ([ID], [Author], [Nationality]) VALUES (4, N'Burnett, G', N'British')
INSERT [dbo].[Authors] ([ID], [Author], [Nationality]) VALUES (5, N'Weiss, Brian', N'American')
INSERT [dbo].[Authors] ([ID], [Author], [Nationality]) VALUES (6, N'Flood, Gavin', N'British')
INSERT [dbo].[Authors] ([ID], [Author], [Nationality]) VALUES (7, N'Semetsky, Inna ', N'American')
INSERT [dbo].[Authors] ([ID], [Author], [Nationality]) VALUES (8, N'Usui, Mikao', N'Japanese')
INSERT [dbo].[Authors] ([ID], [Author], [Nationality]) VALUES (9, N'Schimmel, Annemarie', N'German')
INSERT [dbo].[Books] ([ISBNID], [Title], [EditorialID], [AuthorID], [GenderID]) VALUES (1298765, N'The Mystery of Numbers ', 9, 9, 9)
INSERT [dbo].[Books] ([ISBNID], [Title], [EditorialID], [AuthorID], [GenderID]) VALUES (2125566, N'The Tantric Body', 6, 6, 6)
INSERT [dbo].[Books] ([ISBNID], [Title], [EditorialID], [AuthorID], [GenderID]) VALUES (3567123, N'Re-Symbolization of the Self', 7, 7, 7)
INSERT [dbo].[Books] ([ISBNID], [Title], [EditorialID], [AuthorID], [GenderID]) VALUES (5821359, N'Permaculture: a Beginner''s Guide', 4, 4, 4)
INSERT [dbo].[Books] ([ISBNID], [Title], [EditorialID], [AuthorID], [GenderID]) VALUES (6325478, N'Only Love Is Real: A Story of Soulmates Reunited ', 5, 5, 5)
INSERT [dbo].[Books] ([ISBNID], [Title], [EditorialID], [AuthorID], [GenderID]) VALUES (7891234, N'The Restitution of Metaphysics', 3, 3, 3)
INSERT [dbo].[Books] ([ISBNID], [Title], [EditorialID], [AuthorID], [GenderID]) VALUES (8564321, N'•	Reveal the Power of the Pendulum', 2, 2, 2)
INSERT [dbo].[Books] ([ISBNID], [Title], [EditorialID], [AuthorID], [GenderID]) VALUES (38562973, N'The Kybalion', 1, 1, 1)
INSERT [dbo].[Books] ([ISBNID], [Title], [EditorialID], [AuthorID], [GenderID]) VALUES (59778821, N'The Original Reiki Handbook ', 8, 8, 8)
INSERT [dbo].[Editorials] ([ID], [Name]) VALUES (1, N'Kier')
INSERT [dbo].[Editorials] ([ID], [Name]) VALUES (2, N'Germany Books')
INSERT [dbo].[Editorials] ([ID], [Name]) VALUES (3, N'Humanity Books')
INSERT [dbo].[Editorials] ([ID], [Name]) VALUES (4, N'Spiralseed')
INSERT [dbo].[Editorials] ([ID], [Name]) VALUES (5, N'Other Lifes')
INSERT [dbo].[Editorials] ([ID], [Name]) VALUES (6, N'I.B Taurus')
INSERT [dbo].[Editorials] ([ID], [Name]) VALUES (7, N'Sense Publishers')
INSERT [dbo].[Editorials] ([ID], [Name]) VALUES (8, N'Only Today')
INSERT [dbo].[Editorials] ([ID], [Name]) VALUES (9, N'Oxford University')
INSERT [dbo].[Genders] ([ID], [Gender]) VALUES (1, N'Hermetism')
INSERT [dbo].[Genders] ([ID], [Gender]) VALUES (2, N'Dowsing')
INSERT [dbo].[Genders] ([ID], [Gender]) VALUES (3, N'Methaphysic')
INSERT [dbo].[Genders] ([ID], [Gender]) VALUES (4, N'Permaculture')
INSERT [dbo].[Genders] ([ID], [Gender]) VALUES (5, N'Past life regression')
INSERT [dbo].[Genders] ([ID], [Gender]) VALUES (6, N'Tantra')
INSERT [dbo].[Genders] ([ID], [Gender]) VALUES (7, N'Tarot')
INSERT [dbo].[Genders] ([ID], [Gender]) VALUES (8, N'Reiki')
INSERT [dbo].[Genders] ([ID], [Gender]) VALUES (9, N'Numerology')
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Authors] ([ID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Editorials] FOREIGN KEY([EditorialID])
REFERENCES [dbo].[Editorials] ([ID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Editorials]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Genders] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Genders] ([ID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Genders]
GO
USE [master]
GO
ALTER DATABASE [library] SET  READ_WRITE 
GO
