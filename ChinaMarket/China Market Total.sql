backup database ChinaMarket
to disk = 'C:\data\copiaChinaMarket_ChinaMarket.bak'

create database ChinaMarket;

create table Proveedor
(
		RUC varchar (20) not null
			constraint Proveedor_RUC_pk primary key,
		nombre_prov varchar (50) not null,
		provincia varchar (20),
		corregimiento varchar (30),
		calle varchar (100),
		edificio varchar (50),
		telefono varchar (20),
		correo varchar (100)
)

create table Producto
(
		cod_produ varchar (20) not null
			constraint Producto_cod_produ_pk primary key,
		nomb_produ varchar (50) not null,
		marca varchar (20) not null,
		cant_produ int not null,
		precio_venta decimal (10,2),
		tipo varchar (50),
		peso varchar (30),
		ITBMS float
)

create table Factura_Compra
(
		num_facturaCompra varchar (30) not null
			constraint Factura_Compra_num_facturaCompra_pk primary key,
		total money ,
		metodo_pago varchar (30)
)

create table compra
(
		RUC varchar (20) 
			constraint compra_RUC_fk foreign key (RUC)
					references Proveedor (RUC),
		cod_produ varchar (20) 
			constraint compra_cod_produ_fk foreign key (cod_produ)
					references Producto (cod_produ),
		num_facturaCompra varchar (30)
			constraint compra_num_facturaCompra_fk foreign key (num_facturaCompra)
					references Factura_Compra (num_facturaCompra),
		fecha date,
		precio_compra money,
		cant_produCompra int
	constraint compra_RUC_cod_produ_fecha_pk primary key (RUC,cod_produ,fecha)
)


create table Cliente 
(
		cedula varchar (13) not null
			constraint Cliente_cedula_pk primary key,
		nomb_cliente varchar (50),
		num_casa int,
		provincia varchar (20),
		calle varchar (100),
		distrito varchar(30),
		telefono varchar (20)
)

create table Factura_Venta
(
		num_facturaVenta varchar (30) not null
			constraint Factura_Venta_num_facturaVenta_pk primary key,
		tipo_venta varchar (20),
		total_Venta money,
		metodo_pago varchar (30),
		descuento float,
		ITBMS_total float,
		costo_envio money
)

create table vende
(
		cod_produ varchar (20) 
			constraint vende_cod_produ_fk foreign key (cod_produ)
					references Producto (cod_produ),
		cedula varchar (13)
			constraint vende_cedula_fk foreign key (cedula)
					references Cliente (cedula),
		num_facturaVenta varchar (30) 
			constraint vende_num_facturaVenta_fk foreign key (num_facturaVenta)
					references Factura_Venta (num_facturaVenta),
		fecha datetime,
		cant_produVenta int
	constraint vende_cod_produ_cedula_fecha_pk primary key (cod_produ,cedula,fecha)
)

