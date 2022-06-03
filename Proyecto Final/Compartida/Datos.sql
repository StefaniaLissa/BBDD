INSERT INTO Compositores VALUES (1, 'Compositor1',TO_DATE( '05-12-1930', 'DD-MM-YYYY'), TO_DATE( '16-11-2020', 'DD-MM-YYYY'));
INSERT INTO Compositores VALUES (2, 'Compositor2',TO_DATE( '06-11-1940', 'DD-MM-YYYY'),null);
INSERT INTO Compositores VALUES (3, 'Compositor3',TO_DATE( '07-10-1950', 'DD-MM-YYYY'), TO_DATE( '16-11-2010', 'DD-MM-YYYY'));
INSERT INTO Compositores VALUES (4, 'Compositor4',TO_DATE( '08-09-196', 'DD-MM-YYYY'), null);

INSERT INTO Obras VALUES (1, 'Obra1',1);
INSERT INTO Obras VALUES (2, 'Obra2',2);
INSERT INTO Obras VALUES (3, 'Obra3',3);
INSERT INTO Obras VALUES (4, 'Obra4',4);
INSERT INTO Obras VALUES (5, 'Obra5',1);
INSERT INTO Obras VALUES (6, 'Obra6',1);
INSERT INTO Obras VALUES (7, 'Obra7',2);
INSERT INTO Obras VALUES (8, 'Obra8',3);
INSERT INTO Obras VALUES (9, 'Obra9',1);

INSERT INTO Conciertos VALUES (1, 'Concierto1');
INSERT INTO Conciertos VALUES (2, 'Concierto2');
INSERT INTO Conciertos VALUES (3, 'Concierto3');

INSERT INTO Temporadas VALUES (1, TO_DATE( '01-01-2020', 'DD-MM-YYYY'), TO_DATE( '01-02-2020', 'DD-MM-YYYY'));
INSERT INTO Temporadas VALUES (2, TO_DATE( '01-06-2021', 'DD-MM-YYYY'), TO_DATE( '01-01-2022', 'DD-MM-YYYY'));

INSERT INTO Itinerario VALUES (1, 1, TO_DATE( '01-01-2020', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (1, 1, TO_DATE( '07-01-2020', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (1, 1, TO_DATE( '15-01-2020', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (1, 1, TO_DATE( '22-01-2020', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (1, 1, TO_DATE( '01-02-2020', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (2, 2, TO_DATE( '01-06-2021', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (3, 2, TO_DATE( '01-07-2021', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (2, 2, TO_DATE( '01-08-2021', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (2, 2, TO_DATE( '01-09-2021', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (3, 2, TO_DATE( '01-10-2021', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (2, 2, TO_DATE( '01-11-2021', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (2, 2, TO_DATE( '01-12-2021', 'DD-MM-YYYY'));
INSERT INTO Itinerario VALUES (3, 2, TO_DATE( '01-01-2022', 'DD-MM-YYYY'));

INSERT INTO Directores VALUES (1,'Director1', TO_DATE( '01-09-1970', 'DD-MM-YYYY'), 'Direccion1', 'Titulacion1');
INSERT INTO Directores VALUES (2,'Director2', TO_DATE( '01-09-1980', 'DD-MM-YYYY'), 'Direccion2', 'Titulacion2');
INSERT INTO Directores VALUES (3,'Director3', TO_DATE( '01-09-1990', 'DD-MM-YYYY'), 'Direccion3', 'Titulacion3');

INSERT INTO Intérpretes VALUES (1, 'Orquesta', 'Orquesta1',TO_DATE( '01-05-2010', 'DD-MM-YYYY'), null, 'Dirección4', 50);
INSERT INTO Intérpretes VALUES (2, 'Orquesta', 'Orquesta2',TO_DATE( '20-02-2000', 'DD-MM-YYYY'), null, 'Dirección5', 24);
INSERT INTO Intérpretes VALUES (3, 'Solista', 'Solista1',TO_DATE( '22-06-1963', 'DD-MM-YYYY'), 'Instrumento1', null, null);
INSERT INTO Intérpretes VALUES (4, 'Solista', 'Solista2',TO_DATE( '25-10-1976', 'DD-MM-YYYY'), 'Instrumento2', null, null);

INSERT INTO DirectoresInvitados VALUES (1, 2, 2);
INSERT INTO DirectoresInvitados VALUES (2, 2, 1);
INSERT INTO DirectoresInvitados VALUES (2, 1, 3);
INSERT INTO DirectoresInvitados VALUES (3, 1, 1);

INSERT INTO Titulares VALUES (1, 1, 1);
INSERT INTO Titulares VALUES (2, 1, 2);
INSERT INTO Titulares VALUES (2, 2, 1);
INSERT INTO Titulares VALUES (3, 2, 2);

INSERT INTO Ejecuciones VALUES (1,1,1);
INSERT INTO Ejecuciones VALUES (2,1,1);
INSERT INTO Ejecuciones VALUES (2,3,1);
INSERT INTO Ejecuciones VALUES (3,3,1);
INSERT INTO Ejecuciones VALUES (4,3,1);
INSERT INTO Ejecuciones VALUES (4,4,1);
INSERT INTO Ejecuciones VALUES (5,1,1);
INSERT INTO Ejecuciones VALUES (5,2,1);
INSERT INTO Ejecuciones VALUES (6,2,2);
INSERT INTO Ejecuciones VALUES (6,3,2);
INSERT INTO Ejecuciones VALUES (6,4,2);
INSERT INTO Ejecuciones VALUES (7,1,2);
INSERT INTO Ejecuciones VALUES (7,2,2);
INSERT INTO Ejecuciones VALUES (7,3,2);
INSERT INTO Ejecuciones VALUES (8,4,2);
INSERT INTO Ejecuciones VALUES (9,1,3);
INSERT INTO Ejecuciones VALUES (9,2,3);
INSERT INTO Ejecuciones VALUES (8,4,3);

