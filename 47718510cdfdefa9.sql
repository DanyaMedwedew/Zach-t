USE [Ломбард]
GO
/****** Object:  Table [dbo].[Категории товаров]    Script Date: 03.04.2020 13:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Категории товаров](
	[Код категории товаров] [int] NULL,
	[Название] [nvarchar](50) NULL,
	[Примечание] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 03.04.2020 13:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[Код клиента] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[Номер паспорта] [char](10) NOT NULL,
	[Серия паспорта] [char](10) NOT NULL,
	[Дата выдачи паспорта] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сдача в ломбард]    Script Date: 03.04.2020 13:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сдача в ломбард](
	[Код] [int] NULL,
	[Код категории товаров] [int] NULL,
	[Код клиента] [int] NULL,
	[Описание товара] [nvarchar](50) NULL,
	[Дата сдачи] [date] NULL,
	[[Дата возврата] [date] NULL,
	[Сумма] [money] NULL,
	[Комиссионные] [money] NULL
) ON [PRIMARY]
GO
