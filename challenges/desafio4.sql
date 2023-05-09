SELECT 
	CONCAT(u.nome," ", u.sobrenome) AS pessoa_usuaria,
    IF (MAX(YEAR(h.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
	
    FROM usuario as u
    INNER JOIN historico_reproducao as h
    ON u.id = h.usuario_id
    GROUP BY pessoa_usuaria
    ORDER BY pessoa_usuaria;