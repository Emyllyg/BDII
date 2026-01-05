INSERT INTO artistas (nome_artista, pais_origem) VALUES
('Queen', 'Reino Unido'),
('Nirvana', 'Estados Unidos'),
('Anitta', 'Brasil'),
('Caetano Veloso', 'Brasil'),
('Marília Mendonça', 'Brasil'),
('Chitãozinho & Xororó', 'Brasil'),
('Iron Maiden', 'Reino Unido'),
('Racionais MC''s', 'Brasil'),
('Kendrick Lamar', 'Estados Unidos'),
('Daft Punk', 'França'),
('Alok', 'Brasil'),
('BTS', 'Coreia do Sul'),
('Bob Marley & The Wailers', 'Jamaica'),
('Natiruts', 'Brasil'),
('Legião Urbana', 'Brasil');

select * from artistas;

INSERT INTO albuns (titulo_album, ano_lancamento, url_capa_album, id_artista) VALUES
('A Night at the Opera', 1975, 'https://upload.wikimedia.org/wikipedia/en/4/4d/Queen_A_Night_At_The_Opera.png', (SELECT id_artista FROM artistas WHERE nome_artista = 'Queen')),
('Nevermind', 1991, 'https://upload.wikimedia.org/wikipedia/en/b/b7/NirvanaNevermindalbumcover.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Nirvana')),
('Kisses', 2019, 'https://upload.wikimedia.org/wikipedia/en/c/c3/Anitta_-_Kisses.png', (SELECT id_artista FROM artistas WHERE nome_artista = 'Anitta')),
('Transa', 1972, 'https://upload.wikimedia.org/wikipedia/pt/2/21/Capa_de_Transa.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Caetano Veloso')),
('Todos os Cantos, Vol. 1', 2019, 'https://upload.wikimedia.org/wikipedia/pt/b/b0/Todos_os_Cantos.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Marília Mendonça')),
('Clássico', 2016, 'https://upload.wikimedia.org/wikipedia/pt/b/b2/Capa_de_Cl%C3%A1ssico_%28%C3%A1lbum%29.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Chitãozinho & Xororó')),
('The Number of the Beast', 1982, 'https://upload.wikimedia.org/wikipedia/en/3/3a/IronMaiden_NumberOfBeast.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Iron Maiden')),
('Sobrevivendo no Inferno', 1997, 'https://upload.wikimedia.org/wikipedia/pt/a/a1/Sobrevivendo_no_Inferno.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Racionais MC''s')),
('To Pimp a Butterfly', 2015, 'https://upload.wikimedia.org/wikipedia/en/f/f6/Kendrick_Lamar_-_To_Pimp_a_Butterfly.png', (SELECT id_artista FROM artistas WHERE nome_artista = 'Kendrick Lamar')),
('Random Access Memories', 2013, 'https://upload.wikimedia.org/wikipedia/en/a/a7/Random_Access_Memories.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Daft Punk')),
('Love Yourself 結 ''Answer''', 2018, 'https://upload.wikimedia.org/wikipedia/en/7/75/Love_Yourself_Answer.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'BTS')),
('Exodus', 1977, 'https://upload.wikimedia.org/wikipedia/en/3/35/BobMarley-Exodus.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Bob Marley & The Wailers')),
('Acústico no Rio de Janeiro', 2012, 'https://upload.wikimedia.org/wikipedia/pt/3/30/Natiruts_Acustico_no_Rio.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Natiruts')),
('Dois', 1986, 'https://upload.wikimedia.org/wikipedia/pt/6/62/Legi%C3%A3o_Urbana_-_Dois.jpg', (SELECT id_artista FROM artistas WHERE nome_artista = 'Legião Urbana'));

select * from albuns;

