SELECT 
	CONCAT(u.nome," ", u.sobrenome) AS pessoa_usuaria,
	COUNT(h.cancao_id) AS musicas_ouvidas,
	ROUND(SUM(c.duracao)/60, 2) AS total_minutos 
    FROM usuario as u
    INNER JOIN historico_reproducao as h
    ON u.id = h.usuario_id
    INNER JOIN cancao as c
    ON c.id = h.cancao_id
    GROUP BY pessoa_usuaria
    ORDER BY pessoa_usuaria;