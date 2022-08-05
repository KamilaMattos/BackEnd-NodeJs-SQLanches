-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
SELECT
	pe.id,
  pe.status,
  pe.cliente_id,
  pr.id,
  pr.nome,
  pr.tipo,
  pr.preco,
  pr.pts_de_lealdade
FROM
	produtos_pedidos pp
JOIN
	pedidos pe ON pe.id = pp.pedido_id
JOIN
	produtos pr ON pr.id = pp.produto_id;

-- 2)
SELECT
	pedido_id
FROM
	produtos_pedidos pp
WHERE
	pp.produto_id = ((SELECT id FROM produtos WHERE nome = 'Fritas'));

-- 3)
SELECT
	c.nome AS gostam_de_fritas
FROM
	produtos_pedidos pp
JOIN
	produtos p ON p.id = pp.produto_id
JOIN
	pedidos pe ON pe.id = pp.pedido_id
JOIN
	clientes c ON c.id = pe.cliente_id
WHERE
	p.nome = 'Fritas';  

-- 4)
SELECT
	SUM(p.preco)
FROM
	produtos_pedidos pp
JOIN
	produtos p ON p.id = pp.produto_id
JOIN
	pedidos pe ON pe.id = pp.pedido_id
JOIN
	clientes c ON c.id = pe.cliente_id
WHERE
	c.nome = 'Laura';

-- 5)
SELECT
	p.nome,
  COUNT(p.nome)
FROM
	produtos_pedidos pp
JOIN
	produtos p ON p.id = pp.produto_id
JOIN
	pedidos pe ON pe.id = pp.pedido_id
GROUP BY
	p.nome
ORDER BY
	p.nome ASC;