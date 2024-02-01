USE [master]
GO
/****** Object:  Database [PhoneEcommerce]    Script Date: 2/1/2024 8:33:02 PM ******/
CREATE DATABASE [PhoneEcommerce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhoneEcommerce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PhoneEcommerce.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PhoneEcommerce_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PhoneEcommerce_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PhoneEcommerce] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhoneEcommerce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhoneEcommerce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PhoneEcommerce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhoneEcommerce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhoneEcommerce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PhoneEcommerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhoneEcommerce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhoneEcommerce] SET  MULTI_USER 
GO
ALTER DATABASE [PhoneEcommerce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhoneEcommerce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhoneEcommerce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhoneEcommerce] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PhoneEcommerce] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PhoneEcommerce] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PhoneEcommerce] SET QUERY_STORE = ON
GO
ALTER DATABASE [PhoneEcommerce] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PhoneEcommerce]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/1/2024 8:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2/1/2024 8:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [nvarchar](100) NOT NULL,
	[ProductId] [nvarchar](20) NULL,
	[ProductName] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [int] NULL,
	[Urlimg] [nvarchar](250) NULL,
	[Total] [int] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/1/2024 8:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [nvarchar](100) NOT NULL,
	[ProductId] [nvarchar](20) NULL,
	[ProductName] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[UnitPrice] [numeric](28, 8) NULL,
	[Filter] [nvarchar](255) NULL,
	[Urlimg] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/1/2024 8:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 2/1/2024 8:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231215110244_int', N'7.0.12')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231217030350_initTaiKhoan', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231217154927_initRole', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231222145637_intdb', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240129134102_cart1', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240130040637_edit', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240130044307_upcolcart', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240130051013_up', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240130054320_up', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240130055517_up2', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240130060737_up', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240130060856_up', N'7.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240130062437_eo', N'7.0.14')
