SELECT
    a.nome AS artista,
    alb.nome AS album
FROM artista AS a
INNER JOIN album AS alb
ON a.id = alb.artist_id
WHERE a.nome = 'Elis Regina'
ORDER BY album;