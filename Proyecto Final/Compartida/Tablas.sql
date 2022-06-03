DROP TABLE Ejecuciones;
DROP TABLE Titulares;
DROP TABLE DirectoresInvitados;
DROP TABLE Intérpretes;
DROP TABLE Directores;
DROP TABLE Itinerario;
DROP TABLE Temporadas;
DROP TABLE Conciertos;
DROP TABLE Obras;
DROP TABLE Compositores;

CREATE TABLE Compositores (
ID_compositor			NUMBER(6),
Nombre						VARCHAR2(50),
FechaNacimiento		date,
FechaDifunto				date,
CONSTRAINT PK_Compositores PRIMARY KEY (ID_Compositor),
CONSTRAINT CK_FechaDifunto CHECK(FechaDifunto>FechaNacimiento)
);

CREATE TABLE Obras(
ID_obra						NUMBER(9),
Titulo							VARCHAR2(50),
ID_compositor			NUMBER(6),
CONSTRAINT PK_Obra PRIMARY KEY (ID_Obra),
CONSTRAINT FK_ID_compositor_Obras FOREIGN KEY (ID_compositor) 
REFERENCES Compositores(ID_compositor),
CONSTRAINT CK_ID_compositor_Obras CHECK (ID_compositor IS NOT NULL)
);

CREATE TABLE Conciertos (
ID_concierto				NUMBER(5),
Nombre						VARCHAR2(50),
CONSTRAINT PK_Conciertos  PRIMARY KEY (ID_concierto)
);

CREATE TABLE Temporadas (
ID_temporada			NUMBER(4),
FechaInicio				date,
FechaFin					date,
CONSTRAINT PK_Temporadas PRIMARY KEY (ID_temporada),
CONSTRAINT CK_Fechas_Temporadas CHECK(FechaInicio<FechaFin)
);

CREATE TABLE Itinerario(
ID_concierto			NUMBER(5),
ID_temporada			NUMBER(4),
FechaConcierto		date,
CONSTRAINT PK_Itinerario PRIMARY KEY (ID_concierto, ID_temporada, FechaConcierto),
CONSTRAINT FK_ID_temporada_Itinerario FOREIGN KEY (ID_temporada) 
REFERENCES Temporadas(ID_temporada),
CONSTRAINT FK_ID_concierto_Itinerario FOREIGN KEY (ID_concierto) 
REFERENCES Conciertos(ID_concierto),
CONSTRAINT CK_ID_concierto_Itinerario CHECK (ID_concierto IS NOT NULL),
CONSTRAINT CK_ID_temporada_Itinerario CHECK (ID_temporada IS NOT NULL)
);

CREATE TABLE Directores (
ID_director				NUMBER(5),
Nombre					VARCHAR2(50),
FechaNacimiento 	date,
Dirección				VARCHAR2(50),
Titulación				VARCHAR2(50),
CONSTRAINT PK_Directores PRIMARY KEY (ID_director)
);

CREATE TABLE Intérpretes (
ID_Intérprete			NUMBER(5),
Tipo							VARCHAR2(9),
Nombre					VARCHAR2(50),
FechaNacimiento	date,
Instrumento				VARCHAR2(15),
Dirección				VARCHAR2(50),
Componentes			NUMBER(2),
CONSTRAINT PK_Intérpretes  PRIMARY KEY (ID_Intérprete),
CONSTRAINT CK_Tipo  CHECK (Tipo IN('Solista' , 'Orquesta')),
CONSTRAINT CK_Solistas_Intérpretes  CHECK( NOT(Tipo= 'Solista' 
AND Instrumento IS NULL AND Componentes IS NOT NULL AND Dirección IS NOT NULL)),
CONSTRAINT CK_Orquesta_Intérpretes  CHECK( NOT (Tipo='Orquesta' 
AND Instrumento IS NOT NULL AND Componentes IS NULL AND Dirección IS NULL))
);

CREATE TABLE DirectoresInvitados(
ID_director				NUMBER(5),
ID_intérprete			NUMBER(5),
ID_concierto			NUMBER(5),
CONSTRAINT PK_DirectoresInvitados PRIMARY KEY (ID_director, ID_concierto),
CONSTRAINT FK_ID_director_Invitados FOREIGN KEY (ID_director) 
REFERENCES Directores(ID_director),
CONSTRAINT CK_ID_director_Invitados  CHECK (ID_director IS NOT NULL),
CONSTRAINT FK_ID_intérprete_Invitados FOREIGN KEY (ID_intérprete) 
REFERENCES Intérpretes(ID_intérprete),
CONSTRAINT CK_ID_intérprete_Invitados  CHECK (ID_intérprete IS NOT NULL),
CONSTRAINT FK_ID_concierto_Invitados FOREIGN KEY (ID_concierto) 
REFERENCES Conciertos(ID_concierto),
CONSTRAINT CK_ID_concierto_Invitados  CHECK (ID_concierto IS NOT NULL)
);

CREATE TABLE Titulares(
ID_director				NUMBER(5),
ID_intérprete			NUMBER(5),
ID_temporada			NUMBER(4),
CONSTRAINT PK_Titulares PRIMARY KEY ( ID_Intérprete, ID_temporada ),
CONSTRAINT FK_ID_director_Titulares FOREIGN KEY (ID_director) 
REFERENCES Directores(ID_director),
CONSTRAINT CK_ID_director_Titulares  CHECK (ID_director IS NOT NULL),
CONSTRAINT FK_ID_intérprete_Titulares FOREIGN KEY (ID_intérprete) 
REFERENCES Intérpretes(ID_intérprete),
CONSTRAINT CK_ID_intérprete_Titulares  CHECK (ID_intérprete IS NOT NULL),
CONSTRAINT FK_ID_temporada_Titulares FOREIGN KEY (ID_temporada) 
REFERENCES Temporadas(ID_temporada),
CONSTRAINT CK_ID_temporada_Titulares  CHECK (ID_temporada IS NOT NULL)
);

CREATE TABLE Ejecuciones(
ID_obra					NUMBER(9),
ID_Intérprete			NUMBER(5),
ID_concierto			NUMBER(5),
CONSTRAINT PK_Ejecuciones PRIMARY KEY (ID_obra, ID_Intérprete, ID_concierto),
CONSTRAINT FK_ID_obra_Ejecuciones FOREIGN KEY (ID_obra) 
REFERENCES Obras(ID_obra),
CONSTRAINT CK_ID_obra_Ejecuciones CHECK (ID_obra IS NOT NULL),
CONSTRAINT FK_ID_concierto_Ejecuciones FOREIGN KEY (ID_concierto) 
REFERENCES Conciertos(ID_concierto),
CONSTRAINT CK_ID_concierto_Ejecuciones CHECK (ID_concierto IS NOT NULL),
CONSTRAINT FK_ID_intérprete_Ejecuciones FOREIGN KEY (ID_intérprete) 
REFERENCES Intérpretes(ID_intérprete),
CONSTRAINT CK_ID_intérprete_Ejecuciones CHECK (ID_intérprete IS NOT NULL)
);

