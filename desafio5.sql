SELECT 
	mus.nome_musica AS cancao, 
    COUNT(mus.musica_id) AS reproducoes
FROM 
	SpotifyClone.musica AS mus
	INNER JOIN SpotifyClone.historico_reproducoes AS his ON his.musica_id = mus.musica_id
GROUP BY
	cancao
ORDER BY
	reproducoes DESC, cancao
LIMIT 2;