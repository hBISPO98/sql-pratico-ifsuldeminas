-- Inserção de registros
INSERT INTO clientes (nome, email, cidade) VALUES
('Carlos Drummond', 'carlos@email.com', 'São Paulo'),
('Ferdinando Mendes', 'ferdinando@email.com', 'Rio de Janeiro'),
('Amanda Fernandes', 'amanda@email.com', 'Porto Alegre'),
('Bianca Alencar', 'bianca@email.com', 'Belo Horizonte'),
('Bruno Madrigal', 'bruno@email.com', 'Santarén');

INSERT INTO pedidos (cliente_id, data_pedido, valor_total, status) VALUES
(1, '2026-06-10', 150.50, 'pago'),
(2, '2026-06-11', 89.90, 'aberto'),
(1, '2026-06-12', 320.00, 'pago'),
(4, '2026-06-14', 1200.00, 'aberto'),
(5, '2026-06-15', 250.00, 'pago');

-- Conferência dos dados inseridos
SELECT * FROM clientes;
SELECT * FROM pedidos;