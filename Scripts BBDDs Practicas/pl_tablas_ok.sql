DROP TABLE ITEM;
CREATE TABLE ITEM
(PEDIDO         	NUMBER(4),
 ITEM_ID           	NUMBER(4),
 PRODUCTO_NO       	NUMBER(4),
 IMPORTE_UNI       	NUMBER(8),	
 CANTIDAD          	NUMBER(8),
 TOTAL_ITEM        	NUMBER(8),
CONSTRAINT PK_PEDIDOITEM 	PRIMARY KEY(PEDIDO, ITEM_ID)
);


REM ## ITEM
INSERT INTO ITEM VALUES(100,1,3,46000,2,92000);
INSERT INTO ITEM VALUES (100,2,2,67000,1,67000);
INSERT INTO ITEM VALUES (100,3,1,55000,1,55000);
INSERT INTO ITEM VALUES (101,1,5,105000,3,315000);
INSERT INTO ITEM VALUES (102,1,6,28000,1,28000); 	  
COMMIT;
 
 -------------------

 DROP TABLE ALUMNOS;

CREATE  TABLE ALUMNOS
(
  COD NUMBER(3) PRIMARY KEY,
  NOMBRE VARCHAR2(20) NOT NULL,
  MATRICULA  NUMBER(4),
  COD_CURSO  VARCHAR2(20) 
); 

-- INSERTO REGISTROS EN ALUMNOS

INSERT INTO ALUMNOS VALUES(1,'JUAN ANTONIO',7000,'3');
INSERT INTO ALUMNOS VALUES(2,'PEDRO JUAN',6000,'4');
INSERT INTO ALUMNOS VALUES(3,'MARIA PITA',7000,'3');
INSERT INTO ALUMNOS VALUES(4,'JUAN MACHADO',4000,'1');
INSERT INTO ALUMNOS VALUES(5,'PEDRO PEREZ',5000,'1');
INSERT INTO ALUMNOS VALUES(6,'LOLA TURU',8000,'1');
INSERT INTO ALUMNOS VALUES(7,'MARTA IGUAL',6000,'2');
INSERT INTO ALUMNOS VALUES(8,'MARTÍN LÓPEZ',9000,'2');
INSERT INTO ALUMNOS VALUES(9,'PEPE ZUBERO',4000,'2');
INSERT INTO ALUMNOS VALUES(10,'MONSE ALBA',7000,'4');
INSERT INTO ALUMNOS VALUES(11,'JOSÉ CARRIÓN',6000,'4');
INSERT INTO ALUMNOS VALUES(12,'LUISA PONCE',7000,'3');

Commit;

