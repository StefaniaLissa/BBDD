
DROP TABLE SALGRADE CASCADE CONSTRAINTS; 
 
CREATE TABLE SALGRADE(
 GRADE    NUMBER(1),
 LOSAL    VARCHAR(4), 
 HISAL    VARCHAR(4));

INSERT INTO SALGRADE VALUES (1,700 ,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);


ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YY';
Commit;
