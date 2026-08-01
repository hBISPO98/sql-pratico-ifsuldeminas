-- Consulta de clientes com restrição de cidade
SELECT nome, cidade
FROM clientes
where cidade = 'São Paulo';

-- Consulta com restrição de pedidos com valor > R$100
SELECT clientes.nome, pedidos.valor_total
FROM clientes
JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.valor_total > 100.00;

-- Consulta com restrição de pedidos não cancelados
SELECT clientes.nome, pedidos.status
FROM clientes
JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.status != 'cancelado'; 

-- Busca ordenada com listagem de clientes em ordem ascendente (ASC)
SELECT clientes.nome
FROM clientes
ORDER BY clientes.nome ASC;

-- Busca ordenada pelo maior valor pago
SELECT clientes.nome, pedidos.valor_total, pedidos.status
FROM clientes
JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.status = 'pago'
ORDER BY pedidos.valor_total DESC;