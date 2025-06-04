-- Script Oracle con logica de paz y salvo y validacion de pago

-- 3) Paz y Salvo
DROP TRIGGER t_paz_y_salvo;

CREATE OR REPLACE TRIGGER t_paz_y_salvo
BEFORE INSERT ON Visualizaciones
FOR EACH ROW
DECLARE
    ultima_fecha_pago DATE;
    total_existente NUMBER;
BEGIN
    -- Validaciones iniciales
    IF :NEW.num_contrato IS NULL OR :NEW.cod_prog IS NULL OR :NEW.tiempo_visualizacion IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Alguno de los valores es nulo.');
    END IF;

    -- Verificar si ya existe la visualizacion
    SELECT COUNT(*) INTO total_existente
    FROM Visualizaciones
    WHERE num_contrato = :NEW.num_contrato AND cod_prog = :NEW.cod_prog;

    IF total_existente > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Esta visualizacion ya existe.');
    END IF;

    -- Obtener la ultima fecha de pago
    SELECT MAX(fecha_pago) INTO ultima_fecha_pago
    FROM Pago
    WHERE num_contrato = :NEW.num_contrato;

    IF ultima_fecha_pago IS NULL OR MONTHS_BETWEEN(SYSDATE, ultima_fecha_pago) >= 1 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Su servicio esta suspendido por morosidad.');
    END IF;

    -- Si todo esta bien, se permite el insert
END;
/

-- 4) Realizar Pago
DROP TRIGGER t_Realizar_Pago;

CREATE OR REPLACE TRIGGER t_Realizar_Pago
BEFORE INSERT ON Pago
FOR EACH ROW
DECLARE
    monto_plan NUMBER(15,2);
    existe_plan NUMBER;
BEGIN
    -- Verificar si existe plan contratado por el cliente
    SELECT COUNT(*) INTO existe_plan
    FROM Contrato
    WHERE cod_cliente = :NEW.cod_cliente AND cod_plan = :NEW.cod_plan AND num_contrato = :NEW.num_contrato;

    IF existe_plan = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'El cliente no tiene contratado este plan.');
    END IF;

    -- Obtener el ultimo monto registrado para el mismo plan
    SELECT monto_pagado
    INTO monto_plan
    FROM (
        SELECT monto_pagado
        FROM Pago
        WHERE cod_cliente = :NEW.cod_cliente AND cod_plan = :NEW.cod_plan AND num_contrato = :NEW.num_contrato
        ORDER BY fecha_pago DESC
    )
    WHERE ROWNUM = 1;

    IF monto_plan IS NOT NULL AND :NEW.monto_pagado <> monto_plan THEN
        RAISE_APPLICATION_ERROR(-20005, 'El monto pagado no corresponde al plan contratado.');
    END IF;

    -- Fecha de pago automatica
    :NEW.fecha_pago := SYSDATE;
    -- Si pasa todas las validaciones, se realiza el insert normalmente
END;
/
