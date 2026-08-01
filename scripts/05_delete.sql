-- Deleção
-- SEMPRE realizar SELECT + WHERE antes do comando DELETE (confimação)
BEGIN TRANSACTION; -- Boa prática de rascunho

SELECT * FROM pedidos WHERE pedido_id = 2;

-- Execução do comando DELETE apontando para PK (primary key)
DELETE FROM pedidos
WHERE pedido_id = 2;

SELECT * FROM pedidos; -- Verifica tabela alterada

COMMIT; -- Salva operação

-- Em caso de alteração indevida
--ROLLBACK;