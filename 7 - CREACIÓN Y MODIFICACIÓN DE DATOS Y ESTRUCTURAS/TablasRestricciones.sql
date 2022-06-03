--EJERCICIO TABLAS Y RESTRICCIONES

DROP TABLE PEDIDOS;
DROP TABLE VENTAS;
DROP TABLE ARTICULOS;
DROP TABLE TIENDAS;
DROP TABLE FABRICANTES;



CREATE TABLE FABRICANTES (
COD_FABRICANTE NUMBER(3) CONSTRAINT PK_FABRICANTES PRIMARY KEY,
NOMBRE VARCHAR2(15) CONSTRAINT CK_NOMBRE CHECK (NOMBRE=UPPER(NOMBRE)),
PAIS VARCHAR2(15) CONSTRAINT CK_PAIS CHECK (PAIS=UPPER(PAIS))
);

INSERT INTO FABRICANTES VALUES (3,'CARLOS','SPAIN');
INSERT INTO FABRICANTES VALUES (4,'LAURA','EUSKADI');
INSERT INTO FABRICANTES VALUES (5,'JUANA','ANDORRA');


CREATE TABLE ARTICULOS(
ARTICULO VARCHAR2(20),
COD_FABRICANTE NUMBER(3),
PESO NUMBER(3),
CATEGORIA VARCHAR2(10),
PRECIO_VENTA NUMBER(6,2),
PRECIO_COSTO NUMBER(6,2),
EXISTENCIAS NUMBER(5),
CONSTRAINT PK_PRIMARIAART PRIMARY KEY (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA),
CONSTRAINT FK_FABRI FOREIGN KEY (COD_FABRICANTE) REFERENCES FABRICANTES(COD_FABRICANTE),
CONSTRAINT CK_PREVENTA CHECK(PRECIO_VENTA>0),
CONSTRAINT CK_PRECOSTO CHECK(PRECIO_COSTO>0),
CONSTRAINT CK_PESO CHECK(PESO>0),
CONSTRAINT CK_CATEGORIA_ARTICULOS CHECK (CATEGORIA IN('PRIMERA','SEGUNDA','TERCERA')));

INSERT INTO ARTICULOS VALUES('PEPINOS',3,34,'PRIMERA',67,12.3,67);
INSERT INTO ARTICULOS VALUES('PIMIENTOS',3,78,'TERCERA',190,67.2,1290);
INSERT INTO ARTICULOS VALUES('PIMIENTOS',3,78,'SEGUNDA',190,67.2,1290);
INSERT INTO ARTICULOS VALUES('TOMATES',4,80,'TERCERA',190,67.2,1290);
INSERT INTO ARTICULOS VALUES('LECHUGAS',5,80,'PRIMERA',190,67.2,1290);
INSERT INTO ARTICULOS VALUES('NARANJAS',4,82,'TERCERA',190,67.2,1290);
INSERT INTO ARTICULOS VALUES('MANZANAS',5,80,'PRIMERA',190,67.2,1290);	


CREATE TABLE TIENDAS (
NIF VARCHAR2(10),
NOMBRE VARCHAR2(20), 
DIRECCION VARCHAR2(20), 
POBLACION VARCHAR2(20),
PROVINCIA VARCHAR2(20), 
CODPOSTAL NUMBER(5)
);

ALTER TABLE TIENDAS
ADD CONSTRAINT PK_NIF_TIENDAS PRIMARY KEY (NIF)
ADD CONSTRAINT CK_PROVINCIA_TIENDAS CHECK (PROVINCIA=UPPER(PROVINCIA))
MODIFY NOMBRE VARCHAR2(30) NOT NULL;


INSERT INTO TIENDAS VALUES('001', 'KEVIN', 'ATOCHA','MADRID','MADRID',28014);
INSERT INTO TIENDAS VALUES('002', 'KEVIN', 'ATOCHA','TOLEDO','TOLEDO',28014);
INSERT INTO TIENDAS VALUES('809', 'FNAC', 'GRAN VIA', 'MADRID','MADRID',28920);
INSERT INTO TIENDAS VALUES ('8540','JAVIER','MONCLOA','MADRID','MADRID',28529);

