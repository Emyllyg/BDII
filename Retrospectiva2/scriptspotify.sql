CREATE DATABASE IF NOT EXISTS spotify;
USE spotify;

CREATE TABLE Usuarios (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    data_criacao DATE NOT NULL
);

CREATE TABLE Artistas (
    artista_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_artista VARCHAR(150) NOT NULL UNIQUE,
    nacionalidade VARCHAR(50)
);

CREATE TABLE Musicas (
    musica_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    artista_id INT NOT NULL,
    genero VARCHAR(100) NOT NULL,
   duracao_segundos SMALLINT NOT NULL CHECK (duracao_segundos > 0),
    data_lancamento YEAR,
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
);

CREATE TABLE Podcasts (
    podcast_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_podcast VARCHAR(150) NOT NULL UNIQUE,
    categoria VARCHAR(100) NOT NULL,
    apresentador VARCHAR(100) 
);

CREATE TABLE Episodios (
    episodio_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    podcast_id INT NOT NULL,
    titulo_episodio VARCHAR(200) NOT NULL,
   duracao_segundos SMALLINT NOT NULL CHECK (duracao_segundos > 0),
    FOREIGN KEY (podcast_id) REFERENCES Podcasts(podcast_id)
);

CREATE TABLE HistoricoReproducao (
    reproducao_id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    usuario_id INT NOT NULL,
    data_hora DATETIME NOT NULL,
    tipo_midia ENUM('M', 'P') NOT NULL,
    midia_id INT NOT NULL,
    duracao_segundos SMALLINT NOT NULL CHECK (duracao_segundos > 0),
    ano_referencia YEAR NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
    -- Adicionar INDEX em usuario_id e data_hora para performance!
);


