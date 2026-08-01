-- Atualização
-- SEMPRE realizar SELECT + WHERE antes do comando UPDATE (confimação)
BEGIN TRANSACTION; -- Boa prática de rascunho

SELECT * FROM clientes WHERE cliente_id = 5;
UPDATE clientes
SET cidade = 'Belém'
WHERE cliente_id = 5;

SELECT * FROM clientes WHERE cliente_id = 5; -- Verifica alteração

COMMIT; -- Salva operação

-- Em caso de alteração indevida
-- ROLLBACK;