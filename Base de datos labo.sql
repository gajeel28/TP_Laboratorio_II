CREATE DATABASE Academika
GO
use Academika
GO

CREATE TABLE ESTADOS_CIVIL (
	id_estado_civil int IDENTITY (1,1), 
	estado_civil varchar (50) not null,
	CONSTRAINT pk_estado_civil PRIMARY KEY (id_estado_civil)
)

CREATE TABLE CARGOS (
	id_cargo int IDENTITY (1,1), 
	cargo varchar (50) not null,
	CONSTRAINT pk_cargos PRIMARY KEY (id_cargo)
)

CREATE TABLE SITUACIONES_HABIT (
	id_situac_habit int IDENTITY(1,1),
	situac_habit varchar (50),
	CONSTRAINT pk_id_situac_habit PRIMARY KEY (id_situac_habit)
)

CREATE TABLE PAISES (
id_pais int IDENTITY (1,1), 
nom_pais varchar (50) not null,
CONSTRAINT pk_pais PRIMARY KEY (id_pais))

CREATE TABLE PROVINCIAS (
id_provincia int IDENTITY (1,1), 
nom_provincia varchar (50) not null,
id_pais int,
CONSTRAINT pk_provincia PRIMARY KEY (id_provincia),
CONSTRAINT fk_pais_provincia FOREIGN KEY (id_pais) REFERENCES PAISES (id_pais)
)
CREATE TABLE LOCALIDADES (
id_localidad int IDENTITY (1,1),
nom_localidad varchar (50) not null,
id_provincia int,
CONSTRAINT pk_localidad PRIMARY KEY (id_localidad),
CONSTRAINT fk_prov_localidad FOREIGN KEY (id_provincia) references PROVINCIAS (id_provincia)
)
CREATE TABLE BARRIOS (
id_barrio int IDENTITY (1,1),
nom_barrio varchar (50) not null,
id_localidad int,
CONSTRAINT pk_barrio PRIMARY KEY (id_barrio),
CONSTRAINT fk_localidad_barrio FOREIGN KEY (id_localidad) REFERENCES LOCALIDADES (id_localidad)
)
CREATE TABLE TIPOS_DOC (
id_tipo_doc int IDENTITY (1,1),
tipo_doc varchar (50) not null,
CONSTRAINT pk_tipos_doc PRIMARY KEY (id_tipo_doc),
)
CREATE TABLE TIPOS_TRABAJO (
id_tipo_trab int IDENTITY (1,1),
ipo_trabajo varchar (50) not null,
CONSTRAINT pk_tipos_trab PRIMARY KEY (id_tipo_trab),
)
CREATE TABLE ALUMNOS (
	legajo int IDENTITY (1,1),
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	genero varchar (50),
	id_tipo_doc int,
	num_doc varchar (10),
	calle varchar (50),
	numero int, 
	id_situac_habit int,
	fecha_nac date,
	id_estado_civil int,
	trabaja bit not null,
	id_tipo_trab int,
	id_barrio int, 
	telefono int,
	email varchar (50),
	CONSTRAINT pk_alumnos PRIMARY KEY (legajo),
	CONSTRAINT fk_tipo_doc_alumno FOREIGN KEY (id_tipo_doc) REFERENCES TIPOS_DOC (id_tipo_doc),
	CONSTRAINT fk_tipo_trab_alumno FOREIGN KEY (id_tipo_trab) REFERENCES TIPOS_TRABAJO (id_tipo_trab),
	CONSTRAINT fk_barrio_alumno FOREIGN KEY (id_barrio) REFERENCES BARRIOS (id_barrio),
	CONSTRAINT fk_situaciones_habit_alumno FOREIGN KEY (id_situac_habit) REFERENCES SITUACIONES_HABIT (id_situac_habit),
	CONSTRAINT fk_estado_civil_alumno FOREIGN KEY (id_estado_civil) REFERENCES ESTADOS_CIVIL (id_estado_civil)
)

CREATE TABLE TIPOS_EXAMEN (
id_tipo_examen int IDENTITY (1,1),
tipo_examen varchar (30),
CONSTRAINT pk_tipos_examen PRIMARY KEY (id_tipo_examen)
)
CREATE TABLE TURNOS_EXAMEN (
id_turno int IDENTITY (1,1),
turno varchar (30) not null,
anio_lectivo int,
CONSTRAINT pk_turnos_examen PRIMARY KEY (id_turno)
)
CREATE TABLE CURSOS (
id_curso int IDENTITY (1,1),
curso varchar (30) not null,
CONSTRAINT pk_cursos PRIMARY KEY (id_curso)
)
CREATE TABLE CARRERAS (
id_carrera int IDENTITY (1,1),
carrera varchar (100) not null,
CONSTRAINT pk_carreras PRIMARY KEY (id_carrera)
)
CREATE TABLE CONDICIONES (
id_condicion int IDENTITY (1,1),
condicion varchar (30) not null,
CONSTRAINT pk_condiciones PRIMARY KEY (id_condicion)
)
CREATE TABLE MATERIAS (
id_materia int IDENTITY (1,1),
materia varchar (100) not null,
CONSTRAINT pk_materias PRIMARY KEY (id_materia)
)
CREATE TABLE DOCENTES (
id_docente int IDENTITY (1,1),
nombre varchar (50) not null,
apellido varchar (50) not null,
email nvarchar (60),
telefono varchar (30),
CONSTRAINT pk_docentes PRIMARY KEY (id_docente)
)

