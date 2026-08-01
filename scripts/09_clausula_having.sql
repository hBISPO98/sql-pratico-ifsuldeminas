-- Relatório de clientes com gasto superior a R$400,00
SELECT
	clientes.nome,
	SUM(pedidos.valor_total) AS total_gasto
FROM clientes
INNER JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nome
HAVING SUM(pedidos.valor_total) > 400; -- Filtra o resutado da função agregação SUM