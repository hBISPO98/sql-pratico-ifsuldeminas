-- 1. Limpeza do terreno (opcional, mas evita erros)
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS demo;

-- 2. Criação da tabela clientes
CREATE TABLE clientes (
	cliente_id INTEGER PRIMARY KEY,
	nome TEXT NOT NULL,
	email TEXT UNIQUE,
	cidade TEXT,
	criado_em TEXT DEFAULT CURRENT_DATE
);

-- 3. Criação da tabela pedidos
CREATE TABLE pedidos (
	pedido_id INTEGER PRIMARY KEY,
	cliente_id INTEGER NOT NULL,
	data_pedido TEXT NOT NULL,
	valor_total REAL NOT NULL,
	status TEXT DEFAULT 'aberto',
    FOREIGN KEY (cliente_id)
    REFERENCES clientes(cliente_id)
  );