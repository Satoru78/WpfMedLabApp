USE [MedLab]
GO
/****** Object:  Table [dbo].[Accountant]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accountant](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[IDService] [int] NOT NULL,
	[Invoice] [money] NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Accountant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Analyzer]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Analyzer](
	[ID] [int] NOT NULL,
	[ArrivalTime] [datetime] NOT NULL,
	[LeadTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Analyzer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceCompany]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCompany](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Adress] [nvarchar](100) NOT NULL,
	[INN] [int] NOT NULL,
	[PaymentAccount] [money] NOT NULL,
	[BIK] [int] NOT NULL,
 CONSTRAINT [PK_InsuranceCompany] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laborant]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laborant](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IPAdress] [nchar](20) NOT NULL,
	[Lastenter] [date] NOT NULL,
	[IDService] [int] NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Laborant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[IDService] [int] NOT NULL,
	[IDOrderStatus] [int] NOT NULL,
	[LeadTime] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[PSerias] [int] NOT NULL,
	[PNumder] [int] NOT NULL,
	[Phone] [nchar](30) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[PolicyNumber] [int] NOT NULL,
	[IDPolicyType] [int] NOT NULL,
	[IDInsuranceCompany] [int] NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PolicyType]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PolicyType_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Code] [nchar](1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Code] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[DeadLine] [date] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceRendered]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceRendered](
	[ID] [int] NOT NULL,
	[IDService] [int] NOT NULL,
	[Issued] [date] NOT NULL,
	[IDLaborant] [int] NOT NULL,
	[IDAnalyzer] [int] NOT NULL,
 CONSTRAINT [PK_ServiceRendered] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17.02.2022 17:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accountant] ([ID], [FirstName], [LastName], [Patronymic], [IDService], [Invoice], [IDRole]) VALUES (1, N'иванов', N'иван', N'иванович', 619, 1000.0000, N'b')
GO
INSERT [dbo].[Analyzer] ([ID], [ArrivalTime], [LeadTime]) VALUES (1, CAST(N'2002-11-12T00:00:00.000' AS DateTime), CAST(N'2002-11-12T12:00:00.000' AS DateTime))
INSERT [dbo].[Analyzer] ([ID], [ArrivalTime], [LeadTime]) VALUES (2, CAST(N'2002-11-11T00:00:00.000' AS DateTime), CAST(N'2002-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[InsuranceCompany] ([ID], [Title], [Adress], [INN], [PaymentAccount], [BIK]) VALUES (1, N'парамант', N'улица бульбуляторная ', 123455, 100.0000, 1222)
GO
INSERT [dbo].[Laborant] ([ID], [Name], [IPAdress], [Lastenter], [IDService], [IDRole]) VALUES (49, N'Nappie Redington', N'174.42.8.3          ', CAST(N'2020-06-05' AS Date), 548, N'l')
INSERT [dbo].[Laborant] ([ID], [Name], [IPAdress], [Lastenter], [IDService], [IDRole]) VALUES (64, N'Adan Semaine', N'76.252.15.218       ', CAST(N'2019-05-10' AS Date), 258, N'l')
INSERT [dbo].[Laborant] ([ID], [Name], [IPAdress], [Lastenter], [IDService], [IDRole]) VALUES (77, N'Gianina Trump', N'11.191.37.17        ', CAST(N'2020-03-08' AS Date), 258, N'l')
INSERT [dbo].[Laborant] ([ID], [Name], [IPAdress], [Lastenter], [IDService], [IDRole]) VALUES (80, N'Bud Douch', N'72.132.101.188      ', CAST(N'2020-06-02' AS Date), 287, N'l')
INSERT [dbo].[Laborant] ([ID], [Name], [IPAdress], [Lastenter], [IDService], [IDRole]) VALUES (99, N'Robinetta Jerzak', N'205.158.144.210     ', CAST(N'2019-11-12' AS Date), 659, N'l')
GO
INSERT [dbo].[Order] ([ID], [CreateDate], [IDService], [IDOrderStatus], [LeadTime]) VALUES (1, CAST(N'2002-01-12' AS Date), 619, 1, N'20 дней             ')
GO
INSERT [dbo].[OrderStatus] ([ID], [Title]) VALUES (1, N'Принят')
INSERT [dbo].[OrderStatus] ([ID], [Title]) VALUES (2, N'ожидается выполнение')
INSERT [dbo].[OrderStatus] ([ID], [Title]) VALUES (3, N'выполнен')
GO
INSERT [dbo].[Patient] ([ID], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PSerias], [PNumder], [Phone], [Email], [PolicyNumber], [IDPolicyType], [IDInsuranceCompany], [IDRole]) VALUES (1, N'раджабов', N'ислам', N'магомедович', CAST(N'2002-12-12' AS Date), 1213, 123233, N'89298809567                   ', N'tmfil@ru', 123, 1, 1, N'p')
GO
INSERT [dbo].[PolicyType] ([ID], [Title]) VALUES (1, N'добровольный')
INSERT [dbo].[PolicyType] ([ID], [Title]) VALUES (2, N'обязательный')
GO
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'a', N'admin')
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'b', N'accountant')
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'l', N'laborant')
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'p', N'patient')
GO
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (176, N'Билирубин общий', 103.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (229, N'СПИД', 342.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (258, N'Креатинин', 143.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (287, N'Волчаночный антикоагулянт', 290.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (311, N'Амилаза', 362.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (323, N'Глюкоза', 448.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (346, N'Общий белок', 396.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (415, N'Кальций общий', 420.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (501, N'Гепатит В', 177.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (543, N'Гепатит С', 290.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (548, N'Альбумин', 234.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (557, N'ВИЧ', 491.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (619, N'TSH', 263.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (659, N'Сифилис RPR', 444.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (797, N'АТ и АГ к ВИЧ 1/2', 371.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (836, N'Железо', 105.0000, NULL)
INSERT [dbo].[Service] ([Code], [Title], [Price], [DeadLine]) VALUES (855, N'Ковид IgM', 210.0000, NULL)
GO
INSERT [dbo].[ServiceRendered] ([ID], [IDService], [Issued], [IDLaborant], [IDAnalyzer]) VALUES (1, 619, CAST(N'2001-11-11' AS Date), 49, 1)
GO
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (1, N'chacking0', N'4tzqHdkqzo4', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (2, N'nmably1', N'ukM0e6', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (3, N'frolf2', N'7QpCwac0yi', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (4, N'lraden3', N'5Ydp2mz', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (5, N'bfollos4', N'ckmAJPQV', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (6, N'menterle5', N'0PRom6i', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (7, N'mpeaker6', N'0Tc5oRc', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (8, N'mrobichon7', N'LEwEjMlmE5X', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (9, N'srobken8', N'Cbmj3Yi', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (10, N'btidmas9', N'dYDHbBQfK', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (11, N'jfussiea', N'EGxXuLQ9', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (12, N'santonaccib', N'YcXAhY3Pja', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (13, N'nbountiffc', N'5xfyjS9ZULGA', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (14, N'cbenjefieldd', N'tQOsP0ei9TuD', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (15, N'ocorbyne', N'bG1ZIzwIoU', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (16, N'cstickinsf', N'QRYADbgNj', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (17, N'dclarageg', N'Yp59ZIDnWe', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (18, N'jmccawleyh', N'g58zLcmCYON', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (19, N'dbandi', N'yFAaYuVW', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (20, N'abutteryj', N'ttOFbWWGtD', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (21, N'kkinmank', N'qUr6fdWP6L5G', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (22, N'sskepperl', N'jHYN0v3', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (23, N'ayeolandm', N'QQezRBV9', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (24, N'cspeedingn', N'UCLYITfw2Vo', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (25, N'ascarisbricko', N'fzBcv6GbyCp', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (26, N'mthurbyp', N'wg0uIskqei', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (27, N'croxbroughq', N'67CVVym', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (28, N'pmccotterr', N'QG5tdzRpGZJ2', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (29, N'icallejas', N'aeDvZk8o9', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (30, N'nbroscht', N'DmPJt2', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (31, N'sallseppu', N't0ko0854Cpvv', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (32, N'eabbatucciv', N'gUtNdsDu', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (33, N'sgarnhamw', N'eml6RqbK', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (34, N'rkitchensidex', N'xaa7miQ7yB', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (35, N'udiy', N'dHqu78cU6NOP', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (36, N'mbeidebekez', N'F5T5spAU9A4O', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (37, N'bsavins10', N'l6sYf29NLN', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (38, N'sriby11', N'Va34LYqFh', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (39, N'sbirney12', N'Ggygo2ePsETs', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (40, N'ikleanthous13', N'3H0GS7a', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (41, N'mskerme14', N'wy1HWA', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (42, N'hcahey15', N'NSXcG9khd', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (43, N'trusling16', N'abol9dYC8e', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (44, N'jde17', N'gK6Hsl8Q', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (45, N'fmcleoid18', N'B9zr0N7cJw', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (46, N'nmegainey19', N'gph7QurFf', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (47, N'abliven1a', N'vVxlf94KpeX', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (48, N'mrossoni1b', N'nLXj2lS', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (49, N'nredington1c', N'DCbOb1SX', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (50, N'lfrancie1d', N'DoGeHWuAAM', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (51, N'ablowin1e', N'aQygVtMjN', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (52, N'vgoroni1f', N'bWr0QU', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (53, N'sgrafom1g', N'JcNcVDAouYzA', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (54, N'jgianneschi1h', N'oieX5u3sUfpD', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (55, N'ecollett1i', N'Y0uMyKB0W', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (56, N'bterrell1j', N'hswseW', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (57, N'dbifield1k', N'oYAQ4URihIA', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (58, N'bstaig1l', N'MygqEtjMtUbC', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (59, N'akennsley1m', N'CTUdBfJsy6qF', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (60, N'ebartak1n', N'y3t4H1', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (61, N'vwillshire1o', N'VFSLc2t', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (62, N'esavin1p', N'axnJY9s', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (63, N'pelsom1q', N'OXzMECG', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (64, N'asemaine1r', N'MdJRkHor5SP', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (65, N'cnorthrop1s', N'UIwCvTA7MRS0', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (66, N'reasson1t', N'3J0jgg9RWlXs', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (67, N'aboleyn1u', N'3q2mQdDRmtr', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (68, N'hscholfield1v', N'1Pbs3K6qXYB', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (69, N'ccowpe1w', N'VHr417Ft0', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (70, N'aeldon1x', N'rrywOQRmFKyh', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (71, N'kcollin1y', N'Q0ZV21vew0', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (72, N'ilarkins1z', N'DEFNpHtU', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (73, N'wlound20', N'a2G4Ihh2o', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (74, N'mgillogley21', N'EjUHfCUFqF', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (75, N'dmuccino22', N'E4okVgx', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (76, N'jleadbetter23', N'ZNsaKdgb', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (77, N'gtrump24', N'6XXY7IS26Ci', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (78, N'rleestut25', N'zq3C4rUR', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (79, N'janscott26', N'5maCRrCZLu', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (80, N'bdouch27', N'KAkwrli', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (81, N'cossenna28', N'vfKJkCeohOzZ', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (82, N'hizzat29', N'Uifdtu', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (83, N'egimeno2a', N'oF1hbmKlZ', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (84, N'sfierro2b', N'VjUrQ2', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (85, N'ntroup2c', N'KmDDYf1Pu', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (86, N'bpattenden2d', N'IOUkHpOn', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (87, N'acockman2e', N'fDKhK7OK', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (88, N'mhanscome2f', N'xBHzpa7eP0u', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (89, N'sleblanc2g', N'T2et1U5M', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (90, N'gciccoloi2h', N'w4dZ3hxiCiAg', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (91, N'ssayburn2i', N'1hTM7EVKaS', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (92, N'wgentiry2j', N'z2X9UH5', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (93, N'rwestall2k', N'xLgunbO9x6', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (94, N'ckulic2l', N'FLHYRN', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (95, N'lroux2m', N'98cCxHeeK31', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (96, N'mrolinson2n', N'faGzyW8hEca', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (97, N'sellgood2o', N'3do5MME', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (98, N'bretchless2p', N'WraGihh', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (99, N'rjerzak2q', N'hAp8jki', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (100, N'vboots2r', N'bgJfSDEVEQm6', N'l')
GO
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (101, N'laborant', N'laborant', N'l')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (102, N'accountant', N'accountant', N'b')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (103, N'admin', N'admin', N'a')
INSERT [dbo].[User] ([ID], [UserName], [Password], [IDRole]) VALUES (104, N'patient', N'patient', N'p')
GO
ALTER TABLE [dbo].[Accountant]  WITH CHECK ADD  CONSTRAINT [FK_Accountant_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[Accountant] CHECK CONSTRAINT [FK_Accountant_Role]
GO
ALTER TABLE [dbo].[Accountant]  WITH CHECK ADD  CONSTRAINT [FK_Accountant_Service] FOREIGN KEY([IDService])
REFERENCES [dbo].[Service] ([Code])
GO
ALTER TABLE [dbo].[Accountant] CHECK CONSTRAINT [FK_Accountant_Service]
GO
ALTER TABLE [dbo].[Laborant]  WITH CHECK ADD  CONSTRAINT [FK_Laborant_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[Laborant] CHECK CONSTRAINT [FK_Laborant_Role]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([IDOrderStatus])
REFERENCES [dbo].[OrderStatus] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Service] FOREIGN KEY([IDService])
REFERENCES [dbo].[Service] ([Code])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Service]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_InsuranceCompany] FOREIGN KEY([IDInsuranceCompany])
REFERENCES [dbo].[InsuranceCompany] ([ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_InsuranceCompany]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_PolicyType1] FOREIGN KEY([IDPolicyType])
REFERENCES [dbo].[PolicyType] ([ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_PolicyType1]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Role]
GO
ALTER TABLE [dbo].[ServiceRendered]  WITH CHECK ADD  CONSTRAINT [FK_ServiceRendered_Analyzer] FOREIGN KEY([IDAnalyzer])
REFERENCES [dbo].[Analyzer] ([ID])
GO
ALTER TABLE [dbo].[ServiceRendered] CHECK CONSTRAINT [FK_ServiceRendered_Analyzer]
GO
ALTER TABLE [dbo].[ServiceRendered]  WITH CHECK ADD  CONSTRAINT [FK_ServiceRendered_Laborant] FOREIGN KEY([IDLaborant])
REFERENCES [dbo].[Laborant] ([ID])
GO
ALTER TABLE [dbo].[ServiceRendered] CHECK CONSTRAINT [FK_ServiceRendered_Laborant]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