CREATE TABLE ALUMNOSxMATERIA (
id_alumno_materia int IDENTITY(1,1),
legajo int,
id_materia int,
id_condicion int,
anio_cursado int

CONSTRAINT pk_alumno_materia  PRIMARY KEY(id_alumno_materia),
CONSTRAINT fk_legajo_alumnos_x_materia FOREIGN KEY(legajo) REFERENCES ALUMNOS (legajo),
CONSTRAINT fk_materia_alumnos_x_materia FOREIGN KEY(id_materia) REFERENCES MATERIAS (id_materia),
CONSTRAINT fk_condicion_alumnos_x_materia FOREIGN KEY (id_condicion) REFERENCES CONDICIONES (id_condicion)
)

CREATE TABLE ALUMNOSxCARRERA (
id_carrera_alumno int IDENTITY(1,1),
legajo int,
id_carrera int

CONSTRAINT pk_carrera_alumno PRIMARY KEY (id_carrera_alumno),
CONSTRAINT fk_legajo_alumnos_x_carrera FOREIGN KEY (legajo) REFERENCES ALUMNOS (legajo),
CONSTRAINT fk_carrera_alumnos_x_carrera FOREIGN KEY (id_carrera) REFERENCES CARRERAS (id_carrera)
)

CREATE TABLE ALUMNOSxCURSO (
id_alumno_curso int IDENTITY(1,1),
legajo int,
id_curso int

CONSTRAINT pk_alumno_curso PRIMARY KEY (id_alumno_curso),
CONSTRAINT fk_legajo_alumnos_x_curso FOREIGN KEY (legajo) REFERENCES ALUMNOS (legajo),
CONSTRAINT fk_curso_alumnos_x_curso FOREIGN KEY (id_curso) REFERENCES CURSOS (id_curso)
)

CREATE TABLE EXAMENES (
id_examen int IDENTITY(1,1),
id_tipo_examen int,
fecha datetime,
id_turno int,
id_materia int

CONSTRAINT pk_examen PRIMARY KEY (id_examen),
CONSTRAINT fk_tipo_examen_examenes FOREIGN KEY (id_tipo_examen) REFERENCES TIPOS_EXAMEN (id_tipo_examen),
CONSTRAINT fk_turno_examenes FOREIGN KEY (id_turno) REFERENCES TURNOS_EXAMEN (id_turno),
CONSTRAINT fk_materia_examentes FOREIGN KEY (id_materia) REFERENCES MATERIAS (id_materia)

)

CREATE TABLE MATERIASxCURSO(
id_materia_curso int IDENTITY(1,1),
id_materia int,
id_curso int,

CONSTRAINT pk_materia_curso PRIMARY KEY (id_materia_curso),
CONSTRAINT fk_materia_materias_x_curso FOREIGN KEY (id_materia) REFERENCES MATERIAS (id_materia),
CONSTRAINT fk_curso_materias_x_curso FOREIGN KEY (id_curso) REFERENCES CURSOS (id_curso)
)



CREATE TABLE DOCENTESxMATERIA (
id_docente_materia int IDENTITY(1,1),
id_docente int,
id_materia_curso int

CONSTRAINT pk_docente_materia PRIMARY KEY (id_docente_materia),
CONSTRAINT fk_docente_docentes_x_materia FOREIGN KEY (id_docente) REFERENCES DOCENTES (id_docente),
CONSTRAINT fk_materia_curso_docentes_x_materia FOREIGN KEY (id_materia_curso) REFERENCES MATERIASxCURSO (id_materia_curso)
)

CREATE TABLE MATERIASxCARRERA (
	id_materias_carrera int IDENTITY (1,1),
	id_carrera int, 
	id_materia int, 
	CONSTRAINT pk_id_materias_carrera PRIMARY KEY (id_materias_carrera),
	CONSTRAINT fk_id_carrera FOREIGN KEY (id_materias_carrera) REFERENCES carreras (id_carrera),
	CONSTRAINT fk_id_materia FOREIGN KEY (id_materia) REFERENCES materias (id_materia)
)

CREATE TABLE DOCENTExTURNO (
	id_docente_turno int IDENTITY (1,1),
	id_docente int,
	id_turno int,
	id_cargo int,
	CONSTRAINT pk_docente_turno PRIMARY KEY (id_docente_turno),
	CONSTRAINT fk_docente_docente_turno FOREIGN KEY (id_docente) REFERENCES DOCENTES (id_docente),
	CONSTRAINT fk_turno_docente_turno FOREIGN KEY (id_turno) REFERENCES TURNOS_EXAMEN (id_turno),
	CONSTRAINT fk_cargo_docente_turno FOREIGN KEY (id_cargo) REFERENCES CARGOS (id_cargo)
)