insert into Cliente
values	('8-8812-5648', 'Euribiel Gonzáles', 08, 'Panamá', 'Cerro Azul, Las Nubes', 'Chepo','6588-7731'),
		('3-8837-4495', 'Diego García', 24, 'Panamá', 'calle R, José Domingo Espinar', 'San Miguelito','8906-5536'),
		('8-4475-2190', 'María Lorentz', 15, 'Panamá', 'calle Las Calas, San Francisco', 'Panamá','7537-4093'),
		('8-1245-6746', 'Daniela Álvarez', 25 , 'Panamá', 'Flor del campo, Condado del Rey', 'Panamá','6748-3729'),
		('9-8934-8439', 'José Espinosa', 103, 'Panamá', 'calle 8 A, Linda Vista, Condado del Rey' , 'Panamá','1265-8897'),
		('4-8293-6684', 'Daniel Frago', 30, 'Panamá', 'calle 75 E Bethania', 'Panamá','6674-3356'),
		('6-8542-1154', 'Nelson González', 69, 'Panamá', 'calle 50 Obarrio', 'Panamá', '4596-3278'),
		('5-6328-7459', 'Gabriel Molina', 42, 'Panamá', 'Avenida Balboa', 'Panamá', '6678-5458'),
		('2-5487-1325', 'Brandon Barboza', 71, 'Coclé', 'Calle Manuel María Icaza', 'Penonomé', '3329-5694'),
		('7-1655-1147', 'María Echeverry', 27, 'Panamá', 'Vía España', 'Panamá', '6120-8795'),
		('6-5478-2134', 'Andrés Hernández', 22, 'Panamá', 'Calle Uruguay', 'Panamá', '6310-7548'),
		('4-6561-3281', 'Antony Pinto', 28, 'Panamá', 'Calle 74 Oeste', 'Panamá', '1235-6695'),
		('7-2156-7845', 'Iván Cortez', 12, 'Panamá', 'Avenida Samuel Lewis', 'Panamá', '4859-7185'),
		('1-2564-7444', 'Victor Reyes', 17, 'Coclé', 'Calle Francisco Correa', 'Aguadulce', '1365-2657'),
		('3-5489-1123', 'Osiris Mateo', 5, 'Chiriquí', 'Calle Cuarta', 'David', '5678-2313')

insert into Producto 
values	('38472472824', 'Huevos Medianos Docena', 'Melo', 20, 2.00, 'Carnes, huevos y pescados', '595.2 g', 0.00 ),
		('02400015963', 'Piña En Rodajas', 'Del Monte', 10, 2.15, 'Productos Enlatados', '439 g', 0.00 ),
		('76193403405', 'Cloro', 'Clorox', 23, 3.50, 'Productos de limpieza', '1 galón', 0.25 ),
		('83945432356', 'Coca-Cola Sabor original', 'Coca-cola', 8, 1.25, 'Bebidas y refrescos', '354 ml', 0.00 ),
		('64672931271', 'Lampara de pared de 100w color bronce antiguo', 'Westinghouse', 6, 18.00, 'Productos para el hogar', '4.08 lb', 1.26 ),
		('64583023238', 'Bollos de Maíz', 'Melo', 15, 2.50, 'Empaquetados', '1 lb', 0.00 ),
		('56473492029', 'Lysol', 'Clorox', 10, 6.00, 'Poductos de limpieza', '538 g', 0.42 ),
		('001', 'Coca-Cola Sabor original', 'Coca-cola', 8, 1.25, 'Bebidas y refrescos', '354 ml', 0.00 ),
		('003', 'Kimchi', 'Kikkoman', 15, 5.00, 'Enlatado', '1 lb', 0.00),
		('004', 'Insta. Ramen Coreano', 'Samyang', 50, 1.50, 'Empaquetados', '595 g', 0.00),
		('005', 'Insta. Ramen Japones', 'Menraku', 45, 1.50, 'Empaquetados', '595 g', 0.00),
		('006', 'Insta. Ramen Chino', 'Nongshim', 40, 1.50, 'Empaquetados', '595 g', 0.00),
		('007', 'Curry', 'S&B', 20, 5.00, 'Vidrio', '300 g', 0.00),
		('008', 'Mountain Dew', 'PepsiCo', 30, 1.95, 'Bebidas y refrescos', '1 litro', 0.00 ),
		('009', 'Sprite', 'Coca-cola', 20, 1.25, 'Bebidas y refrescos', '354 ml', 0.00 ),
		('010', 'Hoja de Mostaza', 'Spring farm', 50, 2.50, 'Vegetales', '250 g', 0.00 ),
		('011', 'Escoba', 'Estrella', 10, 10.00, 'Productos de Limpieza', '2 lb', 0.70 ),
		('012', 'Incienso', 'HEM', 50, 5.00, 'Producto de Ceremonia', '500 g', 0.35),
		('013', 'Papel Ceremonia', 'DAISO', 20, 2.00, 'Producto de Ceremonia', '200 g', 0.14),
		('014', 'Huevos Jumbo', 'Toledano', 30, 3.00, 'Carnes, huevos y pescados', '600 g', 0.00),
		('015', 'Salsa Blanca', 'Del Monte', 20, 1.00, 'Empaquetados', '350 g', 0.00),
		('016', 'Café', 'DURAN', 25, 6.00, 'Empaquetados', '425 g g', 0.00 ),
		('017', 'Café', 'Nescafé', 20, 3.88, 'Empaquetados', '60  g', 0.00 ),
		('018', 'Café', 'Palo Alto', 30, 3.57, 'Empaquetados', '212 g', 0.00 ),
		('019', 'Café', 'Sello Rojo', 24, 4.00, 'Empaquetados', '250 g', 0.00 ),
		('020', 'Café', 'Jacobs', 22, 12.89, 'Empaquetados', '200 g', 0.00 )



