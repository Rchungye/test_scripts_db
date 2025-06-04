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
	('Titanic', 230, 1997, 3, 1, 'Leonardo DiCaprio (Jack) y Kate Winslet (Rose)', 'Romance tragico sobre el famoso hundimiento del RMS Titanic.', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1),
	('Guason', 120, 2019, 3, 2, 'Joaquin Phoenix (Arthur Fleck), Robert De Niro (Murray Franklin)', 'Una historia oscura y perturbadora que explora el origen del villano Joker en el universo de Batman.', 'https://hips.hearstapps.com/hmg-prod/images/womanyellingcat-1573233850.jpg', 1),
	('Minion', 100, 2015, 1, 3, 'Sandra Bullock, Jon Hamm, Michael Keaton, Allison Janney, Steve Coogan', 'Una pelicula animada sobre los Minions, seres amarillos que buscan un nuevo maestro malvado para servir.', 'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?q=65&auto=format&w=2270&ar=2:1&fit=crop', 1),
	('El rey Leon', 90, 1994, 1, 4, 'Matthew Broderick, James Earl Jones, Jeremy Irons, Jonathan Taylor Thomas, Moira Kelly', 'Una historia epica sobre el ciclo de la vida en el reino animal, centrada en Simba, un joven leon.', 'https://hips.hearstapps.com/hmg-prod/images/el-rey-leon-1614599866.jpg?crop=1xw:0.8893229166666666xh;center,top&resize=640:*', 1),
	('Harry Potter', 120, 2001, 2, 4, 'Daniel Radcliffe (Harry Potter), Emma Watson (Hermione Granger), Rupert Grint (Ron Weasley)', 'Serie de peliculas sobre un joven mago, Harry Potter, y sus aventuras en Hogwarts.', 'https://wegotthiscovered.com/wp-content/uploads/2023/07/Happy-Independence-Day-5.png?w=1200', 1),
	('Avengers', 135, 2012, 3, 5, 'Robert Downey Jr. (Iron Man), Chris Evans (Capitan America), Scarlett Johansson (Viuda Negra), entre otros.', 'Una serie de peliculas de superheroes de Marvel que unen a varios personajes para salvar al mundo de amenazas poderosas.', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 1),
	('Home Alone', 150, 1990, 2, 6, 'Macaulay Culkin (Kevin McCallister), Joe Pesci (Harry), Daniel Stern (Marv)', 'Un nino es dejado accidentalmente en casa durante las vacaciones y debe defender su hogar de ladrones ineptos.', 'https://hips.hearstapps.com/hmg-prod/images/womanyellingcat-1573233850.jpg', 1),
	('Avatar', 175, 2009, 2, 2, 'Sam Worthington (Jake Sully), Zoe Saldana (Neytiri)', 'Una pelicula de ciencia ficcion que se desarrolla en un planeta extraterrestre llamado Pandora, donde se entrelazan humanos y nativos Na\'vi.', 'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?q=65&auto=format&w=2270&ar=2:1&fit=crop', 1),
	('Rapido y Furioso', 120, 2001, 3, 2, 'Vin Diesel (Dominic Toretto), Paul Walker (Brian O\'Conner), Michelle Rodriguez (Letty Ortiz), entre otros.', 'Una serie de peliculas de accion centradas en carreras ilegales y robos, con enfasis en los lazos familiares y la velocidad.', 'https://viapais.com.ar/resizer/oskZBwq1gJ392ZgVSni-Li8amp0=/980x640/smart/filters:quality(75):format(webp)/cloudfront-us-east-1.images.arcpublishing.com/grupoclarin/IJT4OHIUJ5GPPL62D6U5WQYUGM.jpg', 1),
	('Los picapiedras', 90, 1994, 1, 4, 'John Goodman (Fred Flintstone), Elizabeth Perkins (Wilma Flintstone)', 'Una adaptacion cinematografica de la famosa serie animada que sigue la vida de una familia prehistorica en la era de piedra.', 'https://wegotthiscovered.com/wp-content/uploads/2023/07/Happy-Independence-Day-5.png?w=1201', 1),
	('Betty la Fea', 160, 1999, 2, 1, 'Ana Maria Orozco (Betty), Jorge Enrique Abello (Armando)', 'Una telenovela que narra la historia de una mujer inteligente y poco convencional que trabaja en una revista de moda.', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 2),
	('Los Simpson', 75, 1989, 2, 4, 'Dan Castellaneta, Julie Kavner, Nancy Cartwright, Yeardley Smith, Hank Azaria', 'La serie es una satira de la sociedad estadounidense que narra la vida y el dia a dia de una familia de clase media de ese pais.', 'https://hips.hearstapps.com/hmg-prod/images/womanyellingcat-1573233850.jpg', 2),
	('Friends', 175, 1994, 2, 1, 'Jennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry y David Schwimmer', 'La serie sigue las vidas, amistades y experiencias de seis amigos que viven en Manhattan, Nueva York, enfrentando situaciones comicas y emocionales en sus vidas personales y profesionales.', 'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?q=65&auto=format&w=2270&ar=2:1&fit=crop', 2),
	('Breaking Bad', 120, 2008, 3, 2, 'Bryan Cranston, Aaron Paul, Anna Gunn, Dean Norris, Betsy Brandt', 'La trama de "Breaking Bad" sigue la transformacion de Walter White de un hombre comun a un poderoso narcotraficante mientras lidia con los peligros del mundo criminal y las consecuencias morales de sus acciones.', 'https://pics.filmaffinity.com/La_chica_alaergica_al_wifi-368139509-large.jpg', 2);

