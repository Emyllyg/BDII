CREATE DATABASE IF NOT EXISTS streaming_retrospectiva;
USE streaming_retrospectiva;


CREATE TABLE Artista (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,    
    nome VARCHAR(255) NOT NULL,    
    genero_principal VARCHAR(100),    
    pais_origem VARCHAR(100) 
) ;

CREATE TABLE Album (
    album_id INT PRIMARY KEY AUTO_INCREMENT,    
    titulo VARCHAR(255) NOT NULL,    
    ano_lancamento YEAR,
    artista_id INT NOT NULL,    
    FOREIGN KEY (artista_id) REFERENCES Artista(artista_id)
        ON DELETE CASCADE -- Se o artista for deletado, seus álbuns também são.
        ON UPDATE CASCADE
);

CREATE TABLE Musica (
	musica_id INT PRIMARY KEY AUTO_INCREMENT,    
    titulo VARCHAR(255) NOT NULL,
    duracao_segundos INT NOT NULL,    
    genero_secundario VARCHAR(100),    
    album_id INT,    
    artista_principal_id INT NOT NULL,    
    FOREIGN KEY (album_id) REFERENCES Album(album_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,    
    FOREIGN KEY (artista_principal_id) REFERENCES Artista(artista_id)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);

CREATE TABLE Usuario (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,    
    nome_usuario VARCHAR(50) NOT NULL UNIQUE,
    nome_completo VARCHAR(255) NOT NULL,    
    email VARCHAR(255) UNIQUE,    
    data_cadastro DATE NOT NULL
);


CREATE TABLE Historico_Reproducao (
    reproducao_id INT PRIMARY KEY AUTO_INCREMENT,    
    usuario_id INT NOT NULL,    
    musica_id INT NOT NULL,    
    data_hora_reproducao DATETIME NOT NULL,    
    duracao_reproduzida_segundos INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,    
    FOREIGN KEY (musica_id) REFERENCES Musica(musica_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,        
    CHECK (duracao_reproduzida_segundos >= 0)
);

