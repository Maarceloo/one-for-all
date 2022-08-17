SELECT 
	usu.nome_usuario AS usuario,
	IF(MAX(YEAR(his.data_reproducao)) >= 2021  , 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM 
	SpotifyClone.usuario AS usu
	INNER JOIN SpotifyClone.historico_reproducoes AS his ON his.usuario_id = usu.usuario_id
GROUP BY
	usuario
ORDER BY
	usuario;