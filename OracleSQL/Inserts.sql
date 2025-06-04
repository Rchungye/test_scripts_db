-- Tabla: edad_recomendada
INSERT ALL
    INTO edad_recomendada (edad_rec) VALUES ('menores de 10')
    INTO edad_recomendada (edad_rec) VALUES ('11 a 17')
    INTO edad_recomendada (edad_rec) VALUES ('mayores de 18')
SELECT * FROM dual;

-- Tabla: genero
INSERT ALL
    INTO genero (tipo_genero) VALUES ('ro')
    INTO genero (tipo_genero) VALUES ('ac')
    INTO genero (tipo_genero) VALUES ('fi')
    INTO genero (tipo_genero) VALUES ('dr')
    INTO genero (tipo_genero) VALUES ('gu')
    INTO genero (tipo_genero) VALUES ('co')
    INTO genero (tipo_genero) VALUES ('te')
    INTO genero (tipo_genero) VALUES ('mu')
SELECT * FROM dual;

-- Tabla: produccion
INSERT ALL
    INTO produccion (tipo_produccion) VALUES ('Pelicula')
    INTO produccion (tipo_produccion) VALUES ('Serie')
    INTO produccion (tipo_produccion) VALUES ('Documental')
    INTO produccion (tipo_produccion) VALUES ('Reality Show')
SELECT * FROM dual;

