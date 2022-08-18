SELECT 
	art.nome_artista  AS artista,
    alb.nome_album AS album
FROM 
	SpotifyClone.artistas AS art
JOIN 
	SpotifyClone.album AS alb ON alb.artista_id = art.artista_id
HAVING
	art.nome_artista = 'Elis Regina'
ORDER BY 
	album;