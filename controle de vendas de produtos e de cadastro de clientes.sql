DELIMITER $$

CREATE FUNCTION TotalClientesDia(data_cadastro DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    
    -- Soma o número de clientes cadastrados na data informada
    SELECT COUNT(*) INTO total
    FROM Clientes
    WHERE data_cadastro = data_cadastro;
    
    -- Retorna o total de clientes cadastrados
    RETURN total;
END$$

DELIMITER ;

SELECT TotalClientesDia('2024-09-21');
