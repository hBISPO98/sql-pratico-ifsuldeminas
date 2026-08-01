-- Consulta de todos os dados da tabela clientes
SELECT * FROM clientes;

-- Consulta de todos os dados da tabela pedidos
SELECT * FROM pedidos;

-- Consulta apenas de colunas específicas
SELECT cliente_id, nome, email, cidade FROM clientes;
SELECT pedido_id, data_pedido, valor_total, status FROM pedidos;