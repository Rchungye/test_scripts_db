-- Crear base de datos
CREATE DATABASE IF NOT EXISTS Films_Rafael_Chung;
USE Films_Rafael_Chung;

-- Tabla edad_recomendada
CREATE TABLE edad_recomendada (
    id_edad_rec INT AUTO_INCREMENT PRIMARY KEY,
    edad_rec VARCHAR(20),
    CONSTRAINT edad_recomendada_edad_rec_CK CHECK (edad_rec IN ('Menores de 10', '11 a 17', 'Mayores de 18'))
);

-- Tabla Genero
CREATE TABLE Genero (
    id_t_genero INT AUTO_INCREMENT PRIMARY KEY,
    t_genero VARCHAR(2)
);

-- Tabla Produccion
CREATE TABLE Produccion (
    id_Produccion INT AUTO_INCREMENT PRIMARY KEY,
    t_produc VARCHAR(30)
);

-- Tabla Programa
CREATE TABLE Programa (
    cod_prog INT AUTO_INCREMENT PRIMARY KEY,
    nombre_prog VARCHAR(50),
    duracion INT,
    ano_produc INT,
    edad_rec INT,
    t_genero INT,
    protagonista VARCHAR(500),
    descripcion TEXT,
    imagen LONGBLOB,
    t_produc INT,
    CONSTRAINT Programa_duracion_CK CHECK (duracion BETWEEN 15 AND 300),
    CONSTRAINT Programa_edad_rec_FK FOREIGN KEY (edad_rec) REFERENCES edad_recomendada(id_edad_rec),
    CONSTRAINT Programa_t_genero_FK FOREIGN KEY (t_genero) REFERENCES Genero(id_t_genero),
    CONSTRAINT Programa_t_produc_FK FOREIGN KEY (t_produc) REFERENCES Produccion(id_Produccion)
);

-- Tabla Capitulos
CREATE TABLE Capitulos (
    cod_prog INT,
    num_cap INT,
    duracion INT,
    descripcion TEXT,
    PRIMARY KEY (cod_prog, num_cap),
    CONSTRAINT Capitulos_cod_prog_FK FOREIGN KEY (cod_prog) REFERENCES Programa(cod_prog),
    CONSTRAINT Capitulos_num_cap_CK CHECK (num_cap BETWEEN 1 AND 350)
);

-- Tabla Tarjeta
CREATE TABLE Tarjeta (
    id_tarjeta INT AUTO_INCREMENT PRIMARY KEY,
    t_tarjeta VARCHAR(2),
    CONSTRAINT Tarjeta_t_tarjeta_CK CHECK (t_tarjeta IN ('DB', 'CR'))
);

-- Tabla Cliente
CREATE TABLE Cliente (
    cod_cliente INT AUTO_INCREMENT PRIMARY KEY,
    identificador VARCHAR(30),
    nombre_cliente VARCHAR(30),
    apellido VARCHAR(30),
    num_tarjeta VARCHAR(30),
    t_tarjeta INT,
    CONSTRAINT Cliente_t_tarjeta_FK FOREIGN KEY (t_tarjeta) REFERENCES Tarjeta(id_tarjeta)
);

-- Tabla Planes
CREATE TABLE Planes (
    cod_plan INT AUTO_INCREMENT PRIMARY KEY,
    t_plan VARCHAR(30),
    monto_planes DECIMAL(15,2)
);

-- Tabla Pago
CREATE TABLE Pago (
    cod_cliente INT,
    cod_plan INT,
    num_contrato INT,
    monto_pagado DECIMAL(15,2),
    fecha_pago DATE,
    PRIMARY KEY (cod_cliente, cod_plan, fecha_pago),
    CONSTRAINT Pago_cod_cliente_FK FOREIGN KEY (cod_cliente) REFERENCES Cliente(cod_cliente),
    CONSTRAINT Pago_cod_plan_FK FOREIGN KEY (cod_plan) REFERENCES Planes(cod_plan)
);

-- Tabla Contrato
CREATE TABLE Contrato (
    cod_cliente INT,
    cod_plan INT,
    num_contrato INT PRIMARY KEY,
    fecha_contrato DATE,
    CONSTRAINT Contrato_cod_cliente_FK FOREIGN KEY (cod_cliente) REFERENCES Cliente(cod_cliente),
    CONSTRAINT Contrato_cod_plan_FK FOREIGN KEY (cod_plan) REFERENCES Planes(cod_plan),
    CONSTRAINT Contrato_fecha_contrato_CK CHECK (fecha_contrato BETWEEN '1997-08-29' AND CURDATE())
);

-- Tabla Visualizaciones
CREATE TABLE Visualizaciones (
    num_contrato INT,
    cod_prog INT,
    tiempo_visualizacion INT,
    PRIMARY KEY (num_contrato, cod_prog),
    CONSTRAINT Visualizaciones_num_contrato_FK FOREIGN KEY (num_contrato) REFERENCES Contrato(num_contrato),
    CONSTRAINT Visualizaciones_cod_prog_FK FOREIGN KEY (cod_prog) REFERENCES Programa(cod_prog)
);
