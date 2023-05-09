SELECT 
  COUNT(h.usuario_id) AS musicas_no_historico
FROM usuario AS u
INNER JOIN historico_reproducao AS h
ON u.id = h.usuario_id
WHERE u.nome = 'Barbara';
