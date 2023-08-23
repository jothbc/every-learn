CREATE TRIGGER novo_produto_log 
AFTER INSERT ON produtos
FOR EACH ROW
BEGIN
    INSERT INTO logs (produto_id, acao, data) 
    VALUES (NEW.id, 'insert', NOW());
END;


DELIMITER //
CREATE TRIGGER update_produto_log
AFTER UPDATE ON produtos 
FOR EACH ROW
BEGIN
    INSERT INTO logs (campo, valor_antigo, valor_novo, data_hora)
    VALUES ('preco', OLD.preco, NEW.preco, NOW());
END;
//

DELIMITER ;