==================================================================
INSERTS:

--PROVINCIAS:
INSERT INTO PROVINCIAS (nom_provincia) VALUES('BUENOS AIRES')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('CATAMARCA')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('CHACO')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('CHUBUT')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('CORDOBA')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('CORRIENTES')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('ENTRE RIOS')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('FORMOSA')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('JUJUY')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('LA PAMPA')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('LA RIOJA')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('MENDOZA')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('MISIONES')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('NEUQUEN')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('RIO NEGRO')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('SALTA')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('SAN JUAN')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('SAN LUIS')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('SANTA CRUZ')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('SANTA FE')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('SANTIAGO DEL ESTERO')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('TIERRA DEL FUEGO')
INSERT INTO PROVINCIAS (nom_provincia) VALUES('TUCUMAN')


--LOCALIDADES
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CORDOBA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CARLOS PAZ', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('ADELIA MARIA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('ALTA GRACIA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('AGUA DE ORO', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('AGUA DEL TALA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('AGUA PINTADA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('ALEJANDRO ROCA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('ARIAS', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('ARROYO CABRAL', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('ARROYO LA HIGUERA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('ASCOCHINGA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('BAJO DE FERNANDEZ', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('BAJO DEL CARMEN', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('BAJO GRANDE', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('BAJO HONDO', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('BAJO LINDO', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('BARRIO DEAN FUNES', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('BARRIO LA FERIA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('BULNES', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CAJON DEL RIO', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CALASUYA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CAMPO BANDILLO', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CAMPO LOS ZORROS', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CANDELARIA SUR', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CAPILLA DE SITON', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CAPILLA LA ESPERANZA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CASAS VEJAS', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CASEROS ESTE', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CAÑADA DE LUQUE', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CAÑADA DEL TALA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CAÑADA VERDE', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CERRO PELADO', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CHARACATO', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CHAÑARIACO', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CHIPITIN', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CHUA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('CHURQUI CAÑADA', 5)
INSERT INTO LOCALIDADES (nom_localidad, id_provincia) VALUES('COLAZO', 5)


--BARRIOS
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('CENTRO', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('ALTO ALBERDI', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('OBSERVATORIO', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('JARDIN', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('GENERAL PAZ', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('PUEYRREDON', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('PARQUE HORIZONTE', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('SAN MARTIN', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('SAN VICENTE', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('JUNIOR', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('MAIPU', 1)
INSERT INTO BARRIOS(nom_barrio, id_localidad) VALUES ('PANAMERICANO', 1)

--TIPOS DOC

INSERT INTO tipos_doc(tipo_doc) VALUES ('DNI')
INSERT INTO tipos_doc(tipo_doc) VALUES ('PASAPORTE')
INSERT INTO tipos_doc(tipo_doc) VALUES ('LIBRETA CIVICA')
INSERT INTO tipos_doc(tipo_doc) VALUES ('CARNET EXTRANJERO')
INSERT INTO tipos_doc(tipo_doc) VALUES ('PARTIDA NACIMIENTO')
INSERT INTO tipos_doc(tipo_doc) VALUES ('OTRO')
INSERT INTO tipos_doc(tipo_doc) VALUES ('REG. UNICO CONTRIBUYENTE')
INSERT INTO tipos_doc(tipo_doc) VALUES ('CUIT')
INSERT INTO tipos_doc(tipo_doc) VALUES ('CUIL')


INSERT INTO alumnos (nombre, apellido, genero, id_tipo_doc, num_doc, calle, numero, id_situac_habit, id_tipo_trab, id_estado_civil, trabaja, fecha_nac, id_barrio, telefono , email)
VALUES('Lucio', 'Alfonso','NS/NC', 1, 30000,'avenida siempre viva', 123, 1, 1, 1, 1, '10/10/1990', 1,  3512, 'lucio@utn.edu.ar')

INSERT INTO alumnos (nombre, apellido, genero, id_tipo_doc, num_doc, calle, numero, id_situac_habit, id_tipo_trab, id_estado_civil, trabaja, fecha_nac, id_barrio, telefono , email)
VALUES('Gaston', 'Sosa','NS/NC', 1, 30001,'avenida siempre viva', 1234, 1, 1, 1, 1, '10/10/1996', 1,  3512, 'gaston@utn.edu.ar')

INSERT INTO alumnos (nombre, apellido, genero, id_tipo_doc, num_doc, calle, numero, id_situac_habit, id_tipo_trab, id_estado_civil, trabaja, fecha_nac, id_barrio, telefono , email)
VALUES('Ciro', 'Gianpiari','NS/NC', 1, 30003,'avenida siempre viva', 1235, 1, 1, 1, 1, '10/10/1994', 1,  3512, 'ciro@utn.edu.ar')

INSERT INTO alumnos (nombre, apellido, genero, id_tipo_doc, num_doc, calle, numero, id_situac_habit, id_tipo_trab, id_estado_civil, trabaja, fecha_nac, id_barrio, telefono , email)
VALUES('Ciro', 'Gianpiari','NS/NC', 1, 30002,'avenida siempre viva', 1236, 1, 1, 1, 1, '10/10/1991', 1,  3512, 'ciro@utn.edu.ar')

INSERT INTO alumnos (nombre, apellido, genero, id_tipo_doc, num_doc, calle, numero, id_situac_habit, id_tipo_trab, id_estado_civil, trabaja, fecha_nac, id_barrio, telefono , email)
VALUES('Javier', 'Yonose','NS/NC', 1, 30002,'avenida siempre viva', 1237, 1, 1, 1, 1, '10/10/1992', 1,  3512, 'javier@utn.edu.ar')





REVISAR SI FALTA ALGÚN TIPO DE EXAMEN
-- TIPOS_EXAMEN
INSERT INTO TIPOS_EXAMEN(tipo_examen) VALUES ('PRIMER PARCIAL')
INSERT INTO TIPOS_EXAMEN(tipo_examen) VALUES ('SEGUNDO PARCIAL')
INSERT INTO TIPOS_EXAMEN(tipo_examen) VALUES ('RECUPERATORIO')
INSERT INTO TIPOS_EXAMEN(tipo_examen) VALUES ('EXAMEN FINAL')



--TURNOS_EXAMEN
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('PRIMER TURNO', 21)
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('SEGUNDO TURNO', 21)
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('TERCER TURNO', 21 )
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('CUARTO TURNO', 21 )
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('PRIMER TURNO', 20)
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('SEGUNDO TURNO', 20)
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('TERCER TURNO', 20 )
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('CUARTO TURNO', 20 )
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('PRIMER TURNO', 21)
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('SEGUNDO TURNO', 21)
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('TERCER TURNO', 21 )
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('CUARTO TURNO', 21 )
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('PRIMER TURNO', 22)
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('SEGUNDO TURNO', 22)
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('TERCER TURNO', 22 )
INSERT INTO TURNOS_EXAMEN(turno, anio_lectivo) VALUES ('CUARTO TURNO', 22 )


--CARGOS
INSERT INTO CARGOS(cargo) VALUES ('PRESIDENTE DE MESA')
INSERT INTO CARGOS(cargo) VALUES ('PRIMER VOCAL')
INSERT INTO CARGOS(cargo) VALUES ('SEGUNDO VOCAL')

--CONDICIONES
INSERT INTO CONDICIONES(condicion) VALUES ('REGULAR')
INSERT INTO CONDICIONES(condicion) VALUES ('PROMOCIONAL')
INSERT INTO CONDICIONES(condicion) VALUES ('LIBRE')





--MATERIAS
--TUP
INSERT INTO MATERIAS(materia) VALUES ('PROGRAMACION I')
INSERT INTO MATERIAS(materia) VALUES ('SISTEMAS DE PROCESAMIENTO DE DATOS')
INSERT INTO MATERIAS(materia) VALUES ('MATEMATICA')
INSERT INTO MATERIAS(materia) VALUES ('INGLES I')
INSERT INTO MATERIAS(materia) VALUES ('LABORATORIO DE COMPUTACION I')
INSERT INTO MATERIAS(materia) VALUES ('PROGRAMACION II')
INSERT INTO MATERIAS(materia) VALUES ('ARQUITECTURA Y SISTEMAS OPERATIVOSI')
INSERT INTO MATERIAS(materia) VALUES ('ESTADISTICA')
INSERT INTO MATERIAS(materia) VALUES ('INGLES II')
INSERT INTO MATERIAS(materia) VALUES ('LABORATORIO DE COMPUTACION II')
INSERT INTO MATERIAS(materia) VALUES ('METODOLOGIA DE LA INVESTIGACION')
INSERT INTO MATERIAS(materia) VALUES ('PROGRAMACION III')
INSERT INTO MATERIAS(materia) VALUES ('ORGANIZACION CONTABLE DE LA EMPRESA')
INSERT INTO MATERIAS(materia) VALUES ('ORGANIZACION EMPRESARIAL')
INSERT INTO MATERIAS(materia) VALUES ('ELEMENTOS DE INVESTIGACION OPERATIVA')
INSERT INTO MATERIAS(materia) VALUES ('LABORATORIO DE COMPUTACION III')
INSERT INTO MATERIAS(materia) VALUES ('METODOLOGIA DE SISTEMAS I')
INSERT INTO MATERIAS(materia) VALUES ('DISEÑO Y ADMINISTRACION DE BASES DE DATOS')
INSERT INTO MATERIAS(materia) VALUES ('LEGISLACION')
INSERT INTO MATERIAS(materia) VALUES ('LABORATORIO DE COMPUTACION IV')
INSERT INTO MATERIAS(materia) VALUES ('PRACTICA PROFESIONAL - TUP')
--TUM(MECATRONICA)
INSERT INTO MATERIAS(materia) VALUES ('MECATRONICA I')
INSERT INTO MATERIAS(materia) VALUES ('FISICA')
INSERT INTO MATERIAS(materia) VALUES ('MATEMATICA')
INSERT INTO MATERIAS(materia) VALUES ('INGLES')
INSERT INTO MATERIAS(materia) VALUES ('HERRAMIENTAS INFORMATICAS')
INSERT INTO MATERIAS(materia) VALUES ('SISTEMAS CAD')
INSERT INTO MATERIAS(materia) VALUES ('MATERIALES')
INSERT INTO MATERIAS(materia) VALUES ('ELECTROTECNIA I')
INSERT INTO MATERIAS(materia) VALUES ('SISTEMAS DIGITALES')
INSERT INTO MATERIAS(materia) VALUES ('MECATRONICA II')
INSERT INTO MATERIAS(materia) VALUES ('MECANICA I')
INSERT INTO MATERIAS(materia) VALUES ('MANTENIMIENTO INDUSTRIAL')
INSERT INTO MATERIAS(materia) VALUES ('ELECTRONICA')
INSERT INTO MATERIAS(materia) VALUES ('ELECTROTECNIA II')
INSERT INTO MATERIAS(materia) VALUES ('MECANICA II')
INSERT INTO MATERIAS(materia) VALUES ('TECNOLOGIA DE LA FABRICACION')
INSERT INTO MATERIAS(materia) VALUES ('AUTOMACION INDUSTRIAL')
INSERT INTO MATERIAS(materia) VALUES ('GESTION DE LA CALIDAD Y METROLOGIA')
INSERT INTO MATERIAS(materia) VALUES ('PASANTIA ENTES OFICIALES O EMPRESAS')
INSERT INTO MATERIAS(materia) VALUES ('SEMINARIOS')

--TUMI
INSERT INTO MATERIAS(materia) VALUES ('MANTENIMIENTO INDUSTRIAL I')
INSERT INTO MATERIAS(materia) VALUES ('ELECTROTECNIA I')
INSERT INTO MATERIAS(materia) VALUES ('MATEMATICA')
INSERT INTO MATERIAS(materia) VALUES ('QUIMICA')
INSERT INTO MATERIAS(materia) VALUES ('RELACIONES INDUSTRIALES')
INSERT INTO MATERIAS(materia) VALUES ('INFORMATICA I')
INSERT INTO MATERIAS(materia) VALUES ('MECANICA II')
INSERT INTO MATERIAS(materia) VALUES ('SISTEMA DE REPRESENTACION')
INSERT INTO MATERIAS(materia) VALUES ('CONOCIMIENTOS DE LOS MATERIALES')
INSERT INTO MATERIAS(materia) VALUES ('NEUMATICA E HIDRAULICA')
INSERT INTO MATERIAS(materia) VALUES ('MANTENIMIENTO INDUSTRIAL II')
INSERT INTO MATERIAS(materia) VALUES ('ELEMENTOS DE MAQUINAS')
INSERT INTO MATERIAS(materia) VALUES ('TECNOLOGIA DE FRIO Y CALOR')
INSERT INTO MATERIAS(materia) VALUES ('INSTALACIONES Y MAQUINAS ELECTRICAS')
INSERT INTO MATERIAS(materia) VALUES ('INFORMATICA II')
INSERT INTO MATERIAS(materia) VALUES ('ELEMENTOS DE AUTOMATICACION')
INSERT INTO MATERIAS(materia) VALUES ('INGLES')
INSERT INTO MATERIAS(materia) VALUES ('SEGURIDAD HIGIENE Y PROTECCION AMBIENTAL')
INSERT INTO MATERIAS(materia) VALUES ('COSTOS Y CONTROL DE GESTION')
INSERT INTO MATERIAS(materia) VALUES ('ASEGURAMIENTO DE LA CALIDAD')
INSERT INTO MATERIAS(materia) VALUES ('PRACTICA PROFESIONAL - TUMI')
INSERT INTO MATERIAS(materia) VALUES ('PASANTIA - TUMI')



-- SITUACIONES_HABIT

INSERT INTO SITUACIONES_HABIT VALUES ('Vivienda propia')
INSERT INTO SITUACIONES_HABIT VALUES ('Alquiler fijo')
INSERT INTO SITUACIONES_HABIT VALUES ('Alquiler temporal')
INSERT INTO SITUACIONES_HABIT VALUES ('Vivienda compartida no propia')

-- TIPOS_TRABAJO

INSERT INTO TIPOS_TRABAJO VALUES ('Rel. Dependencia Full-Time')
INSERT INTO TIPOS_TRABAJO VALUES ('Rel. Dependencia Part-Time')
INSERT INTO TIPOS_TRABAJO VALUES ('Trabajador Independiente')

-- ESTADOS_CIVIL
INSERT INTO ESTADOS_CIVIL VALUES ('Casado/a')
INSERT INTO ESTADOS_CIVIL VALUES ('Soltero/a')
INSERT INTO ESTADOS_CIVIL VALUES ('Viudo/a')
INSERT INTO ESTADOS_CIVIL VALUES ('Divorciado/a')


-- CARRERAS

INSERT INTO CARRERAS VALUES ('Tecnicatura en Programación')
INSERT INTO CARRERAS VALUES ('Tecnicatura en Mecatrónica')
INSERT INTO CARRERAS VALUES ('Tecnicatura en Mantenimiento Industrial')

-- CURSOS
INSERT INTO CURSOS VALUES ('1W1')
INSERT INTO CURSOS VALUES ('1W2')
INSERT INTO CURSOS VALUES ('1W3')
INSERT INTO CURSOS VALUES ('2W1')
INSERT INTO CURSOS VALUES ('2W2')
INSERT INTO CURSOS VALUES ('2W3')
INSERT INTO CURSOS VALUES ('1X1')
INSERT INTO CURSOS VALUES ('1X2')
INSERT INTO CURSOS VALUES ('1X3')
INSERT INTO CURSOS VALUES ('2X1')
INSERT INTO CURSOS VALUES ('2X2')
INSERT INTO CURSOS VALUES ('2X3')
INSERT INTO CURSOS VALUES ('1T1')
INSERT INTO CURSOS VALUES ('1T2')
INSERT INTO CURSOS VALUES ('1T3')
INSERT INTO CURSOS VALUES ('2T1')
INSERT INTO CURSOS VALUES ('2T2')
INSERT INTO CURSOS VALUES ('2T3')

-- DOCENTES

INSERT INTO DOCENTES VALUES('Carlos','González','carlosgonzalez@gmail.com',1143789800)
INSERT INTO DOCENTES VALUES('Maria Belen','Muñoz','MariaBelenMuñoz@gmail.com',1143913032)
INSERT INTO DOCENTES VALUES('Camila','Rojas','CamilaRojas@gmail.com',1144036264)
INSERT INTO DOCENTES VALUES('Juan Manuel','Díaz','JuanManuelDíaz@gmail.com',1144159496)
INSERT INTO DOCENTES VALUES('Maria Florencia','Pérez','MariaFlorenciaPérez@gmail.com',1144282728)
INSERT INTO DOCENTES VALUES('Juan Ignacio','Soto','JuanIgnacioSoto@gmail.com',1144405960)
INSERT INTO DOCENTES VALUES('Nicolas','Contreras','NicolasContreras@gmail.com',1144529192)
INSERT INTO DOCENTES VALUES('Rocio Belen','Silva','RocioBelenSilva@gmail.com',1144652424)
INSERT INTO DOCENTES VALUES('Florencia','Martínez','FlorenciaMartínez@gmail.com',1144775656)
INSERT INTO DOCENTES VALUES('Juan Cruz','Sepúlveda','JuanCruzSepúlveda@gmail.com',1144898888)
INSERT INTO DOCENTES VALUES('Sofia','Morales','SofiaMorales@gmail.com',1145022120)
INSERT INTO DOCENTES VALUES('Matias Ezequiel','Rodríguez','MatiasEzequielRodríguez@gmail.com',1145145352)
INSERT INTO DOCENTES VALUES('Agustin','López','AgustinLópez@gmail.com',1145268584)
INSERT INTO DOCENTES VALUES('Maria Sol','Fuentes','MariaSolFuentes@gmail.com',1145391816)
INSERT INTO DOCENTES VALUES('Agustina','Hernández','AgustinaHernández@gmail.com',1145515048)
INSERT INTO DOCENTES VALUES('Tomás','Torres','TomásTorres@gmail.com',1145638280)
INSERT INTO DOCENTES VALUES('Miguel Angel','Araya','MiguelAngelAraya@gmail.com',1145761512)
INSERT INTO DOCENTES VALUES('Micaela','Flores','MicaelaFlores@gmail.com',1145884744)
INSERT INTO DOCENTES VALUES('Juan Pablo','Espinoza','JuanPabloEspinoza@gmail.com',1146007976)
INSERT INTO DOCENTES VALUES('Maria Victoria','Valenzuela','MariaVictoriaValenzuela@gmail.com',1146131208)
INSERT INTO DOCENTES VALUES('Jose Luis','Castillo','JoseLuisCastillo@gmail.com',1146254440)
INSERT INTO DOCENTES VALUES('Santiago','Tapia','SantiagoTapia@gmail.com',1146377672)
INSERT INTO DOCENTES VALUES('María Eugenia','Reyes','MaríaEugeniaReyes@gmail.com',1146500904)
INSERT INTO DOCENTES VALUES('Julieta','Gutiérrez','JulietaGutiérrez@gmail.com',1146624136)
INSERT INTO DOCENTES VALUES('Camila Belén','Castro','CamilaBelénCastro@gmail.com',1146747368)
INSERT INTO DOCENTES VALUES('Matias Nicolas','Pizarro','MatiasNicolasPizarro@gmail.com',1146870600)
INSERT INTO DOCENTES VALUES('Maria Jose','Álvarez','MariaJoseÁlvarez@gmail.com',1146993832)
INSERT INTO DOCENTES VALUES('Facundo','Vásquez','FacundoVásquez@gmail.com',1147117064)
INSERT INTO DOCENTES VALUES('Franco','Sánchez','FrancoSánchez@gmail.com',1147240296)
INSERT INTO DOCENTES VALUES('Lucia','Fernández','LuciaFernández@gmail.com',1147363528)
INSERT INTO DOCENTES VALUES('Juan Carlos','Ramírez','JuanCarlosRamírez@gmail.com',1147486760)
INSERT INTO DOCENTES VALUES('Maria de los Angeles','Carrasco','MariadelosAngelesCarrasco@gmail.com',1147609992)
INSERT INTO DOCENTES VALUES('Micaela Belen','Gómez','MicaelaBelenGómez@gmail.com',1147733224)
INSERT INTO DOCENTES VALUES('Federico','Cortés','FedericoCortés@gmail.com',1147856456)
INSERT INTO DOCENTES VALUES('Gabriel Alejandro','Herrera','GabrielAlejandroHerrera@gmail.com',1147979688)
INSERT INTO DOCENTES VALUES('Ignacio','Núñez','IgnacioNúñez@gmail.com',1148102920)
INSERT INTO DOCENTES VALUES('Francisco','Jara','FranciscoJara@gmail.com',1148226152)
INSERT INTO DOCENTES VALUES('Matias','Vergara','MatiasVergara@gmail.com',1148349384)
INSERT INTO DOCENTES VALUES('Joaquín','Rivera','JoaquínRivera@gmail.com',1148472616)
INSERT INTO DOCENTES VALUES('Lucas Ezequiel','Figueroa','LucasEzequielFigueroa@gmail.com',1148595848)
INSERT INTO DOCENTES VALUES('Juan Jose','Riquelme','JuanJoseRiquelme@gmail.com',1148719080)
INSERT INTO DOCENTES VALUES('Lucas','García','LucasGarcía@gmail.com',1148842312)
INSERT INTO DOCENTES VALUES('Franco Nicolas','Miranda','FrancoNicolasMiranda@gmail.com',1148965544)
INSERT INTO DOCENTES VALUES('Florencia Belen','Bravo','FlorenciaBelenBravo@gmail.com',1149088776)
INSERT INTO DOCENTES VALUES('María Agustina','Vera','MaríaAgustinaVera@gmail.com',1149212008)
INSERT INTO DOCENTES VALUES('Carolina','Molina','CarolinaMolina@gmail.com',1149335240)
INSERT INTO DOCENTES VALUES('Nicolas Alejandro','Vega','NicolasAlejandroVega@gmail.com',1149458472)
INSERT INTO DOCENTES VALUES('Micaela Soledad','Campos','MicaelaSoledadCampos@gmail.com',1149581704)
INSERT INTO DOCENTES VALUES('Manuel','Sandoval','ManuelSandoval@gmail.com',1149704936)
INSERT INTO DOCENTES VALUES('Julián','Orellana','JuliánOrellana@gmail.com',1149828168)
INSERT INTO DOCENTES VALUES('Facundo Nicolas','Cárdenas','FacundoNicolasCárdenas@gmail.com',1149951400)
INSERT INTO DOCENTES VALUES('Victoria','Olivares','VictoriaOlivares@gmail.com',1150074632)
INSERT INTO DOCENTES VALUES('María Celeste','Alarcón','MaríaCelesteAlarcón@gmail.com',1150197864)
INSERT INTO DOCENTES VALUES('Gonzalo','Gallardo','GonzaloGallardo@gmail.com',1150321096)
INSERT INTO DOCENTES VALUES('Sofia Belen','Ortiz','SofiaBelenOrtiz@gmail.com',1150444328)
INSERT INTO DOCENTES VALUES('Martin','Garrido','MartinGarrido@gmail.com',1150567560)
INSERT INTO DOCENTES VALUES('Sebastián','Salazar','SebastiánSalazar@gmail.com',1150690792)
INSERT INTO DOCENTES VALUES('Antonella','Guzmán','AntonellaGuzmán@gmail.com',1150814024)
INSERT INTO DOCENTES VALUES('Maria Laura','Henríquez','MariaLauraHenríquez@gmail.com',1150937256)
INSERT INTO DOCENTES VALUES('Maximiliano','Saavedra','MaximilianoSaavedra@gmail.com',1151060488)
INSERT INTO DOCENTES VALUES('Luis Alberto','Navarro','LuisAlbertoNavarro@gmail.com',1151183720)
INSERT INTO DOCENTES VALUES('Maria Fernanda','Aguilera','MariaFernandaAguilera@gmail.com',1151306952)
INSERT INTO DOCENTES VALUES('Carlos Alberto','Parra','CarlosAlbertoParra@gmail.com',1151430184)
INSERT INTO DOCENTES VALUES('Nicolas Ezequiel','Romero','NicolasEzequielRomero@gmail.com',1151553416)
INSERT INTO DOCENTES VALUES('Macarena','Aravena','MacarenaAravena@gmail.com',1151676648)
INSERT INTO DOCENTES VALUES('Yamila Belen','Vargas','YamilaBelenVargas@gmail.com',1151799880)
INSERT INTO DOCENTES VALUES('Valentina','Vázquez','ValentinaVázquez@gmail.com',1151923112)
INSERT INTO DOCENTES VALUES('Emanuel','Cáceres','EmanuelCáceres@gmail.com',1152046344)
INSERT INTO DOCENTES VALUES('Micaela Ayelen','Yáñez','MicaelaAyelenYáñez@gmail.com',1152169576)
INSERT INTO DOCENTES VALUES('Ana Laura','Leiva','AnaLauraLeiva@gmail.com',1152292808)
INSERT INTO DOCENTES VALUES('Daniel Alejandro','Escobar','DanielAlejandroEscobar@gmail.com',1152416040)
INSERT INTO DOCENTES VALUES('Martina','Ruiz','MartinaRuiz@gmail.com',1152539272)
INSERT INTO DOCENTES VALUES('Lucas Gabriel','Valdés','LucasGabrielValdés@gmail.com',1152662504)
INSERT INTO DOCENTES VALUES('Maria Emilia','Vidal','MariaEmiliaVidal@gmail.com',1152785736)
INSERT INTO DOCENTES VALUES('Franco Emanuel','Salinas','FrancoEmanuelSalinas@gmail.com',1152908968)
INSERT INTO DOCENTES VALUES('Rodrigo','Zuñiga','RodrigoZuñiga@gmail.com',1153032200)
INSERT INTO DOCENTES VALUES('Rocio','Peña','RocioPeña@gmail.com',1153155432)
INSERT INTO DOCENTES VALUES('Ana Paula','Godoy','AnaPaulaGodoy@gmail.com',1153278664)
INSERT INTO DOCENTES VALUES('Brian Ezequiel','Lagos','BrianEzequielLagos@gmail.com',1153401896)
INSERT INTO DOCENTES VALUES('Maria Soledad','Maldonado','MariaSoledadMaldonado@gmail.com',1153525128)
INSERT INTO DOCENTES VALUES('Franco Ezequiel','Bustos','FrancoEzequielBustos@gmail.com',1153648360)
INSERT INTO DOCENTES VALUES('Lucia Belen','Medina','LuciaBelenMedina@gmail.com',1153771592)
INSERT INTO DOCENTES VALUES('Jonathan Ezequiel','Pino','JonathanEzequielPino@gmail.com',1153894824)
INSERT INTO DOCENTES VALUES('Ana Belen','Palma','AnaBelenPalma@gmail.com',1154018056)
INSERT INTO DOCENTES VALUES('Juan Gabriel','Moreno','JuanGabrielMoreno@gmail.com',1154141288)
INSERT INTO DOCENTES VALUES('Luciano','Sanhueza','LucianoSanhueza@gmail.com',1154264520)
INSERT INTO DOCENTES VALUES('Lucas Matias','Carvajal','LucasMatiasCarvajal@gmail.com',1154387752)
INSERT INTO DOCENTES VALUES('Camila Soledad','Navarrete','CamilaSoledadNavarrete@gmail.com',1154510984)
INSERT INTO DOCENTES VALUES('Lautaro','Sáez','LautaroSáez@gmail.com',1154634216)
INSERT INTO DOCENTES VALUES('Milagros','Alvarado','MilagrosAlvarado@gmail.com',1154757448)
INSERT INTO DOCENTES VALUES('Ezequiel','Donoso','EzequielDonoso@gmail.com',1154880680)
INSERT INTO DOCENTES VALUES('Lucas Emanuel','Poblete','LucasEmanuelPoblete@gmail.com',1155003912)
INSERT INTO DOCENTES VALUES('Daiana Belen','Bustamante','DaianaBelenBustamante@gmail.com',1155127144)
INSERT INTO DOCENTES VALUES('Matias Gabriel','Toro','MatiasGabrielToro@gmail.com',1155250376)
INSERT INTO DOCENTES VALUES('Miguel Alejandro','Ortega','MiguelAlejandroOrtega@gmail.com',1155373608)
INSERT INTO DOCENTES VALUES('Juan Martin','Venegas','JuanMartinVenegas@gmail.com',1155496840)
INSERT INTO DOCENTES VALUES('Lucas Nahuel','Guerrero','LucasNahuelGuerrero@gmail.com',1155620072)
INSERT INTO DOCENTES VALUES('Franco David','Mendoza','FrancoDavidMendoza@gmail.com',1155743304)
INSERT INTO DOCENTES VALUES('Yamila Soledad','Farías','YamilaSoledadFarías@gmail.com',1155866536)
INSERT INTO DOCENTES VALUES('Matias Alejandro','San Martín','MatiasAlejandroSanMartín@gmail.com',1155989768)
