SELECT
	a.nome AS artista,
    alb.nome AS album,
    COUNT(s.artista_id) AS pessoas_seguidoras	
FROM artista AS a
    INNER JOIN album AS alb
    ON a.id = alb.artist_id    
    INNER JOIN seguindo_artista AS s
    ON alb.id = s.artista_id
    GROUP BY a.nome, alb.nome
    ORDER BY pessoas_seguidoras DESC;