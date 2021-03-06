USE [ENIWINE]
GO
/****** Object:  Table [dbo].[Parametros]    Script Date: 19/02/2018 11:49:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametros](
	[ParametroID] [int] IDENTITY(1,1) NOT NULL,
	[ParametroTipoID] [int] NOT NULL,
	[Chave] [int] NOT NULL,
	[Valor] [varchar](256) NOT NULL,
 CONSTRAINT [PK_Parametros] PRIMARY KEY CLUSTERED 
(
	[ParametroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParametroTipo]    Script Date: 19/02/2018 11:49:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroTipo](
	[ParametrosTipoID] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](256) NOT NULL,
 CONSTRAINT [PK_ParametroTipo] PRIMARY KEY CLUSTERED 
(
	[ParametrosTipoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Placar]    Script Date: 19/02/2018 11:49:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Placar](
	[PlacarID] [bigint] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [bigint] NOT NULL,
	[DataInicio] [datetime] NOT NULL,
	[DataFim] [datetime] NULL,
	[QuantidadeRodadas] [int] NOT NULL,
 CONSTRAINT [PK_Placar] PRIMARY KEY CLUSTERED 
(
	[PlacarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 19/02/2018 11:49:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioID] [bigint] IDENTITY(1,1) NOT NULL,
	[NickName] [varchar](32) NOT NULL,
	[NomeCompleto] [varchar](256) NOT NULL,
	[Email] [varchar](256) NOT NULL,
	[Password] [varchar](256) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Parametros] ON 

INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (1, 1, 1, N'Esqueleto')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (2, 1, 2, N'Khan')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (3, 1, 3, N'DarthVader')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (4, 1, 4, N'SideshowBob')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (5, 1, 5, N'Coringa')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (6, 1, 6, N'DuendeVerde')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (7, 2, 1, N'Eternia')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (8, 2, 2, N'Vulcano')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (9, 2, 3, N'Tatooine')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (10, 2, 4, N'Springfield')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (11, 2, 5, N'Gotham')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (12, 2, 6, N'NovaYork')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (13, 2, 7, N'Siberia')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (14, 2, 8, N'MachuPicchu')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (15, 2, 9, N'ShowDoKatinguele')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (16, 2, 10, N'SaoPaulo')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (17, 3, 1, N'CajadoDevastador')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (18, 3, 2, N'Phaser')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (19, 3, 3, N'Peixeira')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (20, 3, 4, N'Trezoitao')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (21, 3, 5, N'SabreDeLuz')
INSERT [dbo].[Parametros] ([ParametroID], [ParametroTipoID], [Chave], [Valor]) VALUES (22, 3, 6, N'Bomba')
SET IDENTITY_INSERT [dbo].[Parametros] OFF
SET IDENTITY_INSERT [dbo].[ParametroTipo] ON 

INSERT [dbo].[ParametroTipo] ([ParametrosTipoID], [Tipo]) VALUES (1, N'Suspeitos')
INSERT [dbo].[ParametroTipo] ([ParametrosTipoID], [Tipo]) VALUES (2, N'Locais')
INSERT [dbo].[ParametroTipo] ([ParametrosTipoID], [Tipo]) VALUES (3, N'Armas')
SET IDENTITY_INSERT [dbo].[ParametroTipo] OFF
ALTER TABLE [dbo].[Placar] ADD  DEFAULT (getdate()) FOR [DataInicio]
GO
ALTER TABLE [dbo].[Placar] ADD  DEFAULT ((1)) FOR [QuantidadeRodadas]
GO
ALTER TABLE [dbo].[Parametros]  WITH CHECK ADD  CONSTRAINT [FK_Parametros_ParametroTipo] FOREIGN KEY([ParametroTipoID])
REFERENCES [dbo].[ParametroTipo] ([ParametrosTipoID])
GO
ALTER TABLE [dbo].[Parametros] CHECK CONSTRAINT [FK_Parametros_ParametroTipo]
GO
ALTER TABLE [dbo].[Placar]  WITH CHECK ADD  CONSTRAINT [FK_Placar_Usuarios] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Placar] CHECK CONSTRAINT [FK_Placar_Usuarios]
GO