INSERT INTO musicas (titulo_musica, duracao_segundos, genero_musical, id_album) VALUES
('Bohemian Rhapsody', 355, 'Rock', (SELECT id_album FROM albuns WHERE titulo_album = 'A Night at the Opera')),
('Love of My Life', 219, 'Balada', (SELECT id_album FROM albuns WHERE titulo_album = 'A Night at the Opera')),
('Smells Like Teen Spirit', 301, 'Grunge', (SELECT id_album FROM albuns WHERE titulo_album = 'Nevermind')),
('Come as You Are', 219, 'Grunge', (SELECT id_album FROM albuns WHERE titulo_album = 'Nevermind')),
('Lithium', 257, 'Grunge', (SELECT id_album FROM albuns WHERE titulo_album = 'Nevermind')),
('Poquito', 186, 'Pop', (SELECT id_album FROM albuns WHERE titulo_album = 'Kisses')),
('Onda Diferente', 160, 'Funk', (SELECT id_album FROM albuns WHERE titulo_album = 'Kisses')),
('You Don''t Know Me', 229, 'MPB', (SELECT id_album FROM albuns WHERE titulo_album = 'Transa')),
('Nine Out of Ten', 297, 'MPB', (SELECT id_album FROM albuns WHERE titulo_album = 'Transa')),
('Ciumeira', 212, 'Sertanejo', (SELECT id_album FROM albuns WHERE titulo_album = 'Todos os Cantos, Vol. 1')),
('Bebaça', 174, 'Sertanejo', (SELECT id_album FROM albuns WHERE titulo_album = 'Todos os Cantos, Vol. 1')),
('Supera', 167, 'Sertanejo', (SELECT id_album FROM albuns WHERE titulo_album = 'Todos os Cantos, Vol. 1')),
('Evidências', 279, 'Sertanejo', (SELECT id_album FROM albuns WHERE titulo_album = 'Clássico')),
('Fio de Cabelo', 182, 'Sertanejo', (SELECT id_album FROM albuns WHERE titulo_album = 'Clássico')),
('The Number of the Beast', 291, 'Heavy Metal', (SELECT id_album FROM albuns WHERE titulo_album = 'The Number of the Beast')),
('Run to the Hills', 234, 'Heavy Metal', (SELECT id_album FROM albuns WHERE titulo_album = 'The Number of the Beast')),
('Diário de um Detento', 452, 'Rap', (SELECT id_album FROM albuns WHERE titulo_album = 'Sobrevivendo no Inferno')),
('Fórmula Mágica da Paz', 535, 'Rap', (SELECT id_album FROM albuns WHERE titulo_album = 'Sobrevivendo no Inferno')),
('King Kunta', 234, 'Hip Hop', (SELECT id_album FROM albuns WHERE titulo_album = 'To Pimp a Butterfly')),
('Alright', 219, 'Hip Hop', (SELECT id_album FROM albuns WHERE titulo_album = 'To Pimp a Butterfly')),
('Get Lucky', 369, 'Eletrônica', (SELECT id_album FROM albuns WHERE titulo_album = 'Random Access Memories')),
('Instant Crush', 337, 'Eletrônica', (SELECT id_album FROM albuns WHERE titulo_album = 'Random Access Memories')),
('IDOL', 223, 'K-Pop', (SELECT id_album FROM albuns WHERE titulo_album = 'Love Yourself 結 ''Answer''')),
('DNA', 223, 'K-Pop', (SELECT id_album FROM albuns WHERE titulo_album = 'Love Yourself 結 ''Answer''')),
('Jamming', 211, 'Reggae', (SELECT id_album FROM albuns WHERE titulo_album = 'Exodus')),
('Three Little Birds', 180, 'Reggae', (SELECT id_album FROM albuns WHERE titulo_album = 'Exodus')),
('Quero Ser Feliz Também', 234, 'Reggae', (SELECT id_album FROM albuns WHERE titulo_album = 'Acústico no Rio de Janeiro')),
('Andei Só', 260, 'Reggae', (SELECT id_album FROM albuns WHERE titulo_album = 'Acústico no Rio de Janeiro')),
('Tempo Perdido', 303, 'Rock Nacional', (SELECT id_album FROM albuns WHERE titulo_album = 'Dois')),
('Índios', 256, 'Rock Nacional', (SELECT id_album FROM albuns WHERE titulo_album = 'Dois'));

select * from musicas;

INSERT INTO usuarios (nome_usuario, email, data_nascimento) VALUES
('Ana Silva', 'ana.silva.ecletica@email.com', '1995-08-20'),
('Bruno Costa', 'bruno.costa.rock@email.com', '1988-03-15'),
('Carla Oliveira', 'carla.oliveira.pop@email.com', '2001-11-10'),
('Daniel Martins', 'daniel.martins.sertanejo@email.com', '1999-06-30'),
('Felipe Gomes', 'felipe.gomes.rap@email.com', '1998-07-22'),
('Gabriela Lima', 'gabriela.lima.kpop@email.com', '2005-01-30'),
('Helena Rocha', 'helena.rocha.alt@email.com', '1992-12-05'),
('Igor Santos', 'igor.santos.reggae@email.com', '1994-04-18');

select * from usuarios;

INSERT INTO historico_reproducao (id_usuario, id_musica, data_hora_reproducao) VALUES
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Ana Silva'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Bohemian Rhapsody'), '2024-10-26 20:15:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Ana Silva'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Ciumeira'), '2024-10-26 20:21:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Ana Silva'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Get Lucky'), '2024-10-27 09:30:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Ana Silva'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Tempo Perdido'), '2024-10-27 18:45:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Bruno Costa'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Smells Like Teen Spirit'), '2024-10-25 22:10:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Bruno Costa'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'The Number of the Beast'), '2024-10-26 23:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Bruno Costa'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Run to the Hills'), '2024-10-26 23:05:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Bruno Costa'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Índios'), '2024-10-28 11:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Carla Oliveira'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Poquito'), '2024-10-27 11:05:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Carla Oliveira'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'You Don''t Know Me'), '2024-10-27 21:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Carla Oliveira'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Love of My Life'), '2024-10-27 21:04:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Daniel Martins'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Ciumeira'), '2024-10-26 10:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Daniel Martins'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Evidências'), '2024-10-27 19:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Daniel Martins'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Fio de Cabelo'), '2024-10-27 19:05:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Daniel Martins'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Ciumeira'), '2024-10-28 08:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Diário de um Detento'), '2024-10-27 22:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Fórmula Mágica da Paz'), '2024-10-27 22:08:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'King Kunta'), '2024-10-28 14:20:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Alright'), '2024-10-28 14:24:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Diário de um Detento'), '2024-10-28 23:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Gabriela Lima'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'IDOL'), '2024-10-28 16:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Gabriela Lima'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'DNA'), '2024-10-28 16:04:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Gabriela Lima'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'IDOL'), '2024-10-28 16:08:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Gabriela Lima'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'DNA'), '2024-10-28 16:12:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Helena Rocha'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Get Lucky'), '2024-10-26 18:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Helena Rocha'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Instant Crush'), '2024-10-26 18:06:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Helena Rocha'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'You Don''t Know Me'), '2024-10-27 10:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Igor Santos'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Jamming'), '2024-10-27 17:30:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Igor Santos'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Three Little Birds'), '2024-10-27 17:34:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Igor Santos'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Quero Ser Feliz Também'), '2024-10-28 12:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Igor Santos'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Andei Só'), '2024-10-28 12:04:00');

