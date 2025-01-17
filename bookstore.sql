USE [authentication]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/2/2024 10:28:19 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DOB] [datetime2](7) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Status] [varchar](30) NULL,
	[CustomerId] [nvarchar](450) NULL,
	[EmployeeId] [nvarchar](450) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Discount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/2/2024 10:28:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240701131200_CustomUserData', N'8.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'086a5aac-cc7f-4806-9161-c7f02ac173ae', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'42dcd5ca-0c58-43a9-9601-5514aea4595a', N'Employee', N'EMPLOYEE', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e482117c-71e5-484f-8e88-1e64c2da3670', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'05ff3731-8809-4dd1-a13f-21853300a37c', N'086a5aac-cc7f-4806-9161-c7f02ac173ae')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'407caeaa-5f99-479c-b20d-1dbc4c26f942', N'e482117c-71e5-484f-8e88-1e64c2da3670')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [DOB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'05ff3731-8809-4dd1-a13f-21853300a37c', N'Ngọc Trân', CAST(N'2002-11-11T00:00:00.0000000' AS DateTime2), N'tran@gmail.com', N'TRAN@GMAIL.COM', N'tran@gmail.com', N'TRAN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEEsih9ZgC2vAaayyLNdgC4wFqO7V9rngor33k0sBPjRs9Ti8J9Clnvy19bK0dxeBiQ==', N'ZKTOMDJRPLEBOSHGKBRQL7TC7PZEYZT7', N'8fb86b1b-b652-47df-8969-d238cf6863ef', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [DOB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'407caeaa-5f99-479c-b20d-1dbc4c26f942', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'admin@abc.com', N'ADMIN@ABC.COM', N'admin@abc.com', N'ADMIN@ABC.COM', 1, N'AQAAAAIAAYagAAAAEDqAZlaaHkmusCLj/e+YMEEllWMwS6SeaLfHGqIRplSQhngcTh+RYJn5v4PD/EOCCg==', N'WFUDDJ7L7FVCBU46NTPJ2ECHCHIQLRPE', N'9e532cfe-0ead-4fd3-b7ba-8bacc2635943', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Fantasy')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Romance')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Literature')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Fiction')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Date], [Status], [CustomerId], [EmployeeId]) VALUES (1, CAST(N'2024-07-02T00:00:00.000' AS DateTime), NULL, N'407caeaa-5f99-479c-b20d-1dbc4c26f942', NULL)
INSERT [dbo].[Order] ([Id], [Date], [Status], [CustomerId], [EmployeeId]) VALUES (2, CAST(N'2024-07-02T00:00:00.000' AS DateTime), NULL, N'05ff3731-8809-4dd1-a13f-21853300a37c', NULL)
INSERT [dbo].[Order] ([Id], [Date], [Status], [CustomerId], [EmployeeId]) VALUES (3, CAST(N'2024-07-02T00:00:00.000' AS DateTime), NULL, N'407caeaa-5f99-479c-b20d-1dbc4c26f942', NULL)
INSERT [dbo].[Order] ([Id], [Date], [Status], [CustomerId], [EmployeeId]) VALUES (4, CAST(N'2024-07-02T00:00:00.000' AS DateTime), NULL, N'407caeaa-5f99-479c-b20d-1dbc4c26f942', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price], [Discount]) VALUES (1, 1, 1, 1, 14.39, 0.25)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price], [Discount]) VALUES (2, 1, 2, 1, 10, 0)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price], [Discount]) VALUES (3, 2, 2, 2, 10, 0)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price], [Discount]) VALUES (4, 2, 3, 1, 14.11, 0.1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price], [Discount]) VALUES (5, 3, 1, 1, 14.39, 0.25)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price], [Discount]) VALUES (6, 3, 2, 1, 10, 0)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (1, N'The Herbwitchs Apprentice', 14.39, 0.25, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (2, N'The Herbwitch Princess', 10, 0, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (3, N'Fourth Wing', 14.11, 0.1, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (4, N'Persuasion', 17.39, 0.3, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (5, N'Alice in Wonderland', 19.99, 0.3, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (6, N'Belles Library', 140.55, 0.3, 3)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (7, N'Disney Sleeping Beauty', 18.5, 0.15, 4)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (8, N'The Uncrowned Queen', 14.65, 0.2, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (9, N'The Bright Heart of the Dragon Queen', 15, 0.3, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (10, N'Taloned Heart', 15, 0.3, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (11, N'Torn Heart: The Dragon’s Wake', 20.31, 0.25, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (12, N'A Court of Mist and Fury', 10, 0.15, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (13, N'Court of Thorns and Roses', 9.99, 0.05, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (14, N'A Court of Wings and Ruin', 9.99, 0.05, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (15, N'The Moonstone', 18.8, 0.3, 4)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (16, N'Harry Potter and the Sorcerer’s Stone', 10, 0.25, 3)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (17, N'The Mystery of Blackholm Lane', 15, 0.25, 4)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (18, N'Garlic and the Vampire', 7.5, 0, 4)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (19, N'The Girl from the Other Side', 10.37, 0.3, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (20, N'Court of Tricksters', 19.16, 0.25, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (21, N'Married to the Mad Marquess', 13.99, 0.1, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (22, N'Lost in Wonder', 9.99, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (23, N'The Moonfire Bride', 9.99, 0.1, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (24, N'The Girl Who Fell Beneath the Sea', 10, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (25, N'Daughter of the Moon Goddess', 7.59, 0.1, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (26, N'The Year of Shadows', 6.39, 0.1, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (27, N'The Silver Gate" by Kristin Bailey', 9.5, 0.05, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (28, N'Peter Pan in Wonderland', 57.92, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (29, N'Fierce Fairytales', 13.81, 0.15, 4)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (30, N'The Selection', 7.99, 0.05, 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
