-- Script completo en MySQL para vistas y cursor de programas por genero

-- 5) Busqueda por Genero
DROP VIEW IF EXISTS V_genero;
CREATE VIEW V_genero AS
SELECT 
    P.nombre_prog AS nombre_prog,
    P.duracion AS duracion,
    P.ano_produc AS ano_produc,
    G.t_genero AS t_genero,
    P.descripcion AS descripcion,
    P.imagen AS imagen,
    Pr.t_produc AS t_produc
FROM Programa P
INNER JOIN Genero G ON P.t_genero = G.id_t_genero
INNER JOIN Produccion Pr ON Pr.id_Produccion = P.t_produc;

-- 5) Busqueda por Edad
DROP VIEW IF EXISTS V_edad;
CREATE VIEW V_edad AS
SELECT 
    P.nombre_prog AS nombre_prog,
    P.duracion AS duracion,
    P.ano_produc AS ano_produc,
    E.edad_rec AS edad_rec,
    P.descripcion AS descripcion,
    P.imagen AS imagen,
    Pr.t_produc AS t_produc
FROM Programa P
INNER JOIN edad_recomendada E ON P.edad_rec = E.id_edad_rec
INNER JOIN Produccion Pr ON Pr.id_Produccion = P.t_produc;

-- 5) Busqueda por Protagonista
DROP VIEW IF EXISTS V_actor;
CREATE VIEW V_actor AS
SELECT 
    P.nombre_prog AS nombre_prog,
    P.duracion AS duracion,
    P.ano_produc AS ano_produc,
    P.protagonista AS protagonista,
    P.descripcion AS descripcion,
    P.imagen AS imagen,
    Pr.t_produc AS t_produc
FROM Programa P
INNER JOIN Produccion Pr ON Pr.id_Produccion = P.t_produc;

-- 9) Cursor para contar programas vistos por genero
DROP PROCEDURE IF EXISTS contar_programas_por_genero;
DELIMITER $$

CREATE PROCEDURE contar_programas_por_genero()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE GeneroID INT;
    DECLARE NombreGenero VARCHAR(30);
    DECLARE TotalVistos INT;

    DECLARE c_genero CURSOR FOR
        SELECT id_t_genero, t_genero FROM Genero;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN c_genero;

    read_loop: LOOP
        FETCH c_genero INTO GeneroID, NombreGenero;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT COUNT(*) INTO TotalVistos
        FROM Visualizaciones v
        INNER JOIN Programa p ON v.cod_prog = p.cod_prog
        WHERE p.t_genero = GeneroID;

        SELECT CONCAT('Genero: ', NombreGenero, ', Total de programas vistos: ', TotalVistos) AS Resultado;
    END LOOP;

    CLOSE c_genero;
END$$

DELIMITER ;

-- Puedes ejecutar el procedimiento con:
-- CALL contar_programas_por_genero();
