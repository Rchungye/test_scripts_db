-- Script MySQL con logica de paz y salvo y validacion de pago

-- 3) Paz y Salvo
DROP TRIGGER IF EXISTS t_paz_y_salvo;
DELIMITER $$

CREATE TRIGGER t_paz_y_salvo
BEFORE INSERT ON Visualizaciones
FOR EACH ROW
BEGIN
    DECLARE ultima_fecha_pago DATE;
    DECLARE total_existente INT;

    -- Validaciones iniciales
    IF NEW.num_contrato IS NULL OR NEW.cod_prog IS NULL OR NEW.tiempo_visualizacion IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Alguno de los valores es nulo.';
    END IF;

    -- Verificar si ya existe la visualizacion
    SELECT COUNT(*) INTO total_existente
    FROM Visualizaciones
    WHERE num_contrato = NEW.num_contrato AND cod_prog = NEW.cod_prog;

    IF total_existente > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Esta visualizacion ya existe.';
    END IF;

    -- Obtener la ultima fecha de pago
    SELECT MAX(fecha_pago) INTO ultima_fecha_pago
    FROM Pago
    WHERE num_contrato = NEW.num_contrato;

    IF ultima_fecha_pago IS NULL OR TIMESTAMPDIFF(MONTH, ultima_fecha_pago, CURRENT_DATE()) >= 1 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Su servicio esta suspendido por morosidad.';
    END IF;

    -- Si todo esta bien, se permite el insert y se imprime mensaje (en apps externas, no en MySQL)
END$$

DELIMITER ;

-- 4) Realizar Pago
DROP TRIGGER IF EXISTS t_Realizar_Pago;
DELIMITER $$

CREATE TRIGGER t_Realizar_Pago
BEFORE INSERT ON Pago
FOR EACH ROW
BEGIN
    DECLARE monto_plan MONEY;
    DECLARE existe_plan INT;

    -- Verificar si existe plan contratado por el cliente
    SELECT COUNT(*) INTO existe_plan
    FROM Pago
    WHERE cod_cliente = NEW.cod_cliente AND cod_plan = NEW.cod_plan AND num_contrato = NEW.num_contrato;

    IF existe_plan = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El cliente no tiene contratado este plan.';
    END IF;

    -- Obtener el ultimo monto registrado para el mismo plan
    SELECT monto_pagado INTO monto_plan
    FROM Pago
    WHERE cod_cliente = NEW.cod_cliente AND cod_plan = NEW.cod_plan AND num_contrato = NEW.num_contrato
    ORDER BY fecha_pago DESC
    LIMIT 1;

    IF monto_plan IS NOT NULL AND NEW.monto_pagado <> monto_plan THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El monto pagado no corresponde al plan contratado.';
    END IF;

    -- Fecha de pago automatica
    SET NEW.fecha_pago = CURRENT_DATE();
    -- Si pasa todas las validaciones, se realiza el insert normalmente
END$$

DELIMITER ;