INSERT INTO Programa(nombre_prog, duracion, ano_produc, edad_rec, t_genero, protagonista, descripcion, imagen, t_produc) VALUES 
	('The Good Doctor', 160, 2017, 2, 1, 'Freddie Highmore (Shaun Murphy), Antonia Thomas (Claire Browne), Nicholas Gonzalez (Neil Melendez), Hill Harper (Marcus Andrews)', 'La serie sigue a Shaun Murphy, un joven cirujano con autismo y sindrome del sabio, que es reclutado para trabajar en el departamento de cirugia de un prestigioso hospital.', 'https://wegotthiscovered.com/wp-content/uploads/2023/07/Happy-Independence-Day-5.png?w=1200', 2),
	('Stranger Things', 180, 2016, 2, 2, 'Millie Bobby Brown (Eleven), Finn Wolfhard (Mike Wheeler), David Harbour (Jim Hopper), Winona Ryder (Joyce Byers)', 'Serie de ciencia ficcion ambientada en los anos 80 que sigue la desaparicion de un nino en un pequeno pueblo, revelando experimentos secretos, criaturas sobrenaturales y una nina con poderes especiales.', 'https://viapais.com.ar/resizer/oskZBwq1gJ392ZgVSni-Li8amp0=/980x640/smart/filters:quality(75):format(webp)/cloudfront-us-east-1.images.arcpublishing.com/grupoclarin/IJT4OHIUJ5GPPL62D6U5WQYUGM.jpg', 2),
	('The Mandalorian', 110, 2019, 2, 5, 'Pedro Pascal (El Mandaloriano), Gina Carano (Cara Dune), Carl Weathers (Greef Karga)', 'Una serie del universo Star Wars que sigue a un cazarrecompensas solitario en los confines de la galaxia, lejos de la autoridad de la Nueva Republica.', 'https://wegotthiscovered.com/wp-content/uploads/2023/07/Happy-Independence-Day-5.png?w=1201', 2),
	('Grey’s Anatomy', 200, 2005, 3, 1, 'Ellen Pompeo (Meredith Grey), Sandra Oh (Cristina Yang), Patrick Dempsey (Derek Shepherd), Chandra Wilson (Miranda Bailey)', 'La serie sigue la vida de los cirujanos del hospital Grey Sloan Memorial mientras enfrentan desafios personales y profesionales en un entorno medico de alta presion.', 'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg', 2),
	('Game of Thrones', 210, 2011, 3, 2, 'Emilia Clarke, Kit Harington, Peter Dinklage, Lena Headey, Nikolaj Coster-Waldau', 'Serie de fantasia basada en las novelas de George R. R. Martin, que narra la lucha entre poderosas familias por el control del Trono de Hierro en el continente de Westeros.', 'https://hips.hearstapps.com/hmg-prod/images/womanyellingcat-1573233850.jpg', 2),
	('La casa de papel', 140, 2017, 3, 2, 'alvaro Morte (El Profesor), ursula Corbero (Tokio), Pedro Alonso (Berlin), Itziar Ituno (Raquel Murillo)', 'Serie espanola que sigue a un grupo de delincuentes que, bajo la direccion del Profesor, ejecutan atracos meticulosamente planeados a la Fabrica Nacional de Moneda y Timbre y al Banco de Espana.', 'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?q=65&auto=format&w=2270&ar=2:1&fit=crop', 2),
	('Coco', 105, 2017, 1, 4, 'Anthony Gonzalez (Miguel), Gael Garcia Bernal (Hector), Benjamin Bratt (Ernesto de la Cruz)', 'Pelicula animada de Pixar que sigue a Miguel, un nino mexicano que suena con ser musico y viaja al mundo de los muertos para descubrir la historia de su familia.', 'https://pics.filmaffinity.com/La_chica_alaergica_al_wifi-368139509-large.jpg', 1);


