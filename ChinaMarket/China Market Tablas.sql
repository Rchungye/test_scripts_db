create database		ChinaMarket
create table Proveedor (
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

create table Producto (
		cod_produ varchar (20) not null
			constraint Producto_cod_produ_pk primary key,
		nomb_produ varchar (50) not null,
		marca varchar (20) not null,
		cant_produ int not null,
		precio_venta decimal (10,2),
		tipo varchar (50),
		peso varchar (10),
		ITBMS float
)

create table Factura_Compra
(
		num_facturaCompra varchar (30) not null
			constraint Factura_Compra_num_facturaCompra_pk primary key,
		total money ,
		metodo_pago varchar (30)
)

create table compra (
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

create table Cliente  (
		cedula varchar (13) not null
			constraint Cliente_cedula_pk primary key,
		nomb_cliente varchar (50),
		num_casa int,
		provincia varchar (20),
		calle varchar (100),
		distrito varchar(30),
		telefono varchar (20)
)

create table Factura_Venta (
		num_facturaVenta varchar (30) not null
			constraint Factura_Venta_num_facturaVenta_pk primary key,
		tipo_venta varchar (20),
		total_Venta money,
		metodo_pago varchar (30),
		descuento float,
		ITBMS_total float,
		costo_envio money
)

create table vende (
		cod_produ varchar (20) 
			constraint vende_cod_produ_fk foreign key (cod_produ)
					references Producto (cod_produ),
		cedula varchar (13)
			constraint vende_cedula_fk foreign key (cedula)
					references Cliente (cedula),
		num_facturaVenta varchar (30) 
			constraint vende_num_facturaVenta_fk foreign key (num_facturaVenta)
					references Factura_Venta (num_facturaVenta),
		fecha date,
		cant_produVenta int
	constraint vende_cod_produ_cedula_fecha_pk primary key (cod_produ,cedula,fecha)
)