insert into Proveedor
values	('650-529-126088', 'Empresa Melo S.A', 'Panamá', 'Río Abajo', 'Via España', 'No. 2313', '323-6900', 'dirfinanzas@grupomelo.com'),
		('4211-2-57599', 'Del Monte de Panama S.A', 'Panamá', 'Panamá', 'Via Porras San Francisco, Plaza Tastevin', 'Local C y D', '261 0633', 'yasiratorres@delmonte.com.pa'),
		('155672026 2-2018', 'Distribuidora Iris Panama', 'Panamá', 'Calidona', 'Avenida Perú, Entre Calle 26 y 25', 'Local C y D', '6688-1806', 'distribuidorairispanama@gmail.com'),
		('44-242-5856', 'Coca-Cola Femsa de Panamá S.A' , 'Panamá', 'San Miguelito', 'Av. Domingo Díaz', 'No. 25', '274-9900', 'cocacolafemsapanama@gmail.com'),
		('2069791-1-751271', 'Hopsa S.A' , 'Panamá', 'San Miguelito', 'Av. 7ma C Norte, Urb. Industrial, Transistmica', 'No. 115', ' 303-3900', 'ventas@hopsa.com'),
		('1-00-001', 'Corea S.A' , 'Chiriqui', 'Baru', 'Calle 1', 'No. 001', ' 200-0000', 'corea@outlook.com'),
		('1-00-002', 'Japon S.A' , 'Veraguas', 'Rio', 'Calle 2', 'No. 002', ' 200-0001', 'Japon@outlook.com'),
		('1-00-003', 'China S.A' , 'Darien', 'Boca', 'Calle 3', 'Local A', ' 200-0002', 'China@outlook.com'),
		('1-00-004', 'El hombre de la mancha' , 'Panama', 'San Miguelito', 'Calle 4', 'Metromall', ' 200-0003', 'Hombredelamancha@hotmail.com'),
		('1-00-005', 'El hombre de la mancha' , 'Panama', 'Calidonia', 'Calle 5', 'Multiplaza', ' 200-0004', 'Hombredelamancha@hotmail.com'),
		('1-00-006', 'Anime S.A' , 'Panama', 'Costa del Este', 'Calle 6', 'Torre Trump', ' 200-0005', 'AnimeSA@hotmail.com'),
		('1-00-007', 'Metaverse' , 'Colon', 'El Escobal', 'El Carmen', 'No. 27', ' 200-0069', 'Metaverse@houtlook.com'),
		('1-00-008', 'Distribuidora Puerto Libre' , 'Colon', 'Cristobal', 'calle 5', 'Local A10', ' 200-0420', 'google@outlook.com'),
		('1-00-009', 'Gundam' , 'Panama', 'San Miguelito', 'Via España', 'Local Gundam', ' 382-4826', 'Gundam@hotmail.com'),
		('1-00-010', 'Pokemon Company' , 'Panama', 'Calidonia', 'Calle 5', 'Multiplaza', '299-1816', 'Pokemon@hotmail.com')


