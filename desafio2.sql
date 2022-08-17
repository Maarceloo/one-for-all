SELECT 
	COUNT(DISTINCT mus.musica_id) AS cancoes,
    COUNT(DISTINCT art.artista_id) AS artistas,
    COUNT(DISTINCT alb.album_id) AS albuns
FROM 
	SpotifyClone.musica AS mus,
    SpotifyClone.artistas AS art,
    SpotifyClone.album AS alb;