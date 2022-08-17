CREATE DATABASE IF NOT EXISTS SpotifyClone;

	CREATE TABLE SpotifyClone.plano(
		`plano_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
		`nome_plano` VARCHAR(100) NOT NULL,
		`valor` DECIMAL(3, 2) NOT NULL
	) engine = InnoDB;

	CREATE TABLE SpotifyClone.usuario(
		`usuario_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
		`nome_usuario` VARCHAR(100) NOT NULL,
		`idade` INT NOT NULL,
		`historico_reproducoes` INT,
		`plano_id` INT,
		`data_assinatura` INT NOT NULL,
		FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano(plano_id)
	) engine = InnoDB;

	CREATE TABLE SpotifyClone.artistas(
		`artista_id` INT PRIMARY KEY AUTO_INCREMENT,
		`nome_artista` VARCHAR(100) NOT NULL
	) engine = InnoDB;

	CREATE TABLE SpotifyClone.seguidores_artistas(
		`artista_id` INT AUTO_INCREMENT,
		`usuario_id` INT,
		FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id),
		FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id)
	) engine = InnoDB;

	CREATE TABLE SpotifyClone.cancoes(
		`cancao_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
		`nome_musica` VARCHAR(100) NOT NULL,
		`duracao` INT NOT NULL
	) engine = InnoDB;

	CREATE TABLE SpotifyClone.album(
		`album_id` INT PRIMARY KEY AUTO_INCREMENT,
		`nome_album` VARCHAR(100) NOT NULL,
		`artista_id` INT,
		`cancao_id` INT,
		`ano_lancamento` INT NOT NULL,
		FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id),
		FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancoes(cancao_id)
	) engine = InnoDB;

	CREATE TABLE SpotifyClone.historico_reproducoes(
		`reproducoes` VARCHAR(100),
		`data_reproducao` DATETIME
	) engine = InnoDB;
    
INSERT INTO SpotifyClone.artistas (nome_artista)
 VALUES
   ('eminem');

INSERT INTO SpotifyClone.cancoes (nome_musica, duracao)
 VALUES
   ('Under Pressure', '203');

INSERT INTO SpotifyClone.album (nome_album, ano_lancamento)
 VALUES
   ('Hot Space', '1978');
  
INSERT INTO SpotifyClone.usuario (nome_usuario, idade, historico_reproducoes, data_assinatura)
 VALUES
   ('Marcelo', '25', '2', '2015');