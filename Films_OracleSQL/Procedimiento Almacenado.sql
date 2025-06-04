-- Script Oracle de procedimientos de busqueda, verificacion y preferencia de clientes

-- 6) Busqueda de Programa
BEGIN
    EXECUTE IMMEDIATE 'DROP PROCEDURE p_busqueda';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4043 THEN -- ORA-04043: object does not exist
            RAISE;
        END IF;
END;
/

CREATE OR REPLACE PROCEDURE p_busqueda (
    tipo_busqueda IN NUMBER,
    palabra_buscada IN VARCHAR2
) IS
BEGIN
    IF tipo_busqueda = 1 THEN
        FOR rec IN (
            SELECT * FROM V_genero
            WHERE t_genero LIKE '%' || palabra_buscada || '%'
        ) LOOP
            -- Imprime resultado en consola (usar en herramientas como SQL*Plus)
            DBMS_OUTPUT.PUT_LINE('Programa: ' || rec.nombre_prog);
        END LOOP;
    ELSIF tipo_busqueda = 2 THEN
        FOR rec IN (
            SELECT * FROM V_edad
            WHERE TO_CHAR(edad_rec) LIKE '%' || palabra_buscada || '%'
        ) LOOP
            DBMS_OUTPUT.PUT_LINE('Programa: ' || rec.nombre_prog);
        END LOOP;
    ELSIF tipo_busqueda = 3 THEN
        FOR rec IN (
            SELECT * FROM V_actor
            WHERE protagonista LIKE '%' || palabra_buscada || '%'
        ) LOOP
            DBMS_OUTPUT.PUT_LINE('Programa: ' || rec.nombre_prog);
        END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Tipo de busqueda no valido');
    END IF;
END;
/

-- Para probar el procedimiento:
-- SET SERVEROUTPUT ON;
-- EXEC p_busqueda(3, 'James');



-- 7) Verificar Cliente
BEGIN
    EXECUTE IMMEDIATE 'DROP PROCEDURE P_Verificar_Cliente';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4043 THEN
            RAISE;
        END IF;
END;
/

CREATE OR REPLACE PROCEDURE P_Verificar_Cliente (
    nombre_cliente IN VARCHAR2,
    apellido IN VARCHAR2,
    identificador IN VARCHAR2,
    numero_tarjeta IN VARCHAR2,
    t_tarjeta IN NUMBER,
    cod_cliente OUT NUMBER
) IS
    existe_cliente NUMBER;
BEGIN
    SELECT COUNT(*) INTO existe_cliente
    FROM Cliente
    WHERE nombre_cliente = nombre_cliente
      AND apellido = apellido
      AND identificador = identificador;

    IF existe_cliente > 0 THEN
        FOR rec IN (
            SELECT c.cod_cliente,
                   c.nombre_cliente || ' ' || c.apellido AS nombre_completo
            FROM Cliente c
            WHERE c.identificador = identificador
        ) LOOP
            DBMS_OUTPUT.PUT_LINE('Codigo del cliente: ' || rec.cod_cliente);
            DBMS_OUTPUT.PUT_LINE('Nombre del cliente ya registrado: ' || rec.nombre_completo);
            cod_cliente := rec.cod_cliente;
        END LOOP;
    ELSE
        INSERT INTO Cliente (identificador, nombre_cliente, apellido, num_tarjeta, t_tarjeta)
        VALUES (identificador, nombre_cliente, apellido, numero_tarjeta, t_tarjeta);

        SELECT c.cod_cliente INTO cod_cliente
        FROM Cliente c
        WHERE c.identificador = identificador;

        DBMS_OUTPUT.PUT_LINE('Nuevo Codigo de Cliente: ' || cod_cliente);
        DBMS_OUTPUT.PUT_LINE('Nombre de Cliente: ' || nombre_cliente || ' ' || apellido);
    END IF;
END;
/

-- Para probar:
-- VARIABLE cod_cliente NUMBER;
-- EXEC P_Verificar_Cliente('Rafael', 'Chung', '8-939-1136', '1515-1859-5218', 1, :cod_cliente);
-- PRINT cod_cliente;



-- 8) Preferencia de los Clientes
BEGIN
    EXECUTE IMMEDIATE 'DROP PROCEDURE p_preferencia_cliente';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4043 THEN
            RAISE;
        END IF;
END;
/

CREATE OR REPLACE PROCEDURE p_preferencia_cliente (
    num_contrato IN NUMBER
) IS
    GeneroPreferido NUMBER;
BEGIN
    SELECT pr.t_genero
    INTO GeneroPreferido
    FROM (
        SELECT pr.t_genero, COUNT(*) AS conteo
        FROM Visualizaciones v
        JOIN Programa pr ON v.cod_prog = pr.cod_prog
        WHERE v.num_contrato = num_contrato
        GROUP BY pr.t_genero
        HAVING COUNT(*) >= 3
        ORDER BY conteo DESC
    ) WHERE ROWNUM = 1;

    FOR rec IN (
        SELECT *
        FROM Programa
        WHERE t_genero = GeneroPreferido
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Programa preferido: ' || rec.nombre_prog);
    END LOOP;
END;
/

-- Para probar:
-- SET SERVEROUTPUT ON;
-- EXEC p_preferencia_cliente(69584714);
