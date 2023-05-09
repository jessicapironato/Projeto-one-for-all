SELECT 
	c.nome AS cancao,
	COUNT(c.nome) AS reproducoes
	FROM cancao AS c
    INNER JOIN historico_reproducao AS h
    ON c.id = h.cancao_id
    GROUP BY cancao
    ORDER BY reproducoes DESC, cancao 
    LIMIT 2;