GO
INSERT [dbo].[Cart] ([Id], [ProductId], [ProductName], [Quantity], [UnitPrice], [Urlimg], [Total], [IsActive]) VALUES (N'00000000-0000-0000-0000-000000000000', NULL, N'IPhone 3', 2, 10, NULL, 20, NULL)
GO
INSERT [dbo].[Cart] ([Id], [ProductId], [ProductName], [Quantity], [UnitPrice], [Urlimg], [Total], [IsActive]) VALUES (N'2846d83b-3cb2-4f5f-8bfa-a642b628db43', NULL, N'IPhone 3', 2, 20, NULL, 40, NULL)
GO
INSERT [dbo].[Cart] ([Id], [ProductId], [ProductName], [Quantity], [UnitPrice], [Urlimg], [Total], [IsActive]) VALUES (N'7248e558-2e17-470c-a637-9fa86852769f', N'dmeo', N'demo', NULL, 9, N'[{"Urlimg":"\\img\\2db0e69f-ed1a-4792-b81d-b94fe198d2ae-logoip.png","Position":1}]', NULL, 1)
GO
INSERT [dbo].[Cart] ([Id], [ProductId], [ProductName], [Quantity], [UnitPrice], [Urlimg], [Total], [IsActive]) VALUES (N'9d746729-e573-4b6d-ae68-8c8b41512d70', NULL, N'IPhone 3', 2, 10, NULL, 20, NULL)
GO
INSERT [dbo].[Cart] ([Id], [ProductId], [ProductName], [Quantity], [UnitPrice], [Urlimg], [Total], [IsActive]) VALUES (N'bdd72a1c-d03d-492e-a302-407e600bf4ba', N'IP-14 Pro', N'Iphone14 Pro', NULL, 25, N'[{"Urlimg":"\\img\\9e3cba63-4f51-4d62-b8c3-56c52961b779-logoip.png","Position":1}]', NULL, 1)
GO
INSERT [dbo].[Cart] ([Id], [ProductId], [ProductName], [Quantity], [UnitPrice], [Urlimg], [Total], [IsActive]) VALUES (N'c09e6a9f-7b58-44ee-975b-4fb8e3420f29', N'IP-13 Pro', N'Iphone13 Pro', NULL, 1, N'[{"Urlimg":"\\img\\fff70a23-25f2-458a-a670-28941c1013cb-logoip.png","Position":1}]', NULL, 1)
GO
INSERT [dbo].[Cart] ([Id], [ProductId], [ProductName], [Quantity], [UnitPrice], [Urlimg], [Total], [IsActive]) VALUES (N'ca6b0995-c761-4351-b9a2-beecad5a3bcc', N'IP-13 Max', N'Iphone13 Max', NULL, 15, N'[{"Urlimg":"\\img\\eb43c9ee-04de-4d48-bbb8-7d5a96a01e59-logoip.png","Position":1}]', NULL, 1)
GO
INSERT [dbo].[Cart] ([Id], [ProductId], [ProductName], [Quantity], [UnitPrice], [Urlimg], [Total], [IsActive]) VALUES (N'ea94be2b-9056-4475-9923-8cbb7350ee38', N'IP-14 Max', N'Iphone14 Max', NULL, 20, N'[{"Urlimg":"\\img\\eb43c9ee-04de-4d48-bbb8-7d5a96a01e59-logoip.png","Position":1}]', NULL, 1)
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'21bf6ac4-7755-4dc3-930f-54a2d7450d39', N'IP 3', N'IPhone 3', N'Demo', CAST(1.00000000 AS Numeric(28, 8)), N'IP 3 IPhone 3', N'[{"Urlimg":"\\img\\4b551a9d-f968-4c32-9f02-b4abfa3e5720-logoip.png","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'39b25760-cfb8-477f-84ee-12e90a1834e6', N'Test', N'Test', N'Test', CAST(9.00000000 AS Numeric(28, 8)), N'Test Test', N'[{"Urlimg":"\\img\\4e5bcd2b-64c2-44df-86ab-39d5b480d884-logoip.png","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'47cbd6cb-8d20-4bf9-a814-fab30aaece6a', N'demo2@', N'DEMO2', N'demo', CAST(0.00000000 AS Numeric(28, 8)), N'demo2@ DEMO2', N'[{"Urlimg":"\\img\\577b22eb-9bfa-4ee4-9b5d-0155f12ee950-Demo.jpg","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'623eb7ef-48bd-459c-8c8b-1dc85930e54f', N'IP 20', N'IPhone 20', N'Demo', CAST(9.00000000 AS Numeric(28, 8)), N'IP 20 IPhone 20', N'[{"Urlimg":"\\img\\c5d12dcc-8038-4003-af31-81953fef179d-logoip.png","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'7248e558-2e17-470c-a637-9fa86852769f', N'dmeo', N'demo', N'demo', CAST(9.00000000 AS Numeric(28, 8)), N'dmeo demo', N'[{"Urlimg":"\\img\\2db0e69f-ed1a-4792-b81d-b94fe198d2ae-logoip.png","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'8b814e9c-28cb-4a5b-a174-2bcfcb90d32a', N'demo2', N'DEMO2', N'demo', CAST(0.00000000 AS Numeric(28, 8)), N'demo2 DEMO2', N'[{"Urlimg":"\\img\\3c0d86bb-c79e-4cd9-91bd-523cb832ff5c-Demo.jpg","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'b40f8a03-0c27-45f7-a571-774ee6f6c2be', N'IP-14', N'Iphone14', N'Black', CAST(2.00000000 AS Numeric(28, 8)), N'IP-14 Iphone14', N'[{"Urlimg":"\\img\\eeb58f3a-e246-4a6e-94b5-8be05251d705-logoip.png","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'bdd72a1c-d03d-492e-a302-407e600bf4ba', N'IP-14 Pro', N'Iphone14 Pro', N'Black', CAST(25.00000000 AS Numeric(28, 8)), N'IP-14 Pro Iphone14 Pro', N'[{"Urlimg":"\\img\\9e3cba63-4f51-4d62-b8c3-56c52961b779-logoip.png","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'c09e6a9f-7b58-44ee-975b-4fb8e3420f29', N'IP-13 Pro', N'Iphone13 Pro', N'Black', CAST(1.00000000 AS Numeric(28, 8)), N'IP-13 Pro Iphone13 Pro', N'[{"Urlimg":"\\img\\fff70a23-25f2-458a-a670-28941c1013cb-logoip.png","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'ca6b0995-c761-4351-b9a2-beecad5a3bcc', N'IP-13 Max', N'Iphone13 Max', N'Black', CAST(15.00000000 AS Numeric(28, 8)), N'IP-13 Max Iphone13 Max', N'[{"Urlimg":"\\img\\eb43c9ee-04de-4d48-bbb8-7d5a96a01e59-logoip.png","Position":1}]')
GO
INSERT [dbo].[Product] ([Id], [ProductId], [ProductName], [Description], [UnitPrice], [Filter], [Urlimg]) VALUES (N'ea94be2b-9056-4475-9923-8cbb7350ee38', N'IP-14 Pro Max', N'Iphone14 Pro Max', N'Black', CAST(15.00000000 AS Numeric(28, 8)), N'IP-14 Pro Max Iphone14 Pro Max', N'[{"Urlimg":"\\img\\911c12e8-401b-4b7e-9360-b2e0d6f11e26-logoip.png","Position":1}]')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'1ac6497d-ad8c-4c8e-acfe-1923b25abc10', N'áđá', N'ádá')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'3b1464d2-1259-4ea0-b0c5-eccfbefb0997', N'User', N'User')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'4fe04f7d-4b15-4aae-8552-54bc00b7b155', N'ưềừ', N'ừ')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'8a7e932b-8ed0-423d-a2c8-dc89fc7da806', N'Usr', N'user')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'945f3e24-b04b-4a29-95d7-8c0001556c09', N'Demo', N'Admin')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'96402e99-3d2c-4de2-9696-26829882a0cd', N'demodk', N'user')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'9f8ce97b-6d1d-4c52-85e4-4082e81532b2', N'ưềừgdfgfdg', N'ừ')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'a6b12b6d-d1a8-4944-b291-c67fc37fee7b', N'm', N'admin')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'a6c7b7c8-994d-4c99-9771-bddd47f1e534', N'admin@a', N'admin')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'a9697f5d-411c-4d22-b4d4-870f3d153cd1', N'AD', N'Admin')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'b561e286-c3ac-440f-9865-7b8fd37e9c32', N'admin', N'admin')
GO
INSERT [dbo].[Roles] ([Id], [UserName], [RoleName]) VALUES (N'cf0da8ff-8d6f-4901-8853-fae80c00caa2', N'ád', N'áđá')
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1ac6497d-ad8c-4c8e-acfe-1923b25abc10', N'áđá', N'ÁĐÁ', N'đá', N'ĐÁ', 1, N'ádsad', N'34219aff-b5dd-4b81-9590-8cae3ff60479', N'89ce6401-cd58-4bf3-b90e-70babb440d47', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3b1464d2-1259-4ea0-b0c5-eccfbefb0997', N'User', N'USER', N'User@gmail.com', N'USER@GMAIL.COM', 1, N'User', N'9155d2b9-57fa-44b3-9d94-3b789623e46d', N'a8b7bfcc-eec8-4bf8-8092-52a7d06fd834', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4fe04f7d-4b15-4aae-8552-54bc00b7b155', N'ưềừ', N'ƯỀỪ', N'fwfwè', N'FWFWÈ', 1, N'ưè', N'c9e74c9c-c965-4808-8b13-50dccc29399a', N'0320315b-02e7-48c0-b5d8-cee2bca94a1e', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8a7e932b-8ed0-423d-a2c8-dc89fc7da806', N'Usr', N'USR', N'usr@usr', N'USR@USR', 1, N'LgxtnF932jsTmoIFcVCYxgIqgrDEFutSK12xjg5wiP8=', N'05b9f2f8-b0ef-4141-a982-9105cccc540a', N'db8b02b0-c276-460b-9037-8e7c25deb6ab', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'945f3e24-b04b-4a29-95d7-8c0001556c09', N'Demo', N'DEMO', N'Demo@gmail.com', N'DEMO@GMAIL.COM', 1, N'Demo@123', N'ecebda36-d623-41a7-b134-532477c2c00c', N'0fb7ef63-7c15-4b19-b0d3-466167145420', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'96402e99-3d2c-4de2-9696-26829882a0cd', N'demodk', N'DEMODK', N'demodk@a', N'DEMODK@A', 1, N'123', N'600f086c-4c86-4191-a57c-0e571c11e68f', N'a5b507ef-eb0c-4f30-aab3-b75825977aaf', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9f8ce97b-6d1d-4c52-85e4-4082e81532b2', N'ưềừgdfgfdg', N'ƯỀỪGDFGFDG', N'fwfwègdfgfdg', N'FWFWÈGDFGFDG', 1, N'ưè', N'b06fc32b-66ce-48b7-ba5a-06d6dbe8c4cb', N'cbf68379-e611-4ef1-864f-e993613e4095', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a6b12b6d-d1a8-4944-b291-c67fc37fee7b', N'm', N'M', N'm@gmail.com', N'M@GMAIL.COM', 1, N'YsZqel3XDDFGYYBjw0TlMebUtZ43mAhEPOlis6vWPFo=', N'988629bd-4254-4f4f-bda0-c2ad39d69f14', N'561e3efa-8ec9-4d64-9581-676bff078623', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a6c7b7c8-994d-4c99-9771-bddd47f1e534', N'admin@a', N'ADMIN@A', N'admin@a', N'ADMIN@A', 1, N'ZZc0x8+02flPo5wx9MyqGtCuhieGbMROi4UySit9FPY=', N'dbdcae90-5f98-4c14-934b-a44f99be5434', N'907b4550-c8cd-4e81-ac20-6e5d38889d29', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a9697f5d-411c-4d22-b4d4-870f3d153cd1', N'AD', N'AD', N'AD@gmail.com', N'AD@GMAIL.COM', 1, N'C8J0g2nt3+CBwWG5N1oxfMGJ/z9S1p0Wof4b4r0zkhg=', N'b0074f1c-f1ce-429d-bf03-f96f02b32c49', N'513f3f5d-c60a-41fc-97a2-3a918803c7f0', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b4657855-34c8-4eb2-862b-1f4ef66e6356', N'userdemo', N'USERDEMO', N'userdemo@a', N'USERDEMO@A', 1, N'U@123', N'cc262e3a-37ce-4aa2-a7d1-1e20f9595659', N'729afc43-dbe7-4e58-95dd-1cafe3206131', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b561e286-c3ac-440f-9865-7b8fd37e9c32', N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'Admin@123', N'65d28a6b-d383-4921-9483-869756662433', N'91b40582-d0f6-4c95-94fa-37cebbca8449', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c47a853b-d75f-43c7-8e43-540ff08d6b26', N'Udemo', N'UDEMO', N'Udemo@a', N'UDEMO@A', 1, N'Udemo@123', N'123c02e2-9c08-4a5e-8734-833bfc4b3043', N'0fd2f2fb-ad83-4d6f-a6fd-95708f3bfa45', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[TaiKhoans] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cf0da8ff-8d6f-4901-8853-fae80c00caa2', N'ád', N'ÁD', N'chungvihao@gmail.com', N'CHUNGVIHAO@GMAIL.COM', 1, N'yuGEGgd0+hirGsS5WNkHlXafBzAd6XhRQ5otC73naZI=', N'24c972be-4a09-4670-9ebf-27bd96adba36', N'bbc7f483-3b98-497b-84c4-d31ea7cb060f', NULL, 0, 0, NULL, 0, 0)
GO
USE [master]
GO
ALTER DATABASE [PhoneEcommerce] SET  READ_WRITE 
GO
