-- Script completo en Oracle para vistas y cursor de programas por genero

-- 5) Busqueda por Genero
BEGIN
    EXECUTE IMMEDIATE 'DROP VIEW V_genero';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN -- ORA-00942: table or view does not exist
            RAISE;
        END IF;
END;
/

CREATE OR REPLACE VIEW V_genero AS
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
BEGIN
    EXECUTE IMMEDIATE 'DROP VIEW V_edad';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

CREATE OR REPLACE VIEW V_edad AS
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
BEGIN
    EXECUTE IMMEDIATE 'DROP VIEW V_actor';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

CREATE OR REPLACE VIEW V_actor AS
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
BEGIN
    EXECUTE IMMEDIATE 'DROP PROCEDURE contar_programas_por_genero';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4043 THEN -- ORA-04043: object does not exist
            RAISE;
        END IF;
END;
/

CREATE OR REPLACE PROCEDURE contar_programas_por_genero IS
    CURSOR c_genero IS
        SELECT id_t_genero, t_genero FROM Genero;
    v_generoID Genero.id_t_genero%TYPE;
    v_nombreGenero Genero.t_genero%TYPE;
    v_totalVistos NUMBER;
BEGIN
    FOR rec IN c_genero LOOP
        v_generoID := rec.id_t_genero;
        v_nombreGenero := rec.t_genero;

        SELECT COUNT(*)
        INTO v_totalVistos
        FROM Visualizaciones v
        INNER JOIN Programa p ON v.cod_prog = p.cod_prog
        WHERE p.t_genero = v_generoID;

        DBMS_OUTPUT.PUT_LINE('Genero: ' || v_nombreGenero || ', Total de programas vistos: ' || v_totalVistos);
    END LOOP;
END;
/

-- Para ejecutar el procedimiento:
-- SET SERVEROUTPUT ON;
-- EXEC contar_programas_por_genero;
