SELECT 
	mus.nome_musica AS nome,
    COUNT(his.musica_id) AS reproducoes
FROM 
	SpotifyClone.musica AS mus
JOIN 
	SpotifyClone.historico_reproducoes AS his ON his.musica_id = mus.musica_id
JOIN
	SpotifyClone.usuario AS usu ON usu.usuario_id = his.usuario_id
JOIN
	SpotifyClone.plano AS pla ON pla.plano_id = usu.plano_id
WHERE
	pla.plano_id = 1 OR pla.plano_id = 4
GROUP BY 
	nome
ORDER BY
	nome;