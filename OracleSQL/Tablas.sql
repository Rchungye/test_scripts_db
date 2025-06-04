-- Crear usuario (Oracle no tiene CREATE DATABASE)
CREATE USER Films_Rafael_Chung_Javier_Acosta IDENTIFIED BY your_password;
GRANT CONNECT, RESOURCE TO Films_Rafael_Chung_Javier_Acosta;

-- Cambiar al esquema del usuario
ALTER SESSION SET CURRENT_SCHEMA = Films_Rafael_Chung_Javier_Acosta;

-- Tabla edad_recomendada
CREATE TABLE edad_recomendada (
    id_edad_rec NUMBER PRIMARY KEY,
    edad_rec VARCHAR2(20),
    CONSTRAINT edad_recomendada_edad_rec_CK CHECK (edad_rec IN ('Menores de 10', '11 a 17', 'Mayores de 18'))
);

CREATE SEQUENCE seq_edad_recomendada START WITH 1;

-- Tabla Genero
CREATE TABLE Genero (
    id_t_genero NUMBER PRIMARY KEY,
    t_genero VARCHAR2(2)
);

CREATE SEQUENCE seq_genero START WITH 1;

-- Tabla Produccion
CREATE TABLE Produccion (
    id_Produccion NUMBER PRIMARY KEY,
    t_produc VARCHAR2(30)
);

CREATE SEQUENCE seq_produccion START WITH 1;

-- Tabla Programa
CREATE TABLE Programa (
    cod_prog NUMBER PRIMARY KEY,
    nombre_prog VARCHAR2(50),
    duracion NUMBER,
    ano_produc NUMBER,
    edad_rec NUMBER,
    t_genero NUMBER,
    protagonista VARCHAR2(500),
    descripcion CLOB,
    imagen BLOB,
    t_produc NUMBER,
    CONSTRAINT Programa_duracion_CK CHECK (duracion BETWEEN 15 AND 300),
    CONSTRAINT Programa_edad_rec_FK FOREIGN KEY (edad_rec) REFERENCES edad_recomendada(id_edad_rec),
    CONSTRAINT Programa_t_genero_FK FOREIGN KEY (t_genero) REFERENCES Genero(id_t_genero),
    CONSTRAINT Programa_t_produc_FK FOREIGN KEY (t_produc) REFERENCES Produccion(id_Produccion)
);

CREATE SEQUENCE seq_programa START WITH 1;

-- Tabla Capitulos
CREATE TABLE Capitulos (
    cod_prog NUMBER,
    num_cap NUMBER,
    duracion NUMBER,
    descripcion CLOB,
    PRIMARY KEY (cod_prog, num_cap),
    CONSTRAINT Capitulos_cod_prog_FK FOREIGN KEY (cod_prog) REFERENCES Programa(cod_prog),
    CONSTRAINT Capitulos_num_cap_CK CHECK (num_cap BETWEEN 1 AND 350)
);

-- Tabla Tarjeta
CREATE TABLE Tarjeta (
    id_tarjeta NUMBER PRIMARY KEY,
    t_tarjeta VARCHAR2(2),
    CONSTRAINT Tarjeta_t_tarjeta_CK CHECK (t_tarjeta IN ('DB', 'CR'))
);

CREATE SEQUENCE seq_tarjeta START WITH 1;

-- Tabla Cliente
CREATE TABLE Cliente (
    cod_cliente NUMBER PRIMARY KEY,
    identificador VARCHAR2(30),
    nombre_cliente VARCHAR2(30),
    apellido VARCHAR2(30),
    num_tarjeta VARCHAR2(30),
    t_tarjeta NUMBER,
    CONSTRAINT Cliente_t_tarjeta_FK FOREIGN KEY (t_tarjeta) REFERENCES Tarjeta(id_tarjeta)
);

CREATE SEQUENCE seq_cliente START WITH 1;

-- Tabla Planes
CREATE TABLE Planes (
    cod_plan NUMBER PRIMARY KEY,
    t_plan VARCHAR2(30),
    monto_planes NUMBER(15,2)
);

CREATE SEQUENCE seq_planes START WITH 1;

-- Tabla Pago
CREATE TABLE Pago (
    cod_cliente NUMBER,
    cod_plan NUMBER,
    num_contrato NUMBER,
    monto_pagado NUMBER(15,2),
    fecha_pago DATE,
    PRIMARY KEY (cod_cliente, cod_plan, fecha_pago),
    CONSTRAINT Pago_cod_cliente_FK FOREIGN KEY (cod_cliente) REFERENCES Cliente(cod_cliente),
    CONSTRAINT Pago_cod_plan_FK FOREIGN KEY (cod_plan) REFERENCES Planes(cod_plan)
);

-- Tabla Contrato
CREATE TABLE Contrato (
    cod_cliente NUMBER,
    cod_plan NUMBER,
    num_contrato NUMBER PRIMARY KEY,
    fecha_contrato DATE,
    CONSTRAINT Contrato_cod_cliente_FK FOREIGN KEY (cod_cliente) REFERENCES Cliente(cod_cliente),
    CONSTRAINT Contrato_cod_plan_FK FOREIGN KEY (cod_plan) REFERENCES Planes(cod_plan),
    CONSTRAINT Contrato_fecha_contrato_CK CHECK (fecha_contrato BETWEEN TO_DATE('1997-08-29','YYYY-MM-DD') AND SYSDATE)
);

-- Tabla Visualizaciones
CREATE TABLE Visualizaciones (
    num_contrato NUMBER,
    cod_prog NUMBER,
    tiempo_visualizacion NUMBER,
    PRIMARY KEY (num_contrato, cod_prog),
    CONSTRAINT Visualizaciones_num_contrato_FK FOREIGN KEY (num_contrato) REFERENCES Contrato(num_contrato),
    CONSTRAINT Visualizaciones_cod_prog_FK FOREIGN KEY (cod_prog) REFERENCES Programa(cod_prog)
);
