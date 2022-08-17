SELECT 
	art.nome_artista AS artista,
    alb.nome_album AS album,
	COUNT(seg.artista_id) AS seguidores
FROM 
	SpotifyClone.artistas AS art
JOIN 
	SpotifyClone.album AS alb ON alb.artista_id = art.artista_id
JOIN
	SpotifyClone.seguidores_artistas AS seg ON seg.artista_id = art.artista_id
GROUP BY
	art.nome_artista, alb.nome_album
ORDER BY
	seguidores DESC, art.nome_artista, alb.nome_album;