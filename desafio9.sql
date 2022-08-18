SELECT 
	COUNT(his.usuario_id) AS quantidade_musicas_no_historico
FROM 
	SpotifyClone.usuario AS usu
JOIN 
	SpotifyClone.historico_reproducoes AS his ON his.usuario_id = usu.usuario_id
WHERE
	his.usuario_id = 1;