-- Novas inserções de dados para criar perfis de audição mais realísticos

-- Dando mais volume de Rock/Metal ao Bruno Costa (ID 2)
INSERT INTO historico_reproducao (id_usuario, id_musica, data_hora_reproducao) VALUES
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Bruno Costa'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Smells Like Teen Spirit'), '2024-10-29 19:30:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Bruno Costa'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Smells Like Teen Spirit'), '2024-10-29 19:35:01'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Bruno Costa'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Lithium'), '2024-10-29 20:10:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Bruno Costa'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'The Number of the Beast'), '2024-10-30 08:45:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Bruno Costa'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'The Number of the Beast'), '2024-10-30 08:50:00');

-- Dando mais volume de Pop/MPB à Carla Oliveira (ID 3) - CORRIGIDO
INSERT INTO historico_reproducao (id_usuario, id_musica, data_hora_reproducao) VALUES
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Carla Oliveira'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Poquito'), '2024-10-28 15:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Carla Oliveira'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Onda Diferente'), '2024-10-28 15:05:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Carla Oliveira'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'You Don''t Know Me'), '2024-10-29 09:15:00'),
-- Reprodução de 'Love of My Life' do Queen
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Carla Oliveira'), 
 (SELECT m.id_musica FROM musicas m JOIN albuns al ON m.id_album = al.id_album JOIN artistas a ON al.id_artista = a.id_artista WHERE m.titulo_musica = 'Love of My Life' AND a.nome_artista = 'Queen'), 
 '2024-10-29 09:20:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Carla Oliveira'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Poquito'), '2024-10-29 14:00:00');

-- Dando mais volume de Sertanejo ao Daniel Martins (ID 4), com alta repetição de Marília Mendonça
INSERT INTO historico_reproducao (id_usuario, id_musica, data_hora_reproducao) VALUES
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Daniel Martins'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Supera'), '2024-10-28 19:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Daniel Martins'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Ciumeira'), '2024-10-28 19:03:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Daniel Martins'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Evidências'), '2024-10-28 20:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Daniel Martins'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Supera'), '2024-10-29 10:15:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Daniel Martins'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Supera'), '2024-10-29 10:18:00');

-- Dando mais volume de Rap/Hip Hop ao Felipe Gomes (ID 5)
INSERT INTO historico_reproducao (id_usuario, id_musica, data_hora_reproducao) VALUES
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Alright'), '2024-10-29 18:30:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'King Kunta'), '2024-10-29 18:34:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Diário de um Detento'), '2024-10-30 21:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Fórmula Mágica da Paz'), '2024-10-30 21:08:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Felipe Gomes'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Alright'), '2024-10-31 07:00:00');

-- Dando mais volume de K-Pop à Gabriela Lima (ID 6), com padrão de repetição extrema
INSERT INTO historico_reproducao (id_usuario, id_musica, data_hora_reproducao) VALUES
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Gabriela Lima'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'IDOL'), '2024-10-29 12:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Gabriela Lima'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'IDOL'), '2024-10-29 12:04:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Gabriela Lima'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'DNA'), '2024-10-29 12:08:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Gabriela Lima'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'IDOL'), '2024-10-29 13:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Gabriela Lima'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'IDOL'), '2024-10-29 13:04:00');

-- Dando mais volume de Eletrônica/MPB à Helena Rocha (ID 7)
INSERT INTO historico_reproducao (id_usuario, id_musica, data_hora_reproducao) VALUES
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Helena Rocha'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Get Lucky'), '2024-10-28 17:00:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Helena Rocha'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Instant Crush'), '2024-10-28 17:06:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Helena Rocha'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Nine Out of Ten'), '2024-10-29 11:30:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Helena Rocha'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'You Don''t Know Me'), '2024-10-29 11:35:00'),
((SELECT id_usuario FROM usuarios WHERE nome_usuario = 'Helena Rocha'), (SELECT id_musica FROM musicas WHERE titulo_musica = 'Get Lucky'), '2024-10-30 09:00:00');

select * from historico_reproducao;