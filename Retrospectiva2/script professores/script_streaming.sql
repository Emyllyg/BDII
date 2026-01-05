-- Cria o banco de dados caso ele não exista, utilizando um conjunto de caracteres que suporta acentuação.
CREATE DATABASE IF NOT EXISTS db_streaming_musical
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- Seleciona o banco de dados recém-criado para executar os comandos a seguir.
USE db_streaming_musical;

-- Tabela: artistas
-- Armazena as informações sobre os artistas ou bandas.
CREATE TABLE artistas (
    id_artista INT AUTO_INCREMENT PRIMARY KEY,          -- Identificador único para cada artista (Chave Primária).
    nome_artista VARCHAR(150) NOT NULL UNIQUE,         -- Nome do artista ou da banda. O `UNIQUE` impede nomes duplicados.
    pais_origem VARCHAR(50),                            -- País de origem do artista.
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP -- Data de registro do artista no sistema.
);

select  * from artistas;

-- Tabela: albuns
-- Armazena as informações dos álbuns lançados pelos artistas.
CREATE TABLE albuns (
    id_album INT AUTO_INCREMENT PRIMARY KEY,            -- Identificador único para cada álbum (Chave Primária).
    titulo_album VARCHAR(200) NOT NULL,                 -- Título do álbum.
    ano_lancamento INT,                                 -- Ano em que o álbum foi lançado.
    url_capa_album VARCHAR(255),                        -- Link para a imagem da capa do álbum.
    id_artista INT,                                     -- Chave estrangeira que referencia o artista que lançou o álbum.

    -- Define a chave estrangeira e a regra de integridade.
    -- Se um artista for deletado, todos os seus álbuns também serão (ON DELETE CASCADE).
    CONSTRAINT fk_album_artista
        FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
        ON DELETE CASCADE
);

-- Tabela: musicas
-- Armazena os detalhes de cada faixa musical.
CREATE TABLE musicas (
    id_musica INT AUTO_INCREMENT PRIMARY KEY,           -- Identificador único para cada música (Chave Primária).
    titulo_musica VARCHAR(200) NOT NULL,                -- Título da música.
    duracao_segundos INT NOT NULL,                      -- Duração da música em segundos.
    genero_musical VARCHAR(50),                         -- Gênero da música (Pop, Rock, MPB, etc.).
    id_album INT,                                       -- Chave estrangeira que referencia o álbum ao qual a música pertence.

    -- Define a chave estrangeira.
    -- Se um álbum for deletado, todas as suas músicas também serão.
    CONSTRAINT fk_musica_album
        FOREIGN KEY (id_album) REFERENCES albuns(id_album)
        ON DELETE CASCADE
);

-- Tabela: usuarios
-- Armazena os dados dos usuários do serviço de streaming.
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,          -- Identificador único para cada usuário (Chave Primária).
    nome_usuario VARCHAR(100) NOT NULL,                 -- Nome completo do usuário.
    email VARCHAR(100) NOT NULL UNIQUE,                 -- E-mail do usuário, deve ser único.
    data_nascimento DATE,                               -- Data de nascimento do usuário.
    data_cadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP -- Data e hora em que o usuário se cadastrou.
);

select * from usuarios;

-- Tabela: historico_reproducao
-- Tabela principal para a retrospectiva! Registra cada vez que um usuário ouve uma música.
CREATE TABLE historico_reproducao (
    id_reproducao BIGINT AUTO_INCREMENT PRIMARY KEY,   -- Identificador único para cada reprodução (Chave Primária).
    id_usuario INT,                                    -- Chave estrangeira que referencia o usuário que ouviu a música.
    id_musica INT,                                     -- Chave estrangeira que referencia a música que foi ouvida.
    data_hora_reproducao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Data e hora exatas em que a música foi tocada.

    -- Define as chaves estrangeiras.
    -- Se um usuário for deletado, seu histórico também será.
    CONSTRAINT fk_historico_usuario
        FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
        ON DELETE CASCADE,

    -- Se uma música for deletada, os registros de sua reprodução também serão.
    CONSTRAINT fk_historico_musica
        FOREIGN KEY (id_musica) REFERENCES musicas(id_musica)
        ON DELETE CASCADE
);