-- Insertar datos en la tabla Programa (adaptado a Oracle SQL)
INSERT ALL
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Titanic', 230, 1997, 3, 1, 'Leonardo DiCaprio (Jack) y Kate Winslet (Rose)', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Guason', 120, 2019, 3, 2, 'Joaquin Phoenix (Arthur Fleck), Robert De Niro (Murray Franklin)', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Minion', 100, 2015, 1, 3, 'Sandra Bullock, Jon Hamm, Michael Keaton, Allison Janney, Steve Coogan', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('El rey Leon', 90, 1994, 1, 4, 'Matthew Broderick, James Earl Jones, Jeremy Irons, Jonathan Taylor Thomas, Moira Kelly', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Harry Potter', 120, 2001, 2, 4, 'Daniel Radcliffe (Harry Potter), Emma Watson (Hermione Granger), Rupert Grint (Ron Weasley)', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Avengers', 135, 2012, 3, 5, 'Robert Downey Jr. (Iron Man), Chris Evans (Capitan America), Scarlett Johansson (Viuda Negra), entre otros.', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Home Alone', 150, 1990, 2, 6, 'Macaulay Culkin (Kevin McCallister), Joe Pesci (Harry), Daniel Stern (Marv)', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Avatar', 175, 2009, 2, 2, 'Sam Worthington (Jake Sully), Zoe Saldana (Neytiri)', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Rapido y Furioso', 120, 2001, 3, 2, 'Vin Diesel (Dominic Toretto), Paul Walker (Brian O''Conner), Michelle Rodriguez (Letty Ortiz), entre otros.', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Los picapiedras', 90, 1994, 1, 4, 'John Goodman (Fred Flintstone), Elizabeth Perkins (Wilma Flintstone)', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Betty la Fea', 160, 1999, 2, 1, 'Ana Maria Orozco (Betty), Jorge Enrique Abello (Armando)', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 2)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Los Simpson', 75, 1989, 2, 4, 'Dan Castellaneta, Julie Kavner, Nancy Cartwright, Yeardley Smith, Hank Azaria', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 2)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Friends', 175, 1994, 2, 1, 'Jennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry y David Schwimmer', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 2)
  INTO Programa (nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Breaking Bad', 120, 2008, 3, 2, 'Bryan Cranston, Aaron Paul, Anna Gunn, Dean Norris, Betsy Brandt', 'DESCRIPCION descripcion Descripcion', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 2)
SELECT * FROM dual;

INSERT ALL
	INTO Programa(nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
		('The Good Doctor', 160, 2017, 2, 1, 'Freddie Highmore (Shaun Murphy), Antonia Thomas (Claire Browne), Nicholas Gonzalez (Neil Melendez), Hill Harper (Marcus Andrews)', 'DESCRIPCION descripcion Descripcion', 'https://pics.filmaffinity.com/La_chica_alaergica_al_wifi-368139509-large.jpg', 2)
	INTO Programa(nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
		('Stranger Things', 180, 2016, 2, 2, 'Millie Bobby Brown (Eleven), Finn Wolfhard (Mike Wheeler), David Harbour (Jim Hopper), Winona Ryder (Joyce Byers)', 'DESCRIPCION descripcion Descripcion', 'https://pics.filmaffinity.com/La_chica_alaergica_al_wifi-368139509-large.jpg', 2)
	INTO Programa(nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
		('The Mandalorian', 110, 2019, 2, 5, 'Pedro Pascal (El Mandaloriano), Gina Carano (Cara Dune), Carl Weathers (Greef Karga)', 'DESCRIPCION descripcion Descripcion', 'https://pics.filmaffinity.com/La_chica_alaergica_al_wifi-368139509-large.jpg', 2)
	INTO Programa(nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
		('Grey’s Anatomy', 200, 2005, 3, 1, 'Ellen Pompeo (Meredith Grey), Sandra Oh (Cristina Yang), Patrick Dempsey (Derek Shepherd), Chandra Wilson (Miranda Bailey)', 'DESCRIPCION descripcion Descripcion', 'https://pics.filmaffinity.com/La_chica_alaergica_al_wifi-368139509-large.jpg', 2)
	INTO Programa(nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
		('Game of Thrones', 210, 2011, 3, 2, 'Emilia Clarke, Kit Harington, Peter Dinklage, Lena Headey, Nikolaj Coster-Waldau', 'DESCRIPCION descripcion Descripcion', 'https://pics.filmaffinity.com/La_chica_alaergica_al_wifi-368139509-large.jpg', 2)
	INTO Programa(nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
		('La casa de papel', 140, 2017, 3, 2, 'alvaro Morte (El Profesor), ursula Corbero (Tokio), Pedro Alonso (Berlin), Itziar Ituno (Raquel Murillo)', 'DESCRIPCION descripcion Descripcion', 'https://pics.filmaffinity.com/La_chica_alaergica_al_wifi-368139509-large.jpg', 2)
	INTO Programa(nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
		('Coco', 105, 2017, 1, 4, 'Anthony Gonzalez (Miguel), Gael Garcia Bernal (Hector), Benjamin Bratt (Ernesto de la Cruz)', 'DESCRIPCION descripcion Descripcion', 'https://pics.filmaffinity.com/La_chica_alaergica_al_wifi-368139509-large.jpg', 1)
SELECT * FROM dual;

-- Inserción en tabla Capitulos adaptada a Oracle SQL
INSERT ALL
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1010, 1, 20, 'Betty llega a trabajar a Eco Moda, una empresa de moda prestigiosa, enfrentando el rechazo inicial por su apariencia peculiar')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1010, 2, 20, 'Armando, el presidente de la empresa, hace una apuesta con sus colegas sobre si puede conquistar a Betty en tres meses.')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1010, 3, 20, 'Betty se somete a un cambio de imagen para intentar encajar en el mundo de la moda, pero sus esfuerzos no tienen el resultado esperado')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1010, 4, 20, 'Armando comienza a sentir celos al ver a Betty recibir atencion de otro hombre, lo que despierta sentimientos confusos en el')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1010, 5, 20, 'Betty confiesa sus sentimientos hacia Armando a su amiga, pero pronto se da cuenta de que su amor es imposible debido a la brecha social entre ellos')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1010, 6, 20, 'Armando hace una propuesta de matrimonio inesperada a Marcela, su novia, desencadenando un torbellino de emociones en Betty')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1010, 7, 20, 'Betty enfrenta una serie de contratiempos en un dia lleno de mala suerte que pone a prueba su paciencia y determinacion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1010, 8, 20, 'Betty se convierte en el "angel de la guarda" secreto de Armando durante la temporada navidena, llevando a cabo actos bondadosos y generosos para el sin revelar su identidad')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1011, 1, 15, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1011, 2, 15, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1011, 3, 15, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1011, 4, 15, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1011, 5, 15, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1012, 1, 25, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1012, 2, 25, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1012, 3, 25, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1012, 4, 25, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1012, 5, 25, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1012, 6, 25, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1012, 7, 25, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1013, 1, 30, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1013, 2, 30, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1013, 3, 30, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1013, 4, 30, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1014, 1, 20, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1014, 2, 20, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1014, 3, 20, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1014, 4, 20, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1014, 5, 20, 'descripcion')
    INTO Capitulos (cod_prog, num_cap, duracion, descripcion) VALUES (1014, 6, 20, 'descripcion')
SELECT * FROM dual;

-- Tabla: Tarjeta
INSERT ALL
    INTO Tarjeta (t_tarjeta) VALUES ('DB')
    INTO Tarjeta (t_tarjeta) VALUES ('CR')
SELECT * FROM dual;

-- Tabla: Cliente
INSERT ALL
    INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES ('8-888-8888','Nancy','Davolio','5001-6254-9874',2)
    INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES ('7-777-7777','Andrew','Fuller','5001-6667-9875',2)
    INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES ('5-555-5555','Janet','Leverling','5000-6254-9876',1)
    INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES ('3-333-3333','Margaret','Peacock','5011-6333-9877',2)
    INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES ('2-222-2222','Steven','Buchanan','5002-6254-9878',2)
    INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES ('PE-111-1111','Michael','Suyama','5001-6254-9879',1)
    INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES ('N-11-111','Robert','King','5033-6254-9880',2)
    INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES ('EE-777-777','Laura','Callahan','5091-6254-9999',2)
    INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES ('8-555-55','Anne','Dodsworth','5001-6254-8888',2)
SELECT * FROM dual;

-- Tabla: Planes
INSERT ALL
    INTO Planes (t_plan, monto_planes) VALUES ('basico', 9.00)
    INTO Planes (t_plan, monto_planes) VALUES ('estandar', 14.00)
    INTO Planes (t_plan, monto_planes) VALUES ('ultra', 16.00)
SELECT * FROM dual;

-- Tabla: Contrato
INSERT ALL
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (1, 1, '69584714', TO_DATE('1997-11-23','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (2, 2, '65858745', TO_DATE('2010-11-24','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (1, 3, '65552525', TO_DATE('2010-11-24','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (7, 1, '67777777', TO_DATE('2011-12-12','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (4, 2, '63216547', TO_DATE('2015-01-21','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (5, 3, '69141111', TO_DATE('1998-05-15','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (5, 1, '69321111', TO_DATE('2016-08-30','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (8, 2, '68281245', TO_DATE('2017-05-12','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (9, 3, '66982232', TO_DATE('2017-05-12','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (3, 1, '66772395', TO_DATE('2018-02-05','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (6, 2, '67275689', TO_DATE('2018-12-31','YYYY-MM-DD'))
    INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES (1, 3, '69873625', TO_DATE('2019-03-30','YYYY-MM-DD'))
SELECT * FROM dual;

-- Tabla: Visualizaciones
INSERT ALL
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (69584714, 1000, 200)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (65858745, 1003, 90)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (65552525, 1010, 120)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (67777777, 1009, 90)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (63216547, 1000, 230)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (69141111, 1011, 30)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (69321111, 1009, 90)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (68281245, 1013, 120)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (66982232, 1014, 100)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (66772395, 1015, 125)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (67275689, 1016, 150)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (69873625, 1017, 100)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (69584714, 1021, 90)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (65858745, 1006, 100)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (65552525, 1002, 100)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (67777777, 1005, 120)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (63216547, 1008, 120)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (69141111, 1023, 90)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (69584714, 1010, 123)
    INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES (69584714, 1003, 69)
SELECT * FROM dual;

-- Tabla: Pago
INSERT ALL
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (1, 1, 69584714, 9.00, TO_DATE('2021-07-23','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (2, 2, 65858745, 14.00, TO_DATE('2021-07-24','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (1, 3, 65552525, 16.00, TO_DATE('2021-07-24','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (7, 1, 67777777, 9.00, TO_DATE('2021-07-12','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (4, 2, 63216547, 14.00, TO_DATE('2021-07-21','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (5, 3, 69141111, 16.00, TO_DATE('2021-06-15','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (5, 1, 69321111, 9.00, TO_DATE('2021-06-30','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (8, 2, 68281245, 14.00, TO_DATE('2021-07-12','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (9, 3, 66982232, 16.00, TO_DATE('2021-06-25','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (3, 1, 66772395, 9.00, TO_DATE('2020-02-05','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (6, 2, 67275689, 14.00, TO_DATE('2021-06-30','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (1, 3, 69873625, 16.00, TO_DATE('2021-05-30','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (1, 1, 69584714, 9.00, TO_DATE('2021-07-25','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (2, 2, 65858745, 14.00, TO_DATE('2021-06-18','YYYY-MM-DD'))
    INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES (1, 1, 69584714, 9.00, SYSDATE)
SELECT * FROM dual;