CREATE TABLE PEDIDOS(
        NIF VARCHAR2(10),
        ARTICULO VARCHAR2(20),
        COD_FABRICANTE NUMBER(3),
        PESO NUMBER(3),
        CATEGORIA VARCHAR2(10),
        FECHA_PEDIDO DATE,
        UNIDADES_PEDIDAS NUMBER(4),
        CONSTRAINT PK_PEDIDOS PRIMARY KEY (NIF,ARTICULO,COD_FABRICANTE,PESO,CATEGORIA,FECHA_PEDIDO),
        CONSTRAINT FK_PEDIDOS_COD_FABRI FOREIGN KEY (COD_FABRICANTE) REFERENCES FABRICANTES (COD_FABRICANTE),
        CONSTRAINT CK_PEDIDOS_UNID CHECK (UNIDADES_PEDIDAS > 0),
        CONSTRAINT CK_PEDIDOS_CAT CHECK (CATEGORIA IN ('PRIMERA','SEGUNDA','TERCERA')),
        CONSTRAINT FK_PEDIDOS_COMP FOREIGN KEY (ARTICULO,COD_FABRICANTE,PESO,CATEGORIA) REFERENCES ARTICULOS (ARTICULO,COD_FABRICANTE,PESO,CATEGORIA) ON DELETE CASCADE,
        CONSTRAINT FK_PEDIDOS_NIF FOREIGN KEY (NIF) REFERENCES TIENDAS (NIF)
);


INSERT INTO PEDIDOS VALUES('809','PEPINOS',3,34,'PRIMERA','22/02/2022',40);
INSERT INTO PEDIDOS VALUES('001','PEPINOS',3,34,'PRIMERA','22/02/2022',60);
INSERT INTO PEDIDOS VALUES('8540','PEPINOS',3,34,'PRIMERA','22/02/2022',240);

CREATE TABLE VENTAS(
  NIF VARCHAR2 (10),
  ARTICULO VARCHAR2 (20),
  COD_FABRICANTE NUMBER (3),
  PESO NUMBER (3),
  CATEGORIA VARCHAR2 (10),
  FECHA_VENTA DATE,
  UNIDADES_VENDIDAS NUMBER (4),
  CONSTRAINT PK_VENTAS PRIMARY KEY (NIF, ARTICULO, COD_FABRICANTE, PESO, CATEGORIA,FECHA_VENTA),
  CONSTRAINT VENDIDAS_MAYOR_0 CHECK (UNIDADES_VENDIDAS >0),
  CONSTRAINT CK_VENTAS_CATEGORIA CHECK (CATEGORIA IN ('PRIMERA', 'SEGUNDA', 'TERCERA')),
  CONSTRAINT FK_VENTAS_ARTICULOS FOREIGN KEY (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) REFERENCES ARTICULOS ON DELETE CASCADE,
  CONSTRAINT FK_NIF_VENTAS_TIENDAS FOREIGN KEY (NIF) REFERENCES TIENDAS(NIF) 
);



INSERT INTO VENTAS VALUES('809','PEPINOS',3,34,'PRIMERA','22/02/2022',40);
INSERT INTO VENTAS VALUES('809','PEPINOS',3,34,'PRIMERA','23/02/2022',40);
INSERT INTO VENTAS VALUES('001','PEPINOS',3,34,'PRIMERA','21/02/2022',40);
INSERT INTO VENTAS VALUES('001','PEPINOS',3,34,'PRIMERA','22/02/2022',60);
INSERT INTO VENTAS VALUES('8540','PEPINOS',3,34,'PRIMERA','22/02/2022',240);



ALTER TABLE TIENDAS
ADD CONSTRAINT CK_TIENDAS_TOLEDO CHECK (PROVINCIA != 'TOLEDO');

ALTER TABLE PEDIDOS
ADD PVP NUMBER(6,2) DEFAULT 0 NOT NULL;

ALTER TABLE VENTAS 
ADD PVP2 NUMBER(6,2) DEFAULT NULL CONSTRAINT YYYY UNIQUE;


SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME, DELETE_RULE 
FROM USER_CONSTRAINTS 
WHERE TABLE_NAME IN ('PEDIDOS','TIENDAS','FABRICANTES','ARTICULOS','VENTAS'); 



























