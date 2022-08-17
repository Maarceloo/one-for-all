SELECT 
	usu.nome_usuario AS usuario,
    COUNT(his.usuario_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(mus.duracao_seg / 60), 2) AS total_minutos
FROM 
	SpotifyClone.usuario AS usu
	INNER JOIN SpotifyClone.historico_reproducoes AS his ON his.usuario_id = usu.usuario_id
    INNER JOIN SpotifyClone.musica AS mus ON mus.musica_id = his.musica_id
GROUP BY
	usuario
ORDER BY
	usuario;