insert into Factura_Compra
values	('1-000101', 38.05, 'VISA'),
		('1-000102', 66.88, 'Efectivo'),
		('1-000103', 45.00, 'VISA'),
		('1-000104', 30.00, 'YAPPY'),
		('1-000105', 53.05, 'VISA'),
		('1-000106', 192.06, 'YAPPY'),
		('1-000107', 100.00, 'Efectivo'),
		('1-000108', 110.00, 'YAPPY'),
		('1-000109', 420.00, 'VISA'),
		('1-000110', 75.00, 'Efectivo'),
		('1-000111', 105.00, 'VISA'),
		('1-000112', 420.69, 'YAPPY'),	
		('1-000113', 69.00, 'Efectivo'),
		('1-000114', 75.00, 'VISA'),
		('1-000115', 75.00, 'Efectivo')


insert into Factura_Venta (num_facturaVenta, tipo_venta, total_Venta, metodo_pago, descuento, ITBMS_total, costo_envio)
values	('2-000101', 'Local', 3.75,'VISA', 0.00 , 0.25, NULL),
		('2-000102', 'Domicilio', 8.42,'YAPPY', 0.00, 0.42 , 4.00 ),
		('2-000103', 'Local', 4.03,'Efectivo', 0.00, 0.00, NULL),
		('2-000104', 'Domicilio', 6.25,'YAPPY', 0.00, 0.00, 2.00),
		('2-000105', 'Local', 38.52  ,'Efectivo', 0.00, 2.52, NULL),
		('2-000106', 'Local', 8.25,'VISA', 0.00, 0.00, NULL),
		('2-000107', 'Domicilio', 7.80,'Efectivo', 0.00, 0.80,2.00),
		('2-000108', 'Local', 10.70, 'VISA', 0.00, 0.7, NULL),
		('2-000109', 'Domicilio', 17.05, 'Efectivo', 0.00, 1.05, 1.00),
		('2-000110', 'Domicilio', 9.56, 'YAPPY', 0.00, 0.56, 1.00),
		('2-000111', 'Local', 9.63 , 'Efectivo', 0.00, 0.63, NULL),
		('2-000112', 'Local', 1.07, 'VISA', 0.00, 0.07, NULL),
		('2-000113', 'Local', 10.00, 'Efectivo', 0.00, 0.00, NULL),
		('2-000114', 'Domicilio', 5.00, 'YAPPY', 0.00, 0.00, 2.00),
		('2-000115', 'Local', 8.75, 'YAPPY', 0.00, 0.00, NULL)

insert into compra
values	('4211-2-57599', '02400015963', '1-000101', '2023-06-06', 1.75, 22),
		('650-529-126088', '38472472824', '1-000102', '2023-06-07', 1.50, 30),
		('155672026 2-2018', '76193403405', '1-000104', '2023-06-01', 2.50, 25),
		('650-529-126088', '64583023238', '1-000103', '2023-07-17', 2.00, 15),
		('155672026 2-2018', '56473492029', '1-000104', '2023-06-01', 5.00, 10),
		('44-242-5856', '83945432356', '1-000105', '2023-07-02', 1.00, 20),
		('2069791-1-751271', '64672931271', '1-000106', '2023-06-18', 15.00, 12),
		('1-00-001', '003', '1-000107', '2023-01-15', 10.00, 100),
		('1-00-001', '004', '1-000114', '2023-09-17', 0.75, 100),
		('1-00-002', '005', '1-000115', '2023-09-17', 0.75, 100),
		('1-00-003', '012', '1-000108', '2023-01-15', 2.00, 35),
		('1-00-003', '013', '1-000108', '2023-01-15', 1.00, 40),
		('1-00-003', '006', '1-000115', '2021-11-06', 0.75, 100),
		('1-00-002', '005', '1-000111', '2021-11-06', 0.75, 60),
		('1-00-002', '007', '1-000111', '2021-11-06', 2.00, 30),
		('1-00-003', '015', '1-000113', '2023-01-20', 0.50, 50),
		('1-00-003', '014', '1-000113', '2023-01-20', 1.00, 44)

