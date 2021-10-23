CREATE DATABASE [Academika]
GO
USE [Academika]
GO
/****** Object:  Table [dbo].[ALUMNOS]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNOS](
	[legajo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[genero] [varchar](50) NULL,
	[id_tipo_doc] [int] NULL,
	[num_doc] [int] NULL,
	[calle] [varchar](50) NULL,
	[numero] [int] NULL,
	[id_situac_habit] [int] NULL,
	[fecha_nac] [date] NULL,
	[id_estado_civil] [int] NULL,
	[trabaja] [bit] NOT NULL,
	[id_tipo_trab] [int] NULL,
	[id_barrio] [int] NULL,
	[email] [varchar](50) NULL,
	[telefono] [int] NULL,
 CONSTRAINT [pk_alumnos] PRIMARY KEY CLUSTERED 
(
	[legajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CURSOS]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CURSOS](
	[id_curso] [int] IDENTITY(1,1) NOT NULL,
	[curso] [varchar](30) NOT NULL,
 CONSTRAINT [pk_cursos] PRIMARY KEY CLUSTERED 
(
	[id_curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARRERAS]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARRERAS](
	[id_carrera] [int] IDENTITY(1,1) NOT NULL,
	[carrera] [varchar](100) NOT NULL,
 CONSTRAINT [pk_carreras] PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONDICIONES]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONDICIONES](
	[id_condicion] [int] IDENTITY(1,1) NOT NULL,
	[condicion] [varchar](30) NOT NULL,
 CONSTRAINT [pk_condiciones] PRIMARY KEY CLUSTERED 
(
	[id_condicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIAS]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIAS](
	[id_materia] [int] IDENTITY(1,1) NOT NULL,
	[materia] [varchar](100) NOT NULL,
 CONSTRAINT [pk_materias] PRIMARY KEY CLUSTERED 
(
	[id_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALUMNOSxMATERIA]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNOSxMATERIA](
	[id_alumno_materia] [int] IDENTITY(1,1) NOT NULL,
	[legajo] [int] NULL,
	[id_materia] [int] NULL,
	[id_condicion] [int] NULL,
	[anio_cursado] [int] NULL,
 CONSTRAINT [pk_alumno_materia] PRIMARY KEY CLUSTERED 
(
	[id_alumno_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALUMNOSxCARRERA]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNOSxCARRERA](
	[id_carrera_alumno] [int] IDENTITY(1,1) NOT NULL,
	[legajo] [int] NULL,
	[id_carrera] [int] NULL,
	[anio_inscripcion] [int] NULL,
 CONSTRAINT [pk_carrera_alumno] PRIMARY KEY CLUSTERED 
(
	[id_carrera_alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALUMNOSxCURSO]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNOSxCURSO](
	[id_alumno_curso] [int] IDENTITY(1,1) NOT NULL,
	[legajo] [int] NULL,
	[id_curso] [int] NULL,
 CONSTRAINT [pk_alumno_curso] PRIMARY KEY CLUSTERED 
(
	[id_alumno_curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIASxCURSO]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIASxCURSO](
	[id_materia_curso] [int] IDENTITY(1,1) NOT NULL,
	[id_materia] [int] NULL,
	[id_curso] [int] NULL,
 CONSTRAINT [pk_materia_curso] PRIMARY KEY CLUSTERED 
(
	[id_materia_curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIASxCARRERA]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIASxCARRERA](
	[id_materias_carrera] [int] IDENTITY(1,1) NOT NULL,
	[id_carrera] [int] NULL,
	[id_materia] [int] NULL,
 CONSTRAINT [pk_id_materias_carrera] PRIMARY KEY CLUSTERED 
(
	[id_materias_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_condiciones_alumnos]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_condiciones_alumnos]
AS
SELECT a. legajo Legajo, a.nombre + ' ' + a.apellido Alumno, m.materia Materia, ca.carrera Carrera, c.curso Curso, am.anio_cursado 'Anio Cursada', ac.anio_inscripcion 'Anio Carrera', co.condicion Condicion 
FROM ALUMNOSxMATERIA am
INNER JOIN ALUMNOSxCARRERA ac ON ac.legajo = am.legajo 
INNER JOIN ALUMNOSxCURSO acu ON acu.legajo = am.legajo 
INNER JOIN MATERIASxCURSO mc ON am.id_materia = mc.id_materia AND acu.legajo = am.legajo AND acu.id_curso = mc.id_curso
INNER JOIN MATERIASxCARRERA mca ON am.id_materia = mca.id_materia AND ac.id_carrera = mca.id_carrera
INNER JOIN ALUMNOS a ON a.legajo = am.legajo AND a.legajo = ac.legajo
INNER JOIN MATERIAS m ON m.id_materia = am.id_materia
INNER JOIN CURSOS c ON mc.id_curso = c.id_curso
INNER JOIN CARRERAS ca ON ca.id_carrera = ac.id_carrera AND ca.id_carrera = mca.id_carrera 
INNER JOIN CONDICIONES co ON co.id_condicion = am.id_condicion
GO
/****** Object:  Table [dbo].[BARRIOS]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BARRIOS](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[nom_barrio] [varchar](50) NOT NULL,
	[id_localidad] [int] NULL,
 CONSTRAINT [pk_barrio] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARGOS]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGOS](
	[id_cargo] [int] IDENTITY(1,1) NOT NULL,
	[cargo] [varchar](50) NOT NULL,
 CONSTRAINT [pk_cargos] PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCENTES]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCENTES](
	[id_docente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[email] [nvarchar](60) NULL,
	[telefono] [varchar](30) NULL,
 CONSTRAINT [pk_docentes] PRIMARY KEY CLUSTERED 
(
	[id_docente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCENTESxMATERIA]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCENTESxMATERIA](
	[id_docente_materia] [int] IDENTITY(1,1) NOT NULL,
	[id_docente] [int] NULL,
	[id_materia_curso] [int] NULL,
 CONSTRAINT [pk_docente_materia] PRIMARY KEY CLUSTERED 
(
	[id_docente_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCENTExTURNO]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCENTExTURNO](
	[id_docente_turno] [int] IDENTITY(1,1) NOT NULL,
	[id_docente] [int] NULL,
	[id_turno] [int] NULL,
	[id_cargo] [int] NULL,
 CONSTRAINT [pk_docente_turno] PRIMARY KEY CLUSTERED 
(
	[id_docente_turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTADOS_CIVIL]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTADOS_CIVIL](
	[id_estado_civil] [int] IDENTITY(1,1) NOT NULL,
	[estado_civil] [varchar](50) NOT NULL,
 CONSTRAINT [pk_estado_civil] PRIMARY KEY CLUSTERED 
(
	[id_estado_civil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAMENES]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAMENES](
	[id_examen] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_examen] [int] NULL,
	[fecha] [datetime] NULL,
	[id_turno] [int] NULL,
	[id_materia] [int] NULL,
	[legajo] [int] NULL,
	[nota] [int] NULL,
 CONSTRAINT [pk_examen] PRIMARY KEY CLUSTERED 
(
	[id_examen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOCALIDADES]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCALIDADES](
	[id_localidad] [int] IDENTITY(1,1) NOT NULL,
	[nom_localidad] [varchar](50) NOT NULL,
	[id_provincia] [int] NULL,
 CONSTRAINT [pk_localidad] PRIMARY KEY CLUSTERED 
(
	[id_localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAISES]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAISES](
	[id_pais] [int] IDENTITY(1,1) NOT NULL,
	[nom_pais] [varchar](50) NOT NULL,
 CONSTRAINT [pk_pais] PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVINCIAS]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVINCIAS](
	[id_provincia] [int] IDENTITY(1,1) NOT NULL,
	[nom_provincia] [varchar](50) NOT NULL,
	[id_pais] [int] NULL,
 CONSTRAINT [pk_provincia] PRIMARY KEY CLUSTERED 
(
	[id_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SITUACIONES_HABIT]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SITUACIONES_HABIT](
	[id_situac_habit] [int] IDENTITY(1,1) NOT NULL,
	[situac_habit] [varchar](50) NULL,
 CONSTRAINT [pk_id_situac_habit] PRIMARY KEY CLUSTERED 
(
	[id_situac_habit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_DOC]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_DOC](
	[id_tipo_doc] [int] IDENTITY(1,1) NOT NULL,
	[tipo_doc] [varchar](50) NOT NULL,
 CONSTRAINT [pk_tipos_doc] PRIMARY KEY CLUSTERED 
(
	[id_tipo_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_EXAMEN]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_EXAMEN](
	[id_tipo_examen] [int] IDENTITY(1,1) NOT NULL,
	[tipo_examen] [varchar](30) NULL,
 CONSTRAINT [pk_tipos_examen] PRIMARY KEY CLUSTERED 
(
	[id_tipo_examen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_TRABAJO]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_TRABAJO](
	[id_tipo_trab] [int] IDENTITY(1,1) NOT NULL,
	[tipo_trabajo] [varchar](50) NOT NULL,
 CONSTRAINT [pk_tipos_trab] PRIMARY KEY CLUSTERED 
(
	[id_tipo_trab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TURNOS_EXAMEN]    Script Date: 23/10/2021 19:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TURNOS_EXAMEN](
	[id_turno] [int] IDENTITY(1,1) NOT NULL,
	[turno] [varchar](30) NOT NULL,
	[anio_lectivo] [int] NULL,
 CONSTRAINT [pk_turnos_examen] PRIMARY KEY CLUSTERED 
(
	[id_turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ALUMNOS] ON 
GO
INSERT [dbo].[ALUMNOS] ([legajo], [nombre], [apellido], [genero], [id_tipo_doc], [num_doc], [calle], [numero], [id_situac_habit], [fecha_nac], [id_estado_civil], [trabaja], [id_tipo_trab], [id_barrio], [email], [telefono]) VALUES (1, N'Lucio', N'Alfonso', N'NS/NC', 1, 30000, N'avenida siempre viva', 123, 1, CAST(N'1990-10-10' AS Date), 1, 1, 1, 1, N'lucio@utn.edu.ar', 3512)
GO
INSERT [dbo].[ALUMNOS] ([legajo], [nombre], [apellido], [genero], [id_tipo_doc], [num_doc], [calle], [numero], [id_situac_habit], [fecha_nac], [id_estado_civil], [trabaja], [id_tipo_trab], [id_barrio], [email], [telefono]) VALUES (2, N'Gaston', N'Sosa', N'NS/NC', 1, 30001, N'avenida siempre viva', 1234, 1, CAST(N'1996-10-10' AS Date), 1, 1, 1, 1, N'gaston@utn.edu.ar', 3512)
GO
INSERT [dbo].[ALUMNOS] ([legajo], [nombre], [apellido], [genero], [id_tipo_doc], [num_doc], [calle], [numero], [id_situac_habit], [fecha_nac], [id_estado_civil], [trabaja], [id_tipo_trab], [id_barrio], [email], [telefono]) VALUES (3, N'Ciro', N'Gianpiari', N'NS/NC', 1, 30003, N'avenida siempre viva', 1235, 1, CAST(N'1994-10-10' AS Date), 1, 1, 1, 1, N'ciro@utn.edu.ar', 3512)
GO
INSERT [dbo].[ALUMNOS] ([legajo], [nombre], [apellido], [genero], [id_tipo_doc], [num_doc], [calle], [numero], [id_situac_habit], [fecha_nac], [id_estado_civil], [trabaja], [id_tipo_trab], [id_barrio], [email], [telefono]) VALUES (4, N'Ciro', N'Gianpiari', N'NS/NC', 1, 30002, N'avenida siempre viva', 1236, 1, CAST(N'1991-10-10' AS Date), 1, 1, 1, 1, N'ciro@utn.edu.ar', 3512)
GO
INSERT [dbo].[ALUMNOS] ([legajo], [nombre], [apellido], [genero], [id_tipo_doc], [num_doc], [calle], [numero], [id_situac_habit], [fecha_nac], [id_estado_civil], [trabaja], [id_tipo_trab], [id_barrio], [email], [telefono]) VALUES (5, N'Javier', N'Yonose', N'NS/NC', 1, 30002, N'avenida siempre viva', 1237, 1, CAST(N'1992-10-10' AS Date), 1, 1, 1, 1, N'javier@utn.edu.ar', 3512)
GO
SET IDENTITY_INSERT [dbo].[ALUMNOS] OFF
GO
SET IDENTITY_INSERT [dbo].[ALUMNOSxCARRERA] ON 
GO
INSERT [dbo].[ALUMNOSxCARRERA] ([id_carrera_alumno], [legajo], [id_carrera], [anio_inscripcion]) VALUES (1, 1, 1, 2020)
GO
INSERT [dbo].[ALUMNOSxCARRERA] ([id_carrera_alumno], [legajo], [id_carrera], [anio_inscripcion]) VALUES (2, 2, 1, 2020)
GO
INSERT [dbo].[ALUMNOSxCARRERA] ([id_carrera_alumno], [legajo], [id_carrera], [anio_inscripcion]) VALUES (3, 3, 1, 2020)
GO
INSERT [dbo].[ALUMNOSxCARRERA] ([id_carrera_alumno], [legajo], [id_carrera], [anio_inscripcion]) VALUES (4, 4, 1, 2020)
GO
INSERT [dbo].[ALUMNOSxCARRERA] ([id_carrera_alumno], [legajo], [id_carrera], [anio_inscripcion]) VALUES (5, 5, 1, 2020)
GO
SET IDENTITY_INSERT [dbo].[ALUMNOSxCARRERA] OFF
GO
SET IDENTITY_INSERT [dbo].[ALUMNOSxCURSO] ON 
GO
INSERT [dbo].[ALUMNOSxCURSO] ([id_alumno_curso], [legajo], [id_curso]) VALUES (1, 1, 1)
GO
INSERT [dbo].[ALUMNOSxCURSO] ([id_alumno_curso], [legajo], [id_curso]) VALUES (2, 5, 1)
GO
INSERT [dbo].[ALUMNOSxCURSO] ([id_alumno_curso], [legajo], [id_curso]) VALUES (3, 2, 1)
GO
INSERT [dbo].[ALUMNOSxCURSO] ([id_alumno_curso], [legajo], [id_curso]) VALUES (4, 3, 1)
GO
INSERT [dbo].[ALUMNOSxCURSO] ([id_alumno_curso], [legajo], [id_curso]) VALUES (5, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[ALUMNOSxCURSO] OFF
GO
SET IDENTITY_INSERT [dbo].[ALUMNOSxMATERIA] ON 
GO
INSERT [dbo].[ALUMNOSxMATERIA] ([id_alumno_materia], [legajo], [id_materia], [id_condicion], [anio_cursado]) VALUES (1, 1, 1, 1, 2021)
GO
INSERT [dbo].[ALUMNOSxMATERIA] ([id_alumno_materia], [legajo], [id_materia], [id_condicion], [anio_cursado]) VALUES (2, 2, 1, 1, 2021)
GO
INSERT [dbo].[ALUMNOSxMATERIA] ([id_alumno_materia], [legajo], [id_materia], [id_condicion], [anio_cursado]) VALUES (3, 3, 1, 1, 2021)
GO
INSERT [dbo].[ALUMNOSxMATERIA] ([id_alumno_materia], [legajo], [id_materia], [id_condicion], [anio_cursado]) VALUES (4, 4, 1, 1, 2021)
GO
INSERT [dbo].[ALUMNOSxMATERIA] ([id_alumno_materia], [legajo], [id_materia], [id_condicion], [anio_cursado]) VALUES (5, 5, 1, 3, 2021)
GO
SET IDENTITY_INSERT [dbo].[ALUMNOSxMATERIA] OFF
GO
SET IDENTITY_INSERT [dbo].[BARRIOS] ON 
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (1, N'CENTRO', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (2, N'ALTO ALBERDI', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (3, N'OBSERVATORIO', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (4, N'JARDIN', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (5, N'GENERAL PAZ', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (6, N'PUEYRREDON', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (7, N'PARQUE HORIZONTE', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (8, N'SAN MARTIN', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (9, N'SAN VICENTE', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (10, N'JUNIOR', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (11, N'MAIPU', 1)
GO
INSERT [dbo].[BARRIOS] ([id_barrio], [nom_barrio], [id_localidad]) VALUES (12, N'PANAMERICANO', 1)
GO
SET IDENTITY_INSERT [dbo].[BARRIOS] OFF
GO
SET IDENTITY_INSERT [dbo].[CARGOS] ON 
GO
INSERT [dbo].[CARGOS] ([id_cargo], [cargo]) VALUES (1, N'PRESIDENTE DE MESA')
GO
INSERT [dbo].[CARGOS] ([id_cargo], [cargo]) VALUES (2, N'PRIMER VOCAL')
GO
INSERT [dbo].[CARGOS] ([id_cargo], [cargo]) VALUES (3, N'SEGUNDO VOCAL')
GO
SET IDENTITY_INSERT [dbo].[CARGOS] OFF
GO
SET IDENTITY_INSERT [dbo].[CARRERAS] ON 
GO
INSERT [dbo].[CARRERAS] ([id_carrera], [carrera]) VALUES (1, N'Tecnicatura en Programación')
GO
INSERT [dbo].[CARRERAS] ([id_carrera], [carrera]) VALUES (2, N'Tecnicatura en Mecatrónica')
GO
INSERT [dbo].[CARRERAS] ([id_carrera], [carrera]) VALUES (3, N'Tecnicatura en Mantenimiento Industrial')
GO
SET IDENTITY_INSERT [dbo].[CARRERAS] OFF
GO
SET IDENTITY_INSERT [dbo].[CONDICIONES] ON 
GO
INSERT [dbo].[CONDICIONES] ([id_condicion], [condicion]) VALUES (1, N'REGULAR')
GO
INSERT [dbo].[CONDICIONES] ([id_condicion], [condicion]) VALUES (2, N'PROMOCIONAL')
GO
INSERT [dbo].[CONDICIONES] ([id_condicion], [condicion]) VALUES (3, N'LIBRE')
GO
SET IDENTITY_INSERT [dbo].[CONDICIONES] OFF
GO
SET IDENTITY_INSERT [dbo].[CURSOS] ON 
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (1, N'1W1')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (2, N'1W2')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (3, N'1W3')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (4, N'2W1')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (5, N'2W2')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (6, N'2W3')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (7, N'1X1')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (8, N'1X2')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (9, N'1X3')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (10, N'2X1')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (11, N'2X2')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (12, N'2X3')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (13, N'1T1')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (14, N'1T2')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (15, N'1T3')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (16, N'2T1')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (17, N'2T2')
GO
INSERT [dbo].[CURSOS] ([id_curso], [curso]) VALUES (18, N'2T3')
GO
SET IDENTITY_INSERT [dbo].[CURSOS] OFF
GO
SET IDENTITY_INSERT [dbo].[DOCENTES] ON 
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (101, N'Carlos', N'González', N'carlosgonzalez@gmail.com', N'1143789800')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (102, N'Maria Belen', N'Muñoz', N'MariaBelenMuñoz@gmail.com', N'1143913032')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (103, N'Camila', N'Rojas', N'CamilaRojas@gmail.com', N'1144036264')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (104, N'Juan Manuel', N'Díaz', N'JuanManuelDíaz@gmail.com', N'1144159496')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (105, N'Maria Florencia', N'Pérez', N'MariaFlorenciaPérez@gmail.com', N'1144282728')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (106, N'Juan Ignacio', N'Soto', N'JuanIgnacioSoto@gmail.com', N'1144405960')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (107, N'Nicolas', N'Contreras', N'NicolasContreras@gmail.com', N'1144529192')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (108, N'Rocio Belen', N'Silva', N'RocioBelenSilva@gmail.com', N'1144652424')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (109, N'Florencia', N'Martínez', N'FlorenciaMartínez@gmail.com', N'1144775656')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (110, N'Juan Cruz', N'Sepúlveda', N'JuanCruzSepúlveda@gmail.com', N'1144898888')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (111, N'Sofia', N'Morales', N'SofiaMorales@gmail.com', N'1145022120')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (112, N'Matias Ezequiel', N'Rodríguez', N'MatiasEzequielRodríguez@gmail.com', N'1145145352')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (113, N'Agustin', N'López', N'AgustinLópez@gmail.com', N'1145268584')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (114, N'Maria Sol', N'Fuentes', N'MariaSolFuentes@gmail.com', N'1145391816')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (115, N'Agustina', N'Hernández', N'AgustinaHernández@gmail.com', N'1145515048')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (116, N'Tomás', N'Torres', N'TomásTorres@gmail.com', N'1145638280')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (117, N'Miguel Angel', N'Araya', N'MiguelAngelAraya@gmail.com', N'1145761512')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (118, N'Micaela', N'Flores', N'MicaelaFlores@gmail.com', N'1145884744')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (119, N'Juan Pablo', N'Espinoza', N'JuanPabloEspinoza@gmail.com', N'1146007976')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (120, N'Maria Victoria', N'Valenzuela', N'MariaVictoriaValenzuela@gmail.com', N'1146131208')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (121, N'Jose Luis', N'Castillo', N'JoseLuisCastillo@gmail.com', N'1146254440')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (122, N'Santiago', N'Tapia', N'SantiagoTapia@gmail.com', N'1146377672')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (123, N'María Eugenia', N'Reyes', N'MaríaEugeniaReyes@gmail.com', N'1146500904')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (124, N'Julieta', N'Gutiérrez', N'JulietaGutiérrez@gmail.com', N'1146624136')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (125, N'Camila Belén', N'Castro', N'CamilaBelénCastro@gmail.com', N'1146747368')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (126, N'Matias Nicolas', N'Pizarro', N'MatiasNicolasPizarro@gmail.com', N'1146870600')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (127, N'Maria Jose', N'Álvarez', N'MariaJoseÁlvarez@gmail.com', N'1146993832')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (128, N'Facundo', N'Vásquez', N'FacundoVásquez@gmail.com', N'1147117064')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (129, N'Franco', N'Sánchez', N'FrancoSánchez@gmail.com', N'1147240296')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (130, N'Lucia', N'Fernández', N'LuciaFernández@gmail.com', N'1147363528')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (131, N'Juan Carlos', N'Ramírez', N'JuanCarlosRamírez@gmail.com', N'1147486760')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (132, N'Maria de los Angeles', N'Carrasco', N'MariadelosAngelesCarrasco@gmail.com', N'1147609992')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (133, N'Micaela Belen', N'Gómez', N'MicaelaBelenGómez@gmail.com', N'1147733224')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (134, N'Federico', N'Cortés', N'FedericoCortés@gmail.com', N'1147856456')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (135, N'Gabriel Alejandro', N'Herrera', N'GabrielAlejandroHerrera@gmail.com', N'1147979688')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (136, N'Ignacio', N'Núñez', N'IgnacioNúñez@gmail.com', N'1148102920')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (137, N'Francisco', N'Jara', N'FranciscoJara@gmail.com', N'1148226152')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (138, N'Matias', N'Vergara', N'MatiasVergara@gmail.com', N'1148349384')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (139, N'Joaquín', N'Rivera', N'JoaquínRivera@gmail.com', N'1148472616')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (140, N'Lucas Ezequiel', N'Figueroa', N'LucasEzequielFigueroa@gmail.com', N'1148595848')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (141, N'Juan Jose', N'Riquelme', N'JuanJoseRiquelme@gmail.com', N'1148719080')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (142, N'Lucas', N'García', N'LucasGarcía@gmail.com', N'1148842312')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (143, N'Franco Nicolas', N'Miranda', N'FrancoNicolasMiranda@gmail.com', N'1148965544')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (144, N'Florencia Belen', N'Bravo', N'FlorenciaBelenBravo@gmail.com', N'1149088776')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (145, N'María Agustina', N'Vera', N'MaríaAgustinaVera@gmail.com', N'1149212008')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (146, N'Carolina', N'Molina', N'CarolinaMolina@gmail.com', N'1149335240')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (147, N'Nicolas Alejandro', N'Vega', N'NicolasAlejandroVega@gmail.com', N'1149458472')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (148, N'Micaela Soledad', N'Campos', N'MicaelaSoledadCampos@gmail.com', N'1149581704')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (149, N'Manuel', N'Sandoval', N'ManuelSandoval@gmail.com', N'1149704936')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (150, N'Julián', N'Orellana', N'JuliánOrellana@gmail.com', N'1149828168')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (151, N'Facundo Nicolas', N'Cárdenas', N'FacundoNicolasCárdenas@gmail.com', N'1149951400')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (152, N'Victoria', N'Olivares', N'VictoriaOlivares@gmail.com', N'1150074632')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (153, N'María Celeste', N'Alarcón', N'MaríaCelesteAlarcón@gmail.com', N'1150197864')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (154, N'Gonzalo', N'Gallardo', N'GonzaloGallardo@gmail.com', N'1150321096')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (155, N'Sofia Belen', N'Ortiz', N'SofiaBelenOrtiz@gmail.com', N'1150444328')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (156, N'Martin', N'Garrido', N'MartinGarrido@gmail.com', N'1150567560')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (157, N'Sebastián', N'Salazar', N'SebastiánSalazar@gmail.com', N'1150690792')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (158, N'Antonella', N'Guzmán', N'AntonellaGuzmán@gmail.com', N'1150814024')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (159, N'Maria Laura', N'Henríquez', N'MariaLauraHenríquez@gmail.com', N'1150937256')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (160, N'Maximiliano', N'Saavedra', N'MaximilianoSaavedra@gmail.com', N'1151060488')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (161, N'Luis Alberto', N'Navarro', N'LuisAlbertoNavarro@gmail.com', N'1151183720')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (162, N'Maria Fernanda', N'Aguilera', N'MariaFernandaAguilera@gmail.com', N'1151306952')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (163, N'Carlos Alberto', N'Parra', N'CarlosAlbertoParra@gmail.com', N'1151430184')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (164, N'Nicolas Ezequiel', N'Romero', N'NicolasEzequielRomero@gmail.com', N'1151553416')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (165, N'Macarena', N'Aravena', N'MacarenaAravena@gmail.com', N'1151676648')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (166, N'Yamila Belen', N'Vargas', N'YamilaBelenVargas@gmail.com', N'1151799880')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (167, N'Valentina', N'Vázquez', N'ValentinaVázquez@gmail.com', N'1151923112')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (168, N'Emanuel', N'Cáceres', N'EmanuelCáceres@gmail.com', N'1152046344')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (169, N'Micaela Ayelen', N'Yáñez', N'MicaelaAyelenYáñez@gmail.com', N'1152169576')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (170, N'Ana Laura', N'Leiva', N'AnaLauraLeiva@gmail.com', N'1152292808')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (171, N'Daniel Alejandro', N'Escobar', N'DanielAlejandroEscobar@gmail.com', N'1152416040')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (172, N'Martina', N'Ruiz', N'MartinaRuiz@gmail.com', N'1152539272')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (173, N'Lucas Gabriel', N'Valdés', N'LucasGabrielValdés@gmail.com', N'1152662504')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (174, N'Maria Emilia', N'Vidal', N'MariaEmiliaVidal@gmail.com', N'1152785736')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (175, N'Franco Emanuel', N'Salinas', N'FrancoEmanuelSalinas@gmail.com', N'1152908968')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (176, N'Rodrigo', N'Zuñiga', N'RodrigoZuñiga@gmail.com', N'1153032200')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (177, N'Rocio', N'Peña', N'RocioPeña@gmail.com', N'1153155432')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (178, N'Ana Paula', N'Godoy', N'AnaPaulaGodoy@gmail.com', N'1153278664')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (179, N'Brian Ezequiel', N'Lagos', N'BrianEzequielLagos@gmail.com', N'1153401896')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (180, N'Maria Soledad', N'Maldonado', N'MariaSoledadMaldonado@gmail.com', N'1153525128')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (181, N'Franco Ezequiel', N'Bustos', N'FrancoEzequielBustos@gmail.com', N'1153648360')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (182, N'Lucia Belen', N'Medina', N'LuciaBelenMedina@gmail.com', N'1153771592')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (183, N'Jonathan Ezequiel', N'Pino', N'JonathanEzequielPino@gmail.com', N'1153894824')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (184, N'Ana Belen', N'Palma', N'AnaBelenPalma@gmail.com', N'1154018056')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (185, N'Juan Gabriel', N'Moreno', N'JuanGabrielMoreno@gmail.com', N'1154141288')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (186, N'Luciano', N'Sanhueza', N'LucianoSanhueza@gmail.com', N'1154264520')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (187, N'Lucas Matias', N'Carvajal', N'LucasMatiasCarvajal@gmail.com', N'1154387752')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (188, N'Camila Soledad', N'Navarrete', N'CamilaSoledadNavarrete@gmail.com', N'1154510984')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (189, N'Lautaro', N'Sáez', N'LautaroSáez@gmail.com', N'1154634216')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (190, N'Milagros', N'Alvarado', N'MilagrosAlvarado@gmail.com', N'1154757448')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (191, N'Ezequiel', N'Donoso', N'EzequielDonoso@gmail.com', N'1154880680')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (192, N'Lucas Emanuel', N'Poblete', N'LucasEmanuelPoblete@gmail.com', N'1155003912')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (193, N'Daiana Belen', N'Bustamante', N'DaianaBelenBustamante@gmail.com', N'1155127144')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (194, N'Matias Gabriel', N'Toro', N'MatiasGabrielToro@gmail.com', N'1155250376')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (195, N'Miguel Alejandro', N'Ortega', N'MiguelAlejandroOrtega@gmail.com', N'1155373608')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (196, N'Juan Martin', N'Venegas', N'JuanMartinVenegas@gmail.com', N'1155496840')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (197, N'Lucas Nahuel', N'Guerrero', N'LucasNahuelGuerrero@gmail.com', N'1155620072')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (198, N'Franco David', N'Mendoza', N'FrancoDavidMendoza@gmail.com', N'1155743304')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (199, N'Yamila Soledad', N'Farías', N'YamilaSoledadFarías@gmail.com', N'1155866536')
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre], [apellido], [email], [telefono]) VALUES (200, N'Matias Alejandro', N'San Martín', N'MatiasAlejandroSanMartín@gmail.com', N'1155989768')
GO
SET IDENTITY_INSERT [dbo].[DOCENTES] OFF
GO
SET IDENTITY_INSERT [dbo].[ESTADOS_CIVIL] ON 
GO
INSERT [dbo].[ESTADOS_CIVIL] ([id_estado_civil], [estado_civil]) VALUES (1, N'Casado/a')
GO
INSERT [dbo].[ESTADOS_CIVIL] ([id_estado_civil], [estado_civil]) VALUES (2, N'Soltero/a')
GO
INSERT [dbo].[ESTADOS_CIVIL] ([id_estado_civil], [estado_civil]) VALUES (3, N'Viudo/a')
GO
INSERT [dbo].[ESTADOS_CIVIL] ([id_estado_civil], [estado_civil]) VALUES (4, N'Divorciado/a')
GO
SET IDENTITY_INSERT [dbo].[ESTADOS_CIVIL] OFF
GO
SET IDENTITY_INSERT [dbo].[EXAMENES] ON 
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (2, 1, CAST(N'2021-10-22T00:00:00.000' AS DateTime), 1, 1, 1, 5)
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (3, 1, CAST(N'2021-10-22T00:00:00.000' AS DateTime), 1, 1, 2, 10)
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (4, 1, CAST(N'2021-10-22T00:00:00.000' AS DateTime), 1, 1, 3, 9)
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (5, 1, CAST(N'2021-10-22T00:00:00.000' AS DateTime), 1, 1, 1, 5)
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (6, 2, CAST(N'2021-05-19T00:00:00.000' AS DateTime), 2, 1, 4, 8)
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (7, 3, CAST(N'2021-03-01T00:00:00.000' AS DateTime), 1, 1, 2, 5)
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (10, 4, CAST(N'2021-11-22T00:00:00.000' AS DateTime), 1, 1, 1, 3)
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (16, 4, CAST(N'2021-11-10T00:00:00.000' AS DateTime), 1, 1, 2, 10)
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (17, 4, CAST(N'2021-11-10T00:00:00.000' AS DateTime), 1, 1, 3, 10)
GO
INSERT [dbo].[EXAMENES] ([id_examen], [id_tipo_examen], [fecha], [id_turno], [id_materia], [legajo], [nota]) VALUES (18, 4, CAST(N'2021-11-10T00:00:00.000' AS DateTime), 1, 1, 4, 10)
GO
SET IDENTITY_INSERT [dbo].[EXAMENES] OFF
GO
SET IDENTITY_INSERT [dbo].[LOCALIDADES] ON 
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (1, N'CORDOBA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (2, N'CARLOS PAZ', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (3, N'ADELIA MARIA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (4, N'ALTA GRACIA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (5, N'AGUA DE ORO', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (6, N'AGUA DEL TALA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (7, N'AGUA PINTADA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (8, N'ALEJANDRO ROCA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (9, N'ARIAS', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (10, N'ARROYO CABRAL', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (11, N'ARROYO LA HIGUERA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (12, N'ASCOCHINGA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (13, N'BAJO DE FERNANDEZ', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (14, N'BAJO DEL CARMEN', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (15, N'BAJO GRANDE', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (16, N'BAJO HONDO', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (17, N'BAJO LINDO', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (18, N'BARRIO DEAN FUNES', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (19, N'BARRIO LA FERIA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (20, N'BULNES', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (21, N'CAJON DEL RIO', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (22, N'CALASUYA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (23, N'CAMPO BANDILLO', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (24, N'CAMPO LOS ZORROS', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (25, N'CANDELARIA SUR', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (26, N'CAPILLA DE SITON', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (27, N'CAPILLA LA ESPERANZA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (28, N'CASAS VEJAS', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (29, N'CASEROS ESTE', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (30, N'CAÑADA DE LUQUE', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (31, N'CAÑADA DEL TALA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (32, N'CAÑADA VERDE', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (33, N'CERRO PELADO', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (34, N'CHARACATO', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (35, N'CHAÑARIACO', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (36, N'CHIPITIN', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (37, N'CHUA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (38, N'CHURQUI CAÑADA', 5)
GO
INSERT [dbo].[LOCALIDADES] ([id_localidad], [nom_localidad], [id_provincia]) VALUES (39, N'COLAZO', 5)
GO
SET IDENTITY_INSERT [dbo].[LOCALIDADES] OFF
GO
SET IDENTITY_INSERT [dbo].[MATERIAS] ON 
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (1, N'PROGRAMACION I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (2, N'SISTEMAS DE PROCESAMIENTO DE DATOS')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (3, N'MATEMATICA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (4, N'INGLES I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (5, N'LABORATORIO DE COMPUTACION I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (6, N'PROGRAMACION II')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (7, N'ARQUITECTURA Y SISTEMAS OPERATIVOSI')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (8, N'ESTADISTICA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (9, N'INGLES II')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (10, N'LABORATORIO DE COMPUTACION II')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (11, N'METODOLOGIA DE LA INVESTIGACION')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (12, N'PROGRAMACION III')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (13, N'ORGANIZACION CONTABLE DE LA EMPRESA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (14, N'ORGANIZACION EMPRESARIAL')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (15, N'ELEMENTOS DE INVESTIGACION OPERATIVA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (16, N'LABORATORIO DE COMPUTACION III')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (17, N'METODOLOGIA DE SISTEMAS I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (18, N'DISEÑO Y ADMINISTRACION DE BASES DE DATOS')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (19, N'LEGISLACION')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (20, N'LABORATORIO DE COMPUTACION IV')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (21, N'PRACTICA PROFESIONAL - TUP')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (22, N'MECATRONICA I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (23, N'FISICA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (24, N'MATEMATICA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (25, N'INGLES')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (26, N'HERRAMIENTAS INFORMATICAS')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (27, N'SISTEMAS CAD')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (28, N'MATERIALES')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (29, N'ELECTROTECNIA I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (30, N'SISTEMAS DIGITALES')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (31, N'MECATRONICA II')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (32, N'MECANICA I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (33, N'MANTENIMIENTO INDUSTRIAL')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (34, N'ELECTRONICA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (35, N'ELECTROTECNIA II')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (36, N'MECANICA II')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (37, N'TECNOLOGIA DE LA FABRICACION')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (38, N'AUTOMACION INDUSTRIAL')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (39, N'GESTION DE LA CALIDAD Y METROLOGIA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (40, N'PASANTIA ENTES OFICIALES O EMPRESAS')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (41, N'SEMINARIOS')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (42, N'MANTENIMIENTO INDUSTRIAL I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (43, N'ELECTROTECNIA I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (44, N'MATEMATICA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (45, N'QUIMICA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (46, N'RELACIONES INDUSTRIALES')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (47, N'INFORMATICA I')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (48, N'MECANICA II')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (49, N'SISTEMA DE REPRESENTACION')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (50, N'CONOCIMIENTOS DE LOS MATERIALES')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (51, N'NEUMATICA E HIDRAULICA')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (52, N'MANTENIMIENTO INDUSTRIAL II')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (53, N'ELEMENTOS DE MAQUINAS')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (54, N'TECNOLOGIA DE FRIO Y CALOR')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (55, N'INSTALACIONES Y MAQUINAS ELECTRICAS')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (56, N'INFORMATICA II')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (57, N'ELEMENTOS DE AUTOMATICACION')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (58, N'INGLES')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (59, N'SEGURIDAD HIGIENE Y PROTECCION AMBIENTAL')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (60, N'COSTOS Y CONTROL DE GESTION')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (61, N'ASEGURAMIENTO DE LA CALIDAD')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (62, N'PRACTICA PROFESIONAL - TUMI')
GO
INSERT [dbo].[MATERIAS] ([id_materia], [materia]) VALUES (63, N'PASANTIA - TUMI')
GO
SET IDENTITY_INSERT [dbo].[MATERIAS] OFF
GO
SET IDENTITY_INSERT [dbo].[MATERIASxCARRERA] ON 
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (1, 1, 1)
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (2, 1, 2)
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (3, 1, 3)
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (16, 1, 4)
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (17, 1, 5)
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (18, 1, 6)
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (19, 1, 7)
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (20, 1, 8)
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (21, 1, 9)
GO
INSERT [dbo].[MATERIASxCARRERA] ([id_materias_carrera], [id_carrera], [id_materia]) VALUES (22, 1, 10)
GO
SET IDENTITY_INSERT [dbo].[MATERIASxCARRERA] OFF
GO
SET IDENTITY_INSERT [dbo].[MATERIASxCURSO] ON 
GO
INSERT [dbo].[MATERIASxCURSO] ([id_materia_curso], [id_materia], [id_curso]) VALUES (1, 1, 1)
GO
INSERT [dbo].[MATERIASxCURSO] ([id_materia_curso], [id_materia], [id_curso]) VALUES (2, 1, 2)
GO
INSERT [dbo].[MATERIASxCURSO] ([id_materia_curso], [id_materia], [id_curso]) VALUES (3, 2, 1)
GO
INSERT [dbo].[MATERIASxCURSO] ([id_materia_curso], [id_materia], [id_curso]) VALUES (4, 2, 2)
GO
INSERT [dbo].[MATERIASxCURSO] ([id_materia_curso], [id_materia], [id_curso]) VALUES (5, 3, 1)
GO
INSERT [dbo].[MATERIASxCURSO] ([id_materia_curso], [id_materia], [id_curso]) VALUES (6, 3, 2)
GO
SET IDENTITY_INSERT [dbo].[MATERIASxCURSO] OFF
GO
SET IDENTITY_INSERT [dbo].[PROVINCIAS] ON 
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (1, N'BUENOS AIRES', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (2, N'CATAMARCA', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (3, N'CHACO', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (4, N'CHUBUT', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (5, N'CORDOBA', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (6, N'CORRIENTES', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (7, N'ENTRE RIOS', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (8, N'FORMOSA', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (9, N'JUJUY', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (10, N'LA PAMPA', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (11, N'LA RIOJA', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (12, N'MENDOZA', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (13, N'MISIONES', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (14, N'NEUQUEN', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (15, N'RIO NEGRO', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (16, N'SALTA', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (17, N'SAN JUAN', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (18, N'SAN LUIS', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (19, N'SANTA CRUZ', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (20, N'SANTA FE', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (21, N'SANTIAGO DEL ESTERO', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (22, N'TIERRA DEL FUEGO', NULL)
GO
INSERT [dbo].[PROVINCIAS] ([id_provincia], [nom_provincia], [id_pais]) VALUES (23, N'TUCUMAN', NULL)
GO
SET IDENTITY_INSERT [dbo].[PROVINCIAS] OFF
GO
SET IDENTITY_INSERT [dbo].[SITUACIONES_HABIT] ON 
GO
INSERT [dbo].[SITUACIONES_HABIT] ([id_situac_habit], [situac_habit]) VALUES (1, N'Propietario')
GO
INSERT [dbo].[SITUACIONES_HABIT] ([id_situac_habit], [situac_habit]) VALUES (2, N'Alquiler fijo')
GO
INSERT [dbo].[SITUACIONES_HABIT] ([id_situac_habit], [situac_habit]) VALUES (3, N'Alquiler temporal')
GO
INSERT [dbo].[SITUACIONES_HABIT] ([id_situac_habit], [situac_habit]) VALUES (4, N'Vivienda compartida')
GO
SET IDENTITY_INSERT [dbo].[SITUACIONES_HABIT] OFF
GO
SET IDENTITY_INSERT [dbo].[TIPOS_DOC] ON 
GO
INSERT [dbo].[TIPOS_DOC] ([id_tipo_doc], [tipo_doc]) VALUES (1, N'DNI')
GO
INSERT [dbo].[TIPOS_DOC] ([id_tipo_doc], [tipo_doc]) VALUES (2, N'PASAPORTE')
GO
INSERT [dbo].[TIPOS_DOC] ([id_tipo_doc], [tipo_doc]) VALUES (3, N'LIBRETA CIVICA')
GO
INSERT [dbo].[TIPOS_DOC] ([id_tipo_doc], [tipo_doc]) VALUES (4, N'CARNET EXTRANJERO')
GO
INSERT [dbo].[TIPOS_DOC] ([id_tipo_doc], [tipo_doc]) VALUES (5, N'PARTIDA NACIMIENTO')
GO
INSERT [dbo].[TIPOS_DOC] ([id_tipo_doc], [tipo_doc]) VALUES (6, N'OTRO')
GO
INSERT [dbo].[TIPOS_DOC] ([id_tipo_doc], [tipo_doc]) VALUES (7, N'REG. UNICO CONTRIBUYENTE')
GO
INSERT [dbo].[TIPOS_DOC] ([id_tipo_doc], [tipo_doc]) VALUES (8, N'CUIT')
GO
INSERT [dbo].[TIPOS_DOC] ([id_tipo_doc], [tipo_doc]) VALUES (9, N'CUIL')
GO
SET IDENTITY_INSERT [dbo].[TIPOS_DOC] OFF
GO
SET IDENTITY_INSERT [dbo].[TIPOS_EXAMEN] ON 
GO
INSERT [dbo].[TIPOS_EXAMEN] ([id_tipo_examen], [tipo_examen]) VALUES (1, N'PRIMER PARCIAL')
GO
INSERT [dbo].[TIPOS_EXAMEN] ([id_tipo_examen], [tipo_examen]) VALUES (2, N'SEGUNDO PARCIAL')
GO
INSERT [dbo].[TIPOS_EXAMEN] ([id_tipo_examen], [tipo_examen]) VALUES (3, N'RECUPERATORIO')
GO
INSERT [dbo].[TIPOS_EXAMEN] ([id_tipo_examen], [tipo_examen]) VALUES (4, N'EXAMEN FINAL')
GO
SET IDENTITY_INSERT [dbo].[TIPOS_EXAMEN] OFF
GO
SET IDENTITY_INSERT [dbo].[TIPOS_TRABAJO] ON 
GO
INSERT [dbo].[TIPOS_TRABAJO] ([id_tipo_trab], [tipo_trabajo]) VALUES (1, N'Rel. Dependencia Full-Time')
GO
INSERT [dbo].[TIPOS_TRABAJO] ([id_tipo_trab], [tipo_trabajo]) VALUES (2, N'Rel. Dependencia Part-Time')
GO
INSERT [dbo].[TIPOS_TRABAJO] ([id_tipo_trab], [tipo_trabajo]) VALUES (3, N'Freelance')
GO
INSERT [dbo].[TIPOS_TRABAJO] ([id_tipo_trab], [tipo_trabajo]) VALUES (4, N'Trabajador Independiente')
GO
SET IDENTITY_INSERT [dbo].[TIPOS_TRABAJO] OFF
GO
SET IDENTITY_INSERT [dbo].[TURNOS_EXAMEN] ON 
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (1, N'PRIMER TURNO', 21)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (2, N'SEGUNDO TURNO', 21)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (3, N'TERCER TURNO', 21)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (4, N'CUARTO TURNO', 21)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (5, N'PRIMER TURNO', 20)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (6, N'SEGUNDO TURNO', 20)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (7, N'TERCER TURNO', 20)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (8, N'CUARTO TURNO', 20)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (9, N'PRIMER TURNO', 21)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (10, N'SEGUNDO TURNO', 21)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (11, N'TERCER TURNO', 21)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (12, N'CUARTO TURNO', 21)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (13, N'PRIMER TURNO', 22)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (14, N'SEGUNDO TURNO', 22)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (15, N'TERCER TURNO', 22)
GO
INSERT [dbo].[TURNOS_EXAMEN] ([id_turno], [turno], [anio_lectivo]) VALUES (16, N'CUARTO TURNO', 22)
GO
SET IDENTITY_INSERT [dbo].[TURNOS_EXAMEN] OFF
GO
ALTER TABLE [dbo].[ALUMNOS]  WITH CHECK ADD  CONSTRAINT [fk_barrio_alumno] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[BARRIOS] ([id_barrio])
GO
ALTER TABLE [dbo].[ALUMNOS] CHECK CONSTRAINT [fk_barrio_alumno]
GO
ALTER TABLE [dbo].[ALUMNOS]  WITH CHECK ADD  CONSTRAINT [fk_estado_civil_alumno] FOREIGN KEY([id_estado_civil])
REFERENCES [dbo].[ESTADOS_CIVIL] ([id_estado_civil])
GO
ALTER TABLE [dbo].[ALUMNOS] CHECK CONSTRAINT [fk_estado_civil_alumno]
GO
ALTER TABLE [dbo].[ALUMNOS]  WITH CHECK ADD  CONSTRAINT [fk_situaciones_habit_alumno] FOREIGN KEY([id_situac_habit])
REFERENCES [dbo].[SITUACIONES_HABIT] ([id_situac_habit])
GO
ALTER TABLE [dbo].[ALUMNOS] CHECK CONSTRAINT [fk_situaciones_habit_alumno]
GO
ALTER TABLE [dbo].[ALUMNOS]  WITH CHECK ADD  CONSTRAINT [fk_tipo_doc_alumno] FOREIGN KEY([id_tipo_doc])
REFERENCES [dbo].[TIPOS_DOC] ([id_tipo_doc])
GO
ALTER TABLE [dbo].[ALUMNOS] CHECK CONSTRAINT [fk_tipo_doc_alumno]
GO
ALTER TABLE [dbo].[ALUMNOS]  WITH CHECK ADD  CONSTRAINT [fk_tipo_trab_alumno] FOREIGN KEY([id_tipo_trab])
REFERENCES [dbo].[TIPOS_TRABAJO] ([id_tipo_trab])
GO
ALTER TABLE [dbo].[ALUMNOS] CHECK CONSTRAINT [fk_tipo_trab_alumno]
GO
ALTER TABLE [dbo].[ALUMNOSxCARRERA]  WITH CHECK ADD  CONSTRAINT [fk_carrera_alumnos_x_carrera] FOREIGN KEY([id_carrera])
REFERENCES [dbo].[CARRERAS] ([id_carrera])
GO
ALTER TABLE [dbo].[ALUMNOSxCARRERA] CHECK CONSTRAINT [fk_carrera_alumnos_x_carrera]
GO
ALTER TABLE [dbo].[ALUMNOSxCARRERA]  WITH CHECK ADD  CONSTRAINT [fk_legajo_alumnos_x_carrera] FOREIGN KEY([legajo])
REFERENCES [dbo].[ALUMNOS] ([legajo])
GO
ALTER TABLE [dbo].[ALUMNOSxCARRERA] CHECK CONSTRAINT [fk_legajo_alumnos_x_carrera]
GO
ALTER TABLE [dbo].[ALUMNOSxCURSO]  WITH CHECK ADD  CONSTRAINT [fk_curso_alumnos_x_curso] FOREIGN KEY([id_curso])
REFERENCES [dbo].[CURSOS] ([id_curso])
GO
ALTER TABLE [dbo].[ALUMNOSxCURSO] CHECK CONSTRAINT [fk_curso_alumnos_x_curso]
GO
ALTER TABLE [dbo].[ALUMNOSxCURSO]  WITH CHECK ADD  CONSTRAINT [fk_legajo_alumnos_x_curso] FOREIGN KEY([legajo])
REFERENCES [dbo].[ALUMNOS] ([legajo])
GO
ALTER TABLE [dbo].[ALUMNOSxCURSO] CHECK CONSTRAINT [fk_legajo_alumnos_x_curso]
GO
ALTER TABLE [dbo].[ALUMNOSxMATERIA]  WITH CHECK ADD  CONSTRAINT [fk_condicion_alumnos_x_materia] FOREIGN KEY([id_condicion])
REFERENCES [dbo].[CONDICIONES] ([id_condicion])
GO
ALTER TABLE [dbo].[ALUMNOSxMATERIA] CHECK CONSTRAINT [fk_condicion_alumnos_x_materia]
GO
ALTER TABLE [dbo].[ALUMNOSxMATERIA]  WITH CHECK ADD  CONSTRAINT [fk_legajo_alumnos_x_materia] FOREIGN KEY([legajo])
REFERENCES [dbo].[ALUMNOS] ([legajo])
GO
ALTER TABLE [dbo].[ALUMNOSxMATERIA] CHECK CONSTRAINT [fk_legajo_alumnos_x_materia]
GO
ALTER TABLE [dbo].[ALUMNOSxMATERIA]  WITH CHECK ADD  CONSTRAINT [fk_materia_alumnos_x_materia] FOREIGN KEY([id_materia])
REFERENCES [dbo].[MATERIAS] ([id_materia])
GO
ALTER TABLE [dbo].[ALUMNOSxMATERIA] CHECK CONSTRAINT [fk_materia_alumnos_x_materia]
GO
ALTER TABLE [dbo].[BARRIOS]  WITH CHECK ADD  CONSTRAINT [fk_localidad_barrio] FOREIGN KEY([id_localidad])
REFERENCES [dbo].[LOCALIDADES] ([id_localidad])
GO
ALTER TABLE [dbo].[BARRIOS] CHECK CONSTRAINT [fk_localidad_barrio]
GO
ALTER TABLE [dbo].[DOCENTESxMATERIA]  WITH CHECK ADD  CONSTRAINT [fk_docente_docentes_x_materia] FOREIGN KEY([id_docente])
REFERENCES [dbo].[DOCENTES] ([id_docente])
GO
ALTER TABLE [dbo].[DOCENTESxMATERIA] CHECK CONSTRAINT [fk_docente_docentes_x_materia]
GO
ALTER TABLE [dbo].[DOCENTESxMATERIA]  WITH CHECK ADD  CONSTRAINT [fk_materia_curso_docentes_x_materia] FOREIGN KEY([id_materia_curso])
REFERENCES [dbo].[MATERIASxCURSO] ([id_materia_curso])
GO
ALTER TABLE [dbo].[DOCENTESxMATERIA] CHECK CONSTRAINT [fk_materia_curso_docentes_x_materia]
GO
ALTER TABLE [dbo].[DOCENTExTURNO]  WITH CHECK ADD  CONSTRAINT [fk_cargo_docente_turno] FOREIGN KEY([id_cargo])
REFERENCES [dbo].[CARGOS] ([id_cargo])
GO
ALTER TABLE [dbo].[DOCENTExTURNO] CHECK CONSTRAINT [fk_cargo_docente_turno]
GO
ALTER TABLE [dbo].[DOCENTExTURNO]  WITH CHECK ADD  CONSTRAINT [fk_docente_docente_turno] FOREIGN KEY([id_docente])
REFERENCES [dbo].[DOCENTES] ([id_docente])
GO
ALTER TABLE [dbo].[DOCENTExTURNO] CHECK CONSTRAINT [fk_docente_docente_turno]
GO
ALTER TABLE [dbo].[DOCENTExTURNO]  WITH CHECK ADD  CONSTRAINT [fk_turno_docente_turno] FOREIGN KEY([id_turno])
REFERENCES [dbo].[TURNOS_EXAMEN] ([id_turno])
GO
ALTER TABLE [dbo].[DOCENTExTURNO] CHECK CONSTRAINT [fk_turno_docente_turno]
GO
ALTER TABLE [dbo].[EXAMENES]  WITH CHECK ADD  CONSTRAINT [fk_materia_alumno_examenes] FOREIGN KEY([legajo])
REFERENCES [dbo].[ALUMNOS] ([legajo])
GO
ALTER TABLE [dbo].[EXAMENES] CHECK CONSTRAINT [fk_materia_alumno_examenes]
GO
ALTER TABLE [dbo].[EXAMENES]  WITH CHECK ADD  CONSTRAINT [fk_materia_examentes] FOREIGN KEY([id_materia])
REFERENCES [dbo].[MATERIAS] ([id_materia])
GO
ALTER TABLE [dbo].[EXAMENES] CHECK CONSTRAINT [fk_materia_examentes]
GO
ALTER TABLE [dbo].[EXAMENES]  WITH CHECK ADD  CONSTRAINT [fk_tipo_examen_examenes] FOREIGN KEY([id_tipo_examen])
REFERENCES [dbo].[TIPOS_EXAMEN] ([id_tipo_examen])
GO
ALTER TABLE [dbo].[EXAMENES] CHECK CONSTRAINT [fk_tipo_examen_examenes]
GO
ALTER TABLE [dbo].[EXAMENES]  WITH CHECK ADD  CONSTRAINT [fk_turno_examenes] FOREIGN KEY([id_turno])
REFERENCES [dbo].[TURNOS_EXAMEN] ([id_turno])
GO
ALTER TABLE [dbo].[EXAMENES] CHECK CONSTRAINT [fk_turno_examenes]
GO
ALTER TABLE [dbo].[LOCALIDADES]  WITH CHECK ADD  CONSTRAINT [fk_prov_localidad] FOREIGN KEY([id_provincia])
REFERENCES [dbo].[PROVINCIAS] ([id_provincia])
GO
ALTER TABLE [dbo].[LOCALIDADES] CHECK CONSTRAINT [fk_prov_localidad]
GO
ALTER TABLE [dbo].[MATERIASxCARRERA]  WITH CHECK ADD  CONSTRAINT [fk_id_carrera] FOREIGN KEY([id_carrera])
REFERENCES [dbo].[CARRERAS] ([id_carrera])
GO
ALTER TABLE [dbo].[MATERIASxCARRERA] CHECK CONSTRAINT [fk_id_carrera]
GO
ALTER TABLE [dbo].[MATERIASxCARRERA]  WITH CHECK ADD  CONSTRAINT [fk_id_materia] FOREIGN KEY([id_materia])
REFERENCES [dbo].[MATERIAS] ([id_materia])
GO
ALTER TABLE [dbo].[MATERIASxCARRERA] CHECK CONSTRAINT [fk_id_materia]
GO
ALTER TABLE [dbo].[MATERIASxCURSO]  WITH CHECK ADD  CONSTRAINT [fk_curso_materias_x_curso] FOREIGN KEY([id_curso])
REFERENCES [dbo].[CURSOS] ([id_curso])
GO
ALTER TABLE [dbo].[MATERIASxCURSO] CHECK CONSTRAINT [fk_curso_materias_x_curso]
GO
ALTER TABLE [dbo].[MATERIASxCURSO]  WITH CHECK ADD  CONSTRAINT [fk_materia_materias_x_curso] FOREIGN KEY([id_materia])
REFERENCES [dbo].[MATERIAS] ([id_materia])
GO
ALTER TABLE [dbo].[MATERIASxCURSO] CHECK CONSTRAINT [fk_materia_materias_x_curso]
GO
ALTER TABLE [dbo].[PROVINCIAS]  WITH CHECK ADD  CONSTRAINT [fk_pais_provincia] FOREIGN KEY([id_pais])
REFERENCES [dbo].[PAISES] ([id_pais])
GO
ALTER TABLE [dbo].[PROVINCIAS] CHECK CONSTRAINT [fk_pais_provincia]
GO
/****** Object:  StoredProcedure [dbo].[SP_ALUMNOS_SIN_APROBADAS]    Script Date: 23/10/2021 19:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ALUMNOS_SIN_APROBADAS]
AS
BEGIN
SELECT a.Legajo, a.Alumno, a.Carrera, a.[Anio Carrera],
CASE WHEN e.nota IS NULL THEN 'Alumno sin registros en finales.'
			WHEN e.nota < 4 THEN 'Alumno sin aprobar finales en los últimos 5 años.'
END AS 'Comentario'
FROM 
dbo.vw_condiciones_alumnos a
LEFT JOIN EXAMENES e ON e.legajo = a.legajo AND id_tipo_examen = 4
WHERE (e.id_examen IS NULL)  OR (YEAR(e.fecha) > YEAR(GETDATE()) - 5 AND e.nota < 4)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ALUMNOS_SIN_CURSADA]    Script Date: 23/10/2021 19:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ALUMNOS_SIN_CURSADA]
AS
BEGIN
SELECT a.legajo Legajo,  a.nombre + ' ' + a.apellido Alumno, c.carrera Carrera FROM ALUMNOS a
INNER JOIN ALUMNOSxCARRERA ac ON ac.legajo = a.legajo
INNER JOIN CARRERAS c ON c.id_carrera = ac.id_carrera
WHERE a.legajo NOT IN (SELECT legajo FROM ALUMNOSxMATERIA WHERE anio_cursado = YEAR(GETDATE()) AND id_condicion IN (1,2))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONDICIONES_ALUMNOS]    Script Date: 23/10/2021 19:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONDICIONES_ALUMNOS]
@condicion varchar(50) = NULL,
@materia varchar(50) = NULL,
@carrera VARCHAR(50) = NULL,
@curso VARCHAR (6) = NULL,
@aniocursado  int = NULL,
@cantidad int = NULL OUTPUT
AS
SELECT * INTO #tmp
FROM dbo.vw_condiciones_alumnos -- Acá se usa la vista vw_condiciones_alumnos para simplificar el SP
WHERE (@condicion IS NULL OR condicion = @condicion) AND -- Las condiciones son 3, pensado que sea valor exacto sacado de combo
(@materia IS NULL OR materia LIKE '%' + @materia + '%') AND -- Pensado para tomarlo de caja de texto, si escribo "mate" que me traiga resultados de todas las matemáticas
(@carrera IS NULL OR carrera LIKE  '%' + @carrera +'%' ) AND -- Idem anterior
(@curso IS NULL OR curso = @curso) AND -- Los cursos también vendrían de combo fijo. Son ejemplos como para mostrar dos formas, esto lo definiría un usuario
(@aniocursado IS NULL OR [Anio Cursada] = @aniocursado)

SELECT * FROM #tmp
SELECT @cantidad = count(*) FROM #tmp

DROP TABLE #tmp

GO
/****** Object:  StoredProcedure [dbo].[SP_ESTADISTICAS_ALUMNOS]    Script Date: 23/10/2021 19:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_ESTADISTICAS_ALUMNOS]
@groupElegido VARCHAR(50) = 'Edad' -- Sale de combo fijo
AS 
BEGIN

DECLARE @groupByGenerico NVARCHAR(150) 
DECLARE @groupByEdad NVARCHAR(150) = N'FLOOR(DATEDIFF(day, a.fecha_nac, GETDATE())/365.25)'
DECLARE @groupByEstadoCivil VARCHAR(50) = 'ec.estado_civil'
DECLARE @groupBySitHabit VARCHAR(50) = 'sh.situac_habit'
DECLARE @groupBySitLabo VARCHAR(50) = 'tt.tipo_trabajo'

SET @groupByGenerico = CASE @groupElegido WHEN 'Edad' THEN @groupByEdad
									      WHEN 'Estado Civil' THEN @groupByEstadoCivil
										  WHEN 'Situación Habitacional' THEN @groupBySitHabit 
										  WHEN 'Situación Laboral' THEN @groupBySitLabo
END

DECLARE @SQL NVARCHAR(MAX)  = 
'SELECT '+ @groupByGenerico + ' AS ''' + @groupElegido + '''' + ',  co.condicion Condicion, AVG(e.nota) Promedio, count(*) Cantidad FROM
ALUMNOS a
INNER JOIN EXAMENES e ON e.legajo = a.legajo AND e.id_tipo_examen = 4
INNER JOIN ALUMNOSxMATERIA am ON am.legajo = e.legajo AND e.id_materia  = am.id_materia
INNER JOIN MATERIAS m ON m.id_materia = am.id_materia AND e.id_materia = m.id_materia
INNER JOIN CONDICIONES co ON co.id_condicion = am.id_condicion
LEFT JOIN SITUACIONES_HABIT sh ON sh.id_situac_habit = a.id_situac_habit
LEFT JOIN ESTADOS_CIVIL ec ON ec.id_estado_civil = a.id_estado_civil
LEFT JOIN TIPOS_TRABAJO tt ON tt.id_tipo_trab = a.id_tipo_trab
GROUP BY ' + @groupByGenerico + ' , co.condicion'

exec sp_executesql @SQL

END
GO
/****** Object:  StoredProcedure [dbo].[SP_PROMEDIO_NOTAS]    Script Date: 23/10/2021 19:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_PROMEDIO_NOTAS]
@legajo int = NULL,
@idmateria int = NULL,
@aniocursado int = NULL,
@idcurso int = NULL,
@idcarrera int = NULL,
@promedio numeric(5,2) OUTPUT
AS 
SELECT @promedio = AVG(CAST(nota AS NUMERIC(5,2))) FROM
EXAMENES e 
INNER JOIN ALUMNOSxMATERIA am ON e.legajo= am.legajo AND e.id_materia = am.id_materia
INNER JOIN ALUMNOSxCURSO ac ON ac.legajo = am.legajo 
INNER JOIN MATERIASxCURSO mc ON mc.id_curso = ac.id_curso AND am.id_materia = mc.id_materia
INNER JOIN MATERIASxCARRERA mca ON mca.id_materia = e.id_materia
WHERE
(@legajo IS NULL OR am.legajo = @legajo) AND
(@idmateria IS NULL OR am.id_materia = @idmateria) AND
(@idcarrera IS NULL OR mca.id_carrera = @idcarrera) AND
(@idcurso IS NULL OR mc.id_curso = @idcurso) AND
(@aniocursado IS NULL OR am.anio_cursado = @aniocursado)
GO
/****** Object:  Trigger [dbo].[TRG_VALIDA_EXAMEN]    Script Date: 23/10/2021 19:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TRG_VALIDA_EXAMEN]
ON [dbo].[EXAMENES]
FOR INSERT, UPDATE
AS
BEGIN

DECLARE @legajo int DECLARE @legajoOld int
DECLARE @materia int DECLARE @materiaOld int
DECLARE @id_examen int

SELECT @legajo = legajo, @materia = id_materia, @id_examen = id_examen FROM inserted

SELECT @legajoOld = legajo, @materiaOld = id_materia, @id_examen = id_examen FROM deleted

IF(EXISTS (SELECT legajo FROM ALUMNOSxMATERIA WHERE legajo = @legajo AND id_materia = @materia AND id_condicion in (1,2) AND anio_cursado > YEAR(GETDATE()) - 5))
	IF (EXISTS (SELECT * FROM DELETED))
		PRINT ('Modificación en datos de examen realizada con éxito.')
	ELSE
		PRINT ('Inscripción realizada con éxito.')
ELSE
	IF (EXISTS (SELECT * FROM DELETED))
	BEGIN
		UPDATE EXAMENES SET id_materia = @materia, legajo = @legajoOld WHERE id_examen = @id_examen
		RAISERROR('Hubo un error al modificar los datos del examen. Revise el estado del alumno y vuelva a intentarlo.', 16,1)
	END
	ELSE
	BEGIN
		DELETE FROM EXAMENES WHERE id_examen = @id_examen
		RAISERROR('Hubo un error al registrar el examen, verifique que el alumno esté en condiciones de poder inscribirse.', 16, 1)
	END
END
GO
ALTER TABLE [dbo].[EXAMENES] ENABLE TRIGGER [TRG_VALIDA_EXAMEN]
GO
USE [master]
GO
ALTER DATABASE [Academika] SET  READ_WRITE 
GO
