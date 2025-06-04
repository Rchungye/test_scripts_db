-- Script MySQL de procedimientos de busqueda, verificacion y preferencia de clientes

-- 6) Busqueda de Programa
DROP PROCEDURE IF EXISTS p_busqueda;
DELIMITER $$

CREATE PROCEDURE p_busqueda (
    IN tipo_busqueda INT,
    IN palabra_buscada VARCHAR(300)
)
BEGIN
    IF tipo_busqueda = 1 THEN
        SELECT * FROM V_genero
        WHERE t_genero LIKE CONCAT('%', palabra_buscada, '%');
    ELSEIF tipo_busqueda = 2 THEN
        SELECT * FROM V_edad
        WHERE edad_rec LIKE CONCAT('%', palabra_buscada, '%');
    ELSEIF tipo_busqueda = 3 THEN
        SELECT * FROM V_actor
        WHERE protagonista LIKE CONCAT('%', palabra_buscada, '%');
    ELSE
        SELECT 'Tipo de busqueda no valido' AS Resultado;
    END IF;
END$$

DELIMITER ;

-- Prueba del procedimiento p_busqueda
SET @exec_tipo_busqueda = 3;
-- SET @exec_palabra_buscada = 'ro'; -- para genero
-- SET @exec_palabra_buscada = '10'; -- para edad
SET @exec_palabra_buscada = 'James'; -- para protagonista

CALL p_busqueda(@exec_tipo_busqueda, @exec_palabra_buscada);


-- 7) Verificar Cliente
DROP PROCEDURE IF EXISTS P_Verificar_Cliente;
DELIMITER $$

CREATE PROCEDURE P_Verificar_Cliente (
    IN nombre_cliente VARCHAR(50),
    IN apellido VARCHAR(50),
    IN identificador VARCHAR(20),
    IN numero_tarjeta VARCHAR(30),
    IN t_tarjeta INT,
    OUT cod_cliente INT
)
BEGIN
    DECLARE existe_cliente INT;

    SELECT COUNT(*) INTO existe_cliente
    FROM Cliente
    WHERE nombre_cliente = nombre_cliente AND apellido = apellido AND identificador = identificador;

    IF existe_cliente > 0 THEN
        SELECT c.cod_cliente AS 'Codigo del cliente',
               CONCAT(c.nombre_cliente, ' ', c.apellido) AS 'Nombre del cliente ya registrado/a'
        FROM Cliente c
        WHERE c.identificador = identificador;
    ELSE
        INSERT INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta)
        VALUES (identificador, nombre_cliente, apellido, numero_tarjeta, t_tarjeta);

        SELECT c.cod_cliente INTO cod_cliente
        FROM Cliente c
        WHERE c.identificador = identificador;

        SELECT cod_cliente AS 'Nuevo Codigo de Cliente',
               CONCAT(nombre_cliente, ' ', apellido) AS 'Nombre de Cliente';
    END IF;
END$$

DELIMITER ;

-- Prueba del procedimiento P_Verificar_Cliente
SET @exce_nombre_cliente = 'Rafael';
SET @exce_apellido = 'Chung';
SET @exce_identificador = '8-939-1136';
SET @exce_numero_tarjeta = '1515-1859-5218';
SET @exce_t_tarjeta = 1;
SET @exce_cod_cliente = 0;

CALL P_Verificar_Cliente(
    @exce_nombre_cliente,
    @exce_apellido,
    @exce_identificador,
    @exce_numero_tarjeta,
    @exce_t_tarjeta,
    @exce_cod_cliente
);


-- 8) Preferencia de los Clientes
DROP PROCEDURE IF EXISTS p_preferencia_cliente;
DELIMITER $$

CREATE PROCEDURE p_preferencia_cliente (
    IN num_contrato INT
)
BEGIN
    DECLARE GeneroPreferido INT;

    SELECT t_genero INTO GeneroPreferido
    FROM (
        SELECT pr.t_genero, COUNT(*) AS conteo
        FROM Visualizaciones v
        JOIN Programa pr ON v.cod_prog = pr.cod_prog
        WHERE v.num_contrato = num_contrato
        GROUP BY pr.t_genero
        HAVING COUNT(*) >= 3
        ORDER BY conteo DESC
        LIMIT 1
    ) AS GenerosConteo;

    SELECT *
    FROM Programa
    WHERE t_genero = GeneroPreferido;
END$$

DELIMITER ;

-- Prueba del procedimiento p_preferencia_cliente
SET @exce_num_contrato = 69584714;
CALL p_preferencia_cliente(@exce_num_contrato);
