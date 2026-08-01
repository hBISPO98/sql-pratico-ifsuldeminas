-- Relatório de quantidade de pedidos agrupados por cliente
SELECT 
	clientes.nome,
    COUNT(pedidos.pedido_id) AS quantidade_pedidos
FROM clientes
INNER JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nome;

-- Relatório de valores gastos por cliente
SELECT
	clientes.nome,
    SUM(pedidos.valor_total) AS total_gasto
FROM clientes
INNER JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nome
ORDER BY AVG(pedidos.valor_total) DESC;

-- Relatório da média de valores gastos por cliente 
SELECT
	clientes.nome,
    AVG(pedidos.valor_total) AS media_por_pedido
FROM clientes
INNER JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nome;   

-- Relatório com todas as funções de agregação
SELECT
	clientes.nome,
    COUNT(pedidos.pedido_id) AS total_compras,
    MAX(pedidos.valor_total) AS compra_mais_cara,
    MIN(pedidos.valor_total) AS compra_mais_barata,
    SUM(pedidos.valor_total) AS faturamento_total,
    AVG(pedidos.valor_total) AS ticket_medio
FROM clientes
INNER JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nome
ORDER BY clientes.nome ASC;