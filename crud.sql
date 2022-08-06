-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)
INSERT INTO 
	clientes (nome, lealdade)
VALUES
	('Georgia', 0);

-- 2)
INSERT INTO
	pedidos (status, cliente_id)
VALUES
	('Recebido', 6);

-- 3)
INSERT INTO
	produtos_pedidos (pedido_id, produto_id)
VALUES
	(6, 1),
  (6, 2),
  (6, 6),
  (6, 8),
  (6, 8);


-- Leitura

-- 1)
SELECT
	*
FROM
	clientes c
JOIN
	pedidos pe ON pe.cliente_id = c.id
JOIN
	produtos_pedidos pp ON pp.pedido_id = pe.id
JOIN
	produtos p ON p.id = pp.produto_id
WHERE
	c.id = 6;


-- Atualização

-- 1)
UPDATE
  clientes
SET
  lealdade = 48
WHERE
  id = 6;


-- Deleção

-- 1)
DELETE FROM
	clientes
WHERE
	clientes.nome = 'Marcelo';