INSERT INTO Capitulos (cod_prog,num_cap, duracion, descripcion) VALUES
	(1010, 1, 20, 'Betty llega a trabajar a Eco Moda, una empresa de moda prestigiosa, enfrentando el rechazo inicial por su apariencia peculiar'),
	(1010, 2, 20, 'Armando, el presidente de la empresa, hace una apuesta con sus colegas sobre si puede conquistar a Betty en tres meses.'),
	(1010, 3, 20, 'Betty se somete a un cambio de imagen para intentar encajar en el mundo de la moda, pero sus esfuerzos no tienen el resultado esperado'),
	(1010, 4, 20, 'Armando comienza a sentir celos al ver a Betty recibir atencion de otro hombre, lo que despierta sentimientos confusos en el'),
	(1010, 5, 20, 'Betty confiesa sus sentimientos hacia Armando a su amiga, pero pronto se da cuenta de que su amor es imposible debido a la brecha social entre ellos'),
	(1010, 6, 20, 'Armando hace una propuesta de matrimonio inesperada a Marcela, su novia, desencadenando un torbellino de emociones en Betty'),
	(1010, 7, 20, 'Betty enfrenta una serie de contratiempos en un dia lleno de mala suerte que pone a prueba su paciencia y determinacion'),
	(1010, 8, 20, 'Betty se convierte en el "angel de la guarda" secreto de Armando durante la temporada navidena, llevando a cabo actos bondadosos y generosos para el sin revelar su identidad'),
	(1011, 1, 15, 'descripcion'),
	(1011, 2, 15, 'descripcion'),
	(1011, 3, 15, 'descripcion'),
	(1011, 4, 15, 'descripcion'),
	(1011, 5, 15, 'descripcion'),
	(1012, 1, 25, 'descripcion'),
	(1012, 2, 25, 'descripcion'),
	(1012, 3, 25, 'descripcion'),
	(1012, 4, 25, 'descripcion'),
	(1012, 5, 25, 'descripcion'),
	(1012, 6, 25, 'descripcion'),
	(1012, 7, 25, 'descripcion'),
	(1013, 1, 30, 'descripcion'),
	(1013, 2, 30, 'descripcion'),
	(1013, 3, 30, 'descripcion'),
	(1013, 4, 30, 'descripcion'),
	(1014, 1, 20, 'descripcion'),
	(1014, 2, 20, 'descripcion'),
	(1014, 3, 20, 'descripcion'),
	(1014, 4, 20, 'descripcion'),
	(1014, 5, 20, 'descripcion'),
	(1014, 6, 20, 'descripcion');

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