insert into vende
values	('76193403405', '3-8837-4495', '2-000101', '2023-06-04 09:15:30', 1),
		('38472472824', '8-4475-2190', '2-000102', '2023-06-12 13:31:00', 1),
		('56473492029', '8-4475-2190', '2-000102', '2023-06-04 13:31:00', 1),
		('02400015963', '8-8812-5648', '2-000103', '2023-06-07 14:08:05', 2),
		('83945432356', '8-1245-6746', '2-000104', '2023-06-28 11:30:17', 5),
		('64672931271', '9-8934-8439', '2-000105', '2023-07-05 14:23:00', 2),
		('38472472824', '4-8293-6684', '2-000106', '2023-07-18 12:40:05', 1),
		('64583023238', '4-8293-6684', '2-000106', '2023-07-18 12:40:05', 2),
		('83945432356', '4-8293-6684', '2-000106', '2023-07-18 12:40:05', 1),
		('010', '1-2564-7444', '2-000107', '2023-07-04 13:31:26.000', 2),
		('011', '2-5487-1325', '2-000108', '2023-03-22 16:42:10.000', 1),
		('012', '3-5489-1123', '2-000109', '2023-05-17 10:19:53.000', 3),
		('013', '4-6561-3281', '2-000110', '2023-05-17 08:25:13.000', 4),
		('014', '5-6328-7459', '2-000111', '2023-06-28', 3),
		('015', '6-5478-2134', '2-000112', '2023-11-11', 1),
		('003', '6-8542-1154', '2-000113', '2023-05-15', 2),
		('004', '7-1655-1147', '2-000114', '2023-03-04', 2),
		('009', '7-2156-7845', '2-000115', '2023-10-03', 7)

--1.
SELECT DISTINCT provincia + ', ' + distrito [Ubicación]
FROM Cliente
ORDER BY provincia + ', ' + distrito

--2.
SELECT *
FROM Producto
WHERE precio_venta BETWEEN 1 AND 5;

--3.
SELECT * FROM Proveedor
WHERE provincia IN ('Chiriquí', 'Darién', 'Veraguas');

--4.
Select * from Producto
WHERE nomb_produ LIKE '%Ceremonia%'

--5.
SELECT fecha, SUM(precio_compra * cant_produCompra) [Total de compra del ño 2021]
FROM compra
WHERE fecha >= '2021-01-01' AND fecha <= '2021-12-31'
GROUP BY fecha

--6.
SELECT * FROM Producto
WHERE precio_venta > 2 AND precio_venta < 5
AND (tipo NOT LIKE 'empaquetado' OR tipo NOT LIKE 'vidrio')

--7. 
SELECT COUNT(DISTINCT c.cedula) [Entregas a domicilio],
       AVG(total_venta) [Promedio de las ventas]
FROM Cliente c join vende v ON c.cedula = v.cedula JOIN Factura_Venta f on f.num_facturaVenta = v.num_facturaVenta
WHERE tipo_venta = 'Domicilio'

--8. 
SELECT nomb_produ, MAX(precio_venta) [Precio Máximo]
FROM Producto
GROUP BY nomb_produ, precio_venta
HAVING SUM(cant_produ) > 30

--9. 
SELECT  nomb_cliente [Clientes con entregas a domicilio]
FROM Cliente c join vende v ON c.cedula = v.cedula JOIN Factura_Venta f on f.num_facturaVenta = v.num_facturaVenta
WHERE tipo_venta = 'Domicilio'

--10.
SELECT DISTINCT nombre_prov + ', ' + provincia [Dirección de Proveedores]
FROM Proveedor
ORDER BY nombre_prov  + ', ' + provincia