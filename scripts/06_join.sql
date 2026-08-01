SELECT clientes.nome,
	   pedidos.data_pedido,
       pedidos.valor_total,
       pedidos.status
FROM clientes
LEFT JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id;

-- Boa prática para evitar valor mostragem de valor NULL
SELECT
	clientes.nome,
    COALESCE (SUM(pedidos.valor_total), 0) AS total_gasto
FROM clientes
LEFT JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nome