SELECT 
	mus.nome_musica AS nome_musica,
	CASE
		WHEN mus.nome_musica LIKE '%Amar%' THEN REPLACE( mus.nome_musica, 'Amar', 'Code Review')
        WHEN mus.nome_musica LIKE '%SUPERSTAR%' THEN REPLACE( mus.nome_musica, 'SUPERSTAR', 'SUPERDEV')
        WHEN mus.nome_musica LIKE '%Bard%' THEN REPLACE( mus.nome_musica, 'Bard', 'QA')
        WHEN mus.nome_musica LIKE '%SOUL%' THEN REPLACE( mus.nome_musica, 'SOUL', 'CODE')
        WHEN mus.nome_musica LIKE '%Pais%' THEN REPLACE( mus.nome_musica, 'Pais', 'Pull Requests')
	END AS novo_nome
FROM 
	SpotifyClone.musica AS mus
HAVING 
	novo_nome IS NOT NULL
ORDER BY
	nome_musica DESC;