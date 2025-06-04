-- Tabla: edad_recomendada
INSERT INTO edad_recomendada (edad_rec) VALUES
    ('menores de 10'),
    ('11 a 17'),
    ('mayores de 18');

-- Tabla: genero
INSERT INTO genero (tipo_genero) VALUES
    ('ro'),
    ('ac'),
    ('fi'),
    ('dr'),
    ('gu'),
    ('co'),
    ('te'),
    ('mu');

-- Tabla: produccion
INSERT INTO produccion (tipo_produccion) VALUES
    ('Pelicula'),
    ('Serie'),
    ('Documental'),
    ('Reality Show');

INSERT INTO Programa(nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
    ('Titanic', 230, 1997, 3, 1, 'Leonardo DiCaprio, Kate Winslet, Protagonista 3', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('Guason', 120, 2019, 3, 2, 'Joaquin Phoenix, Robert De Niro, Protagonista 3', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('Minion', 100, 2015, 1, 3, 'Sandra Bullock, Jon Hamm, Michael Keaton', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('El rey Leon', 90, 1994, 1, 4, 'Matthew Broderick, James Earl Jones, Jeremy Irons', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('Harry Potter', 120, 2001, 2, 4, 'Daniel Radcliffe, Emma Watson, Rupert Grint', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('Avengers', 135, 2012, 3, 5, 'Robert Downey Jr., Chris Evans, Scarlett Johansson', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('Home Alone', 150, 1990, 2, 6, 'Macaulay Culkin, Joe Pesci, Daniel Stern', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('Avatar', 175, 2009, 2, 2, 'Sam Worthington, Zoe Saldana, Protagonista 3', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('Rapido y Furioso', 120, 2001, 3, 2, 'Vin Diesel, Paul Walker, Protagonista 3', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('Los picapiedras', 90, 1994, 1, 4, 'John Goodman, Elizabeth Perkins, Protagonista 3', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1),
    ('Betty la Fea', 160, 1999, 2, 1, 'Ana Maria Orozco, Jorge Enrique Abello, Protagonista 3', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('Los Simpson', 75, 1989, 2, 4, 'Dan Castellaneta, Julie Kavner, Nancy Cartwright', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('Friends', 175, 1994, 2, 1, 'Jennifer Aniston, Courteney Cox, Lisa Kudrow', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('Breaking Bad', 120, 2008, 3, 2, 'Bryan Cranston, Aaron Paul, Anna Gunn', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('The Good Doctor', 160, 2017, 2, 1, 'Freddie Highmore, Antonia Thomas, Nicholas Gonzalez', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('Stranger Things', 180, 2016, 2, 2, 'Millie Bobby Brown, Finn Wolfhard, David Harbour', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('The Mandalorian', 110, 2019, 2, 5, 'Pedro Pascal, Gina Carano, Carl Weathers', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('Greys Anatomy', 200, 2005, 3, 1, 'Ellen Pompeo, Sandra Oh, Patrick Dempsey', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('Game of Thrones', 210, 2011, 3, 2, 'Emilia Clarke, Kit Harington, Peter Dinklage', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('La casa de papel', 140, 2017, 3, 2, 'Alvaro Morte, Ursula Corbero, Pedro Alonso', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 2),
    ('Coco', 105, 2017, 1, 4, 'Anthony Gonzalez, Gael Garcia Bernal, Benjamin Bratt', 'DESCRIPCION descripcion Descripcion', 'ImagenGenericaWah.jpg', 1);

INSERT INTO Capitulos (cod_prog,num_cap, duracion, descripcion) VALUES
    (1010, 1, 20, 'DESCRIPCION descripcion Descripcion'),
    (1010, 2, 20, 'DESCRIPCION descripcion Descripcion'),
    (1010, 3, 20, 'DESCRIPCION descripcion Descripcion'),
    (1010, 4, 20, 'DESCRIPCION descripcion Descripcion'),
    (1010, 5, 20, 'DESCRIPCION descripcion Descripcion'),
    (1010, 6, 20, 'DESCRIPCION descripcion Descripcion'),
    (1010, 7, 20, 'DESCRIPCION descripcion Descripcion'),
    (1010, 8, 20, 'DESCRIPCION descripcion Descripcion'),
	(1011, 1, 15, 'DESCRIPCION descripcion Descripcion'),
	(1011, 2, 15, 'DESCRIPCION descripcion Descripcion'),
	(1011, 3, 15, 'DESCRIPCION descripcion Descripcion'),
	(1011, 4, 15, 'DESCRIPCION descripcion Descripcion'),
	(1011, 5, 15, 'DESCRIPCION descripcion Descripcion'),
	(1012, 1, 25, 'DESCRIPCION descripcion Descripcion'),
	(1012, 2, 25, 'DESCRIPCION descripcion Descripcion'),
	(1012, 3, 25, 'DESCRIPCION descripcion Descripcion'),
	(1012, 4, 25, 'DESCRIPCION descripcion Descripcion'),
	(1012, 5, 25, 'DESCRIPCION descripcion Descripcion'),
	(1012, 6, 25, 'DESCRIPCION descripcion Descripcion'),
	(1012, 7, 25, 'DESCRIPCION descripcion Descripcion'),
	(1013, 1, 30, 'DESCRIPCION descripcion Descripcion'),
	(1013, 2, 30, 'DESCRIPCION descripcion Descripcion'),
	(1013, 3, 30, 'DESCRIPCION descripcion Descripcion'),
	(1013, 4, 30, 'DESCRIPCION descripcion Descripcion'),
	(1014, 1, 20, 'DESCRIPCION descripcion Descripcion'),
	(1014, 2, 20, 'DESCRIPCION descripcion Descripcion'),
	(1014, 3, 20, 'DESCRIPCION descripcion Descripcion'),
	(1014, 4, 20, 'DESCRIPCION descripcion Descripcion'),
	(1014, 5, 20, 'DESCRIPCION descripcion Descripcion'),
	(1014, 6, 20, 'DESCRIPCION descripcion Descripcion');

INSERT INTO Tarjeta (t_tarjeta) VALUES
    ('DB'),
    ('CR');

INSERT INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta) VALUES
    ('8-888-8888','Nancy','Davolio','5001-6254-9874',2),
    ('7-777-7777','Andrew','Fuller','5001-6667-9875',2),
    ('5-555-5555','Janet','Leverling','5000-6254-9876',1),
    ('3-333-3333','Margaret','Peacock','5011-6333-9877',2),
    ('2-222-2222','Steven','Buchanan','5002-6254-9878',2),
    ('PE-111-1111','Michael','Suyama','5001-6254-9879',1),
    ('N-11-111','Robert','King','5033-6254-9880',2),
    ('EE-777-777','Laura','Callahan','5091-6254-9999',2),
    ('8-555-55','Anne','Dodsworth','5001-6254-8888',2);

INSERT INTO Planes (t_plan, monto_planes) VALUES
    ('basico', 9.00),
    ('estandar', 14.00),
    ('ultra', 16.00);

INSERT INTO Contrato (cod_cliente, cod_plan, num_contrato, fecha_contrato) VALUES
    (1, 1, '69584714', '1997-11-23'),
    (2, 2, '65858745', '2010-11-24'),
    (1, 3, '65552525', '2010-11-24'),
    (7, 1, '67777777', '2011-12-12'),
    (4, 2, '63216547', '2015-01-21'),
    (5, 3, '69141111', '1998-05-15'),
    (5, 1, '69321111', '2016-08-30'),
    (8, 2, '68281245', '2017-05-12'),
    (9, 3, '66982232', '2017-05-12'),
    (3, 1, '66772395', '2018-02-05'),
    (6, 2, '67275689', '2018-12-31'),
    (1, 3, '69873625', '2019-03-30');

INSERT INTO Visualizaciones (num_contrato, cod_prog, tiempo_visualizacion) VALUES
    (69584714, 1000, 200),
    (65858745, 1003, 90),
    (65552525, 1010, 120),
    (67777777, 1009, 90),
    (63216547, 1000, 230),
    (69141111, 1011, 30),
    (69321111, 1009, 90),
    (68281245, 1013, 120),
    (66982232, 1014, 100),
    (66772395, 1015, 125),
    (67275689, 1016, 150),
    (69873625, 1017, 100),
    (69584714, 1021, 90),
    (65858745, 1006, 100),
    (65552525, 1002, 100),
    (67777777, 1005, 120),
    (63216547, 1008, 120),
    (69141111, 1023, 90),
    (69584714, 1010, 123),
    (69584714, 1003, 69);

INSERT INTO Pago (cod_cliente, cod_plan, num_contrato, monto_pagado, fecha_pago) VALUES
    (1, 1, 69584714, 9.00, '2021-07-23'),
    (2, 2, 65858745, 14.00, '2021-07-24'),
    (1, 3, 65552525, 16.00, '2021-07-24'),
    (7, 1, 67777777, 9.00, '2021-07-12'),
    (4, 2, 63216547, 14.00, '2021-07-21'),
    (5, 3, 69141111, 16.00, '2021-06-15'),
    (5, 1, 69321111, 9.00, '2021-06-30'),
    (8, 2, 68281245, 14.00, '2021-07-12'),
    (9, 3, 66982232, 16.00, '2021-06-25'),
    (3, 1, 66772395, 9.00, '2020-02-05'),
    (6, 2, 67275689, 14.00, '2021-06-30'),
    (1, 3, 69873625, 16.00, '2021-05-30'),
    (1, 1, 69584714, 9.00, '2021-07-25'),
    (2, 2, 65858745, 14.00, '2021-06-18'),
    (1, 1, 69584714, 9.00, CURRENT_DATE);
