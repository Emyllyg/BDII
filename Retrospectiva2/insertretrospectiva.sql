INSERT INTO Usuarios (nome_usuario, email, data_criacao) VALUES
('Alice Silva', 	 'alice.s@streamstats.com',   '2022-11-01'),
('Bruno Mendes', 	 'bruno.m@streamstats.com',   '2023-01-15'),
('Carlos Rocha', 	 'carlos.r@streamstats.com',  '2023-03-20'),
('Daniela Paz', 	 'dani.paz@streamstats.com',  '2023-05-10'),
('Eduardo Santos', 	 'edu.santos@streamstats.com','2023-07-01'),
('Fernanda Lima', 	 'fe.lima@streamstats.com',   '2023-08-12'),
('Gustavo Oliveira', 'guto.o@streamstats.com', 	  '2023-10-05'),
('Helena Costa', 	 'helenac@streamstats.com',   '2024-01-01'),
('Igor Pereira', 	 'igor.p@streamstats.com',    '2024-02-29'),
('Juliana Alves', 	 'jualves@streamstats.com',   '2024-04-10');

select * from usuarios;


INSERT INTO Artistas (nome_artista, nacionalidade) VALUES
('Anitta', 		 	'Brasil'),
('Jorge & Mateus', 	'Brasil'),
('Queen', 			'Reino Unido'),
('Billie Eilish', 	'EUA'),
('Marília Mendonça','Brasil'),
('Coldplay', 	    'Reino Unido'),
('Kendrick Lamar', 	'EUA'),
('Ludmilla', 		'Brasil'),
('The Weeknd', 		'Canadá'),         
('Harry Styles', 	'Reino Unido'),          
('Imagine Dragons', 'EUA'),            
('Adele', 			'Reino Unido'),      
('Lana Del Rey', 	'EUA'),            
('Maria Gadú', 		'Brasil'),               
('Ed Sheeran', 		'Reino Unido');    

select * from artistas;


INSERT INTO Musicas (titulo, artista_id, genero, duracao_segundos, data_lancamento) VALUES
('Envolver',            1, 'Pop',             180, 2021),
('Logo Eu', 		    2, 'Sertanejo',       195, 2012),
('Bohemian Rhapsody',   3, 'Rock',            355, 1975),
('WILDFLOWER',          4, 'Pop Alternativo', 194, 2024),
('Supera',              5, 'Sertanejo',       230, 2019),
('Yellow',              6, 'Rock',            266, 2000),
('HUMBLE.',             7, 'Hip Hop',         186, 2017),
('Favela Chegou',       8, 'Funk',            170, 2018),
('Blinding Lights',     9, 'Pop', 	          200, 2019),    
('As It Was',          10, 'Pop',             167, 2022),      
('Radioactive',        11, 'Pop Rock',        211, 2012),    
('Someone Like You',   12, 'Soul',            285, 2011),     
('Summertime Sadness', 13, 'Pop Barroco',     265, 2012),   
('Shimbalaiê',         14, 'MPB',             230, 2009),      
('Shape of You',       15, 'Pop',             233, 2017);    

select * from musicas;


INSERT INTO Podcasts (nome_podcast, categoria, apresentador) VALUES
('Mamilos', 	               'Sociedade e Notícias', 				 'Ju Wallauer e Cris Bartis'),
('NerdCast', 	               'Cultura Digital',      				 'Alexandre Ottoni e Deive Pazos'),
('Charla Podcast',             'Esportes e Recreação', 				 'Bruno Cantarelli e Beto Junior'),
('Durma Com Essa',             'Notícias',             				 'Redação Nexo Jornal'),
('TICARACATICAST',             'Artes e Entretenimento', 			 'Carioca e Marcos Léo'),
('Modus Operandi',             'Crimes Reais',           			 'Mabê e Carol Moreira'),
('DrauzioCast',                'Saúde e Bem-Estar',      			 'Dr. Drauzio Varella'),
('Projeto Humanos',            'Histórias Reais',        			 'Ivan Mizanzuk'),
('Um Milkshake Chamado Wanda', 'Cultura Pop',            			 'Phelipe Cruz, Marina Santa Helena e Samir Duarte'),
('A Mulher da Casa Abandonada','Crimes Reais',           			 'Chico Felitti'),
('Xadrez Verbal',              'Política e Relações Internacionais', 'Filipe Figueiredo e Matias Pinto'),
('Gente!',                     'Comportamento',                      'Gabriela Prioli e Thalita Rebouças'),
('Braincast',                  'Cultura Digital',        			 'Carlos Merigo e Equipe B9'),
('Deviante',                   'Ciência e História',     			 'Tarik Fernandes e Equipe'),
('O Assunto',                  'Notícias e Política',      			 'Renata Lo Prete');            

select * from podcasts;


INSERT INTO Episodios (podcast_id, titulo_episodio, duracao_segundos) VALUES
(1, 'O Futuro do Trabalho e a Geração Z',                  4500), 	-- Mamilos
(2, 'Nerdtech: A Revolução da IA no Audiovisual',          6120),	-- NerdCast
(3, 'Entrevista com o Craque Zico', 					   8520),	-- Charla Podcast
(4, 'O Dilema da Vacinação Infantil', 					   1080),	-- Durma Com Essa
(5, 'Convidado: Marcelo Adnet', 					       7900),	-- TICARACATICAST
(6, 'Serial Killers Nacionais - Caso: O Maníaco do Parque',4200),	-- Modus Operandi
(7, 'Os Mitos e Verdades do Jejum Intermitente', 		   1980),	-- DrauzioCast
(8, 'Temporada 4: O Caso Evandro - Ep. 01',                5400),	-- Projeto Humanos
(9, 'A Cultura Drag e o Sucesso de RuPaul',                4800),	-- Um Milkshake Chamado Wanda
(10, 'O Cativeiro e o Passado de Maria de Fátima', 		   3120),	-- A Mulher da Casa Abandonada
(11, 'Análise da Guerra na Ucrânia - Atualização Semanal', 5700),	-- Xadrez Verbal
(12, 'Lições de Vida e Carreira com Paulo Vieira',         3960),	-- Gente!
(13, 'O Boom do "Old Money Aesthetic"',                    4380),	-- Braincast
(14, 'Fronteiras da Ciência: Explorando Marte',            3420),	-- Deviante
(15, 'Inflação e a Mesa do Brasileiro em 2024',            1440);	-- O Assunto   


select * from episodios;


INSERT INTO HistoricoReproducao (usuario_id, data_hora, tipo_midia, midia_id, duracao_segundos, ano_referencia) VALUES
-- Usuario 1 (Alice Silva) 
(1, '2024-01-10 10:00:00', 'M', 1, 180, 2024),    -- Envolver  
(1, '2024-01-10 16:30:40', 'M', 1, 180, 2024),    -- Envolver - REPETIÇÃO
(1, '2024-03-18 10:37:40', 'M', 1, 180, 2024),    -- Envolver - REPETIÇÃO
(1, '2024-03-28 10:37:40', 'M', 1, 180, 2024),    -- Envolver - REPETIÇÃO
(1, '2024-03-28 19:09:40', 'M', 1, 180, 2024),    -- Envolver - REPETIÇÃO
(1, '2024-01-10 11:45:30', 'M', 13, 256, 2024),   -- Summertime Sadness 
(1, '2024-02-17 13:45:30', 'M', 13, 256, 2024),   -- Summertime Sadness - REPETIÇÃO
(1, '2024-07-08 13:45:30', 'M', 13, 256, 2024),   -- Summertime Sadness - REPETIÇÃO
(1, '2024-08-08 13:00:30', 'M', 13, 256, 2024),   -- Summertime Sadness - REPETIÇÃO
(1, '2024-02-15 14:05:15', 'M', 4, 167, 2024),   -- WILDFLOWER
(1, '2024-01-10 12:45:15', 'M', 4, 167, 2024),   -- WILDFLOWER - REPETIÇÃO
(1, '2024-02-15 13:15:15', 'M', 4, 167, 2024),   -- WILDFLOWER - REPETIÇÃO
(1, '2024-01-10 09:12:00', 'M', 2, 195, 2024),    --  Logo Eu
(1, '2024-03-05 19:22:00', 'M', 2, 195, 2024),    --  Logo Eu - - REPETIÇÃO
(1, '2024-01-10 20:34:00', 'M', 10, 195, 2024),    --  As It Was
(1, '2024-12-21 12:40:00', 'P', 15, 1440, 2024),  -- O Assunto
(1, '2024-03-05 12:40:00', 'P', 5, 7900, 2024),   -- TICARACATICAST
(1, '2024-11-15 08:40:00', 'P', 5, 7900, 2024),   -- TICARACATICAST - REPETIÇÃO
(1, '2024-12-30 19:25:00', 'P', 11,5700, 2024),   -- Xadrez Verbal  
(1, '2024-09-20 22:35:00', 'P', 7, 1980, 2024),   -- DrauzioCast 
(1, '2024-10-23 11:10:00', 'P', 7, 1980, 2024),   -- DrauzioCast - REPETIÇÃO
(1, '2024-05-18 15:02:00', 'P', 7, 1980, 2024),   -- DrauzioCast - REPETIÇÃO

-- Usuario 2 (Bruno Mendes) 
(2, '2024-02-03 12:15:00', 'M', 3, 300, 2024),     -- Bohemian Rhapsody
(2, '2024-06-09 10:05:00', 'M', 3, 300, 2024),     -- Bohemian Rhapsody - REPETIÇÃO
(2, '2024-12-25 10:05:00', 'M', 3, 300, 2024),     -- Bohemian Rhapsody - REPETIÇÃO
(2, '2024-04-19 22:15:00', 'M', 3, 300, 2024),     -- Bohemian Rhapsody - REPETIÇÃO
(2, '2024-04-29 12:16:00', 'M', 3, 300, 2024),     -- Bohemian Rhapsody - REPETIÇÃO
(2, '2024-01-25 17:30:30', 'M', 6, 260, 2024),     -- Yellow 
(2, '2024-10-05 07:50:30', 'M', 6, 260, 2024),     -- Yellow - REPETIÇÃO
(2, '2024-11-13 16:52:30', 'M', 6, 260, 2024),     -- Yellow - REPETIÇÃO 
(2, '2024-03-03 16:52:30', 'M', 6, 260, 2024),     -- Yellow - REPETIÇÃO 
(2, '2024-02-03 18:03:00', 'M', 1, 180, 2024),     -- Envolver
(2, '2024-02-03 21:45:10', 'M', 11, 211, 2024),    -- Radioactive
(2, '2024-07-28 21:45:10', 'M', 11, 211, 2024),    -- Radioactive - REPETIÇÃO 
(2, '2024-12-02 21:45:10', 'M', 11, 211, 2024),    -- Radioactive - REPETIÇÃO 
(2, '2024-01-25 10:20:00', 'M', 8, 170, 2024),     -- Favela Chegou
(2, '2024-02-03 13:10:00', 'M', 8, 170, 2024),     -- Favela Chegou - REPETIÇÃO 
(2, '2024-04-10 14:20:00', 'P', 2, 6120, 2024),    -- NerdCast 
(2, '2024-05-22 15:05:00', 'P', 2, 6120, 2024),    -- NerdCast - REPETIÇÃO
(2, '2024-11-02 10:05:00', 'P', 2, 6120, 2024),    -- NerdCast - REPETIÇÃO
(2, '2024-09-01 19:40:00', 'P', 6, 4200, 2024),    -- Modus Operandi
(2, '2024-04-01 23:17:00', 'P', 12, 3960, 2024),   -- Gente!
(2, '2024-05-24 21:00:00', 'P', 12, 3960, 2024),   -- Gente! - REPETIÇÃO
(2, '2024-05-22 13:10:00', 'P', 8, 5400, 2024),    -- Projeto Humanos

-- Usuario 3 (Carlos Rocha) 
(3, '2024-01-05 13:10:00', 'M', 13, 260, 2024),   -- Summertime Sadness
(3, '2024-04-15 13:10:00', 'M', 13, 260, 2024),   -- Summertime Sadness - REPETIÇÃO
(3, '2024-01-05 16:15:00', 'M', 1, 180, 2024),    -- Envolver
(3, '2024-11-08 16:15:00', 'M', 1, 180, 2024),    -- Envolver - REPETIÇÃO
(3, '2024-01-25 16:15:00', 'M', 1, 180, 2024),    -- Envolver - REPETIÇÃO
(3, '2024-01-05 19:40:00', 'M', 5, 220, 2024),    -- Supera 
(3, '2024-09-18 20:30:00', 'M', 5, 220, 2024),    -- Supera - REPETIÇÃO
(3, '2024-09-18 15:31:00', 'M', 5, 220, 2024),    -- Supera - REPETIÇÃO
(3, '2024-07-14 20:30:00', 'M', 5, 220, 2024),    -- Supera - REPETIÇÃO
(3, '2024-02-28 21:50:20', 'M', 10, 160, 2024),   -- As It Was 
(3, '2024-03-15 15:10:00', 'M', 10, 167, 2024),   -- As It Was - REPETIÇÃO
(3, '2024-01-05 11:08:00', 'M', 10, 167, 2024),   -- As It Was - REPETIÇÃO
(3, '2024-02-13 13:28:00', 'M', 10, 167, 2024),   -- As It Was - REPETIÇÃO
(3, '2024-11-27 21:18:00', 'M', 10, 167, 2024),   -- As It Was - REPETIÇÃO
(3, '2024-01-05 21:18:00', 'M', 9, 167, 2024),   --  Blinding Lights
(3, '2024-03-15 19:40:00', 'P', 3, 8520, 2024),   -- Charla Podcast
(3, '2024-08-23 13:58:00', 'P', 3, 8520, 2024),   -- Charla Podcast - REPETIÇÃO
(3, '2024-03-27 09:20:00', 'P', 3, 8520, 2024),   -- Charla Podcast - REPETIÇÃO
(3, '2024-04-05 08:15:00', 'P', 7, 1980, 2024),   -- DrauzioCast 
(3, '2024-04-05 18:32:00', 'P', 7, 1980, 2024),   -- DrauzioCast - REPETIÇÃO
(3, '2024-04-05 11:40:00', 'P', 13, 4380, 2024),  -- Braincast 
(3, '2024-05-08 14:15:00', 'P', 2, 6120, 2024),   -- NerdCast 
(3, '2024-05-08 17:10:00', 'P', 9, 4800, 2024),   -- Milkshake Chamado Wanda 

-- Usuario 4 (Daniela Paz)
(4, '2024-01-12 23:00:00', 'M', 2, 195, 2024),    -- Logo Eu
(4, '2024-02-01 08:40:00', 'M', 2, 195, 2024),    -- Logo Eu - REPETIÇÃO
(4, '2024-12-22 18:40:00', 'M', 2, 195, 2024),    -- Logo Eu - REPETIÇÃO
(4, '2024-02-01 11:30:30', 'M', 14, 230, 2024),   -- Shimbalaiê 
(4, '2024-07-21 13:41:30', 'M', 14, 230, 2024),   -- Shimbalaiê - REPETIÇÃO
(4, '2024-02-24 12:15:30', 'M', 14, 230, 2024),   -- Shimbalaiê - REPETIÇÃO
(4, '2024-02-10 10:17:30', 'M', 14, 230, 2024),   -- Shimbalaiê - REPETIÇÃO
(4, '2024-10-11 09:25:30', 'M', 14, 230, 2024),   -- Shimbalaiê - REPETIÇÃO  
(4, '2024-02-01 14:10:00', 'M', 4, 194, 2024),    -- WILDFLOWER
(4, '2024-10-11 14:09:00', 'M', 4, 194, 2024),    -- WILDFLOWER - REPETIÇÃO  
(4, '2024-02-01 14:09:00', 'M', 12, 194, 2024),    -- Someone Like You 
(4, '2024-02-01 18:35:00', 'M', 15, 233, 2024),   -- Shape of You
(4, '2024-10-11 17:59:00', 'M', 15, 233, 2024),   -- Shape of You - REPETIÇÃO 
(4, '2024-07-20 17:05:00', 'M', 15, 233, 2024),   -- Shape of You - REPETIÇÃO
(4, '2024-05-02 17:05:00', 'M', 15, 233, 2024),   -- Shape of You - REPETIÇÃO 
(4, '2024-04-10 09:05:00', 'P', 4, 1080, 2024),    -- Durma Com Essa 
(4, '2024-04-10 12:40:00', 'P', 8, 5400, 2024),    -- Projeto Humanos 
(4, '2024-05-01 14:18:00', 'P', 8, 5400, 2024),    -- Projeto Humanos - REPETIÇÃO
(4, '2024-09-12 20:10:00', 'P', 8, 5400, 2024),    -- Projeto Humanos - REPETIÇÃO
(4, '2024-05-01 16:30:00', 'P', 14,3420, 2024),   --  Deviante
(4, '2024-10-15 10:50:00', 'P', 10, 3120, 2024),   -- A Mulher da Casa Abandonada 
(4, '2024-05-15 16:57:00', 'P', 10, 3120, 2024),   -- A Mulher da Casa Abandonada - REPETIÇÃO 

-- Usuario 5 (Eduardo Santos) 
(5, '2024-01-20 09:40:00', 'M', 6, 266, 2024),    -- Yellow 
(5, '2024-08-26 09:40:00', 'M', 6, 266, 2024),    -- Yellow - REPETIÇÃO 
(5, '2024-02-05 09:40:00', 'M', 11, 266, 2024),    -- Radioactive
(5, '2024-02-05 12:50:00', 'M', 7, 186, 2024),    -- HUMBLE.
(5, '2024-12-25 10:30:00', 'M', 7, 186, 2024),    -- HUMBLE. - REPETIÇÃO
(5, '2024-05-14 12:50:00', 'M', 7, 186, 2024),    -- HUMBLE. - REPETIÇÃO
(5, '2024-02-05 15:20:00', 'M', 9, 200, 2024),    -- Blinding Lights 
(5, '2024-03-11 07:15:00', 'M', 9, 195, 2024),    -- Blinding Lights - REPETIÇÃO
(5, '2024-08-11 16:35:00', 'M', 9, 195, 2024),    -- Blinding Lights - REPETIÇÃO
(5, '2024-08-11 16:35:00', 'M', 9, 195, 2024),    -- Blinding Lights - REPETIÇÃO
(5, '2024-02-21 09:17:00', 'M', 9, 195, 2024),    -- Blinding Lights - REPETIÇÃO
(5, '2024-02-05 18:15:00', 'M', 3, 355, 2024),    -- Bohemian Rhapsody 
(5, '2024-12-10 22:05:00', 'M', 3, 355, 2024),    -- Bohemian Rhapsody - REPETIÇÃO
(5, '2024-09-12 15:25:00', 'M', 3, 355, 2024),    -- Bohemian Rhapsody - REPETIÇÃO
(5, '2024-02-05 09:13:00', 'M', 3, 355, 2024),    -- Bohemian Rhapsody - REPETIÇÃO
(5, '2024-03-11 13:10:00', 'P', 5, 7900, 2024),    -- TICARACATICAST
(5, '2024-04-07 16:45:00', 'P', 9, 4800, 2024),    -- Milkshake Chamado Wanda
(5, '2024-04-07 13:56:00', 'P', 9, 4800, 2024),    -- Milkshake Chamado Wanda - REPETIÇÃO
(5, '2024-04-07 20:05:00', 'P', 15,1440, 2024),   -- O Assunto 
(5, '2024-05-12 11:20:00', 'P', 4, 1080, 2024),    -- Durma Com Essa
(5, '2024-02-01 19:00:00', 'P', 4, 1080, 2024),    -- Durma Com Essa - REPETIÇÃO
(5, '2024-12-13 13:20:00', 'P', 4, 1080, 2024),    -- Durma Com Essa - REPETIÇÃO
(5, '2024-05-12 14:30:00', 'P', 11,5700, 2024),   -- Xadrez Verbal 

-- Usuario 6 (Fernanda Lima)
(6, '2024-01-18 10:15:00', 'M', 11, 211, 2024),   -- Radioactive 
(6, '2024-11-29 14:39:00', 'M', 11, 211, 2024),   -- Radioactive - REPETIÇÃO
(6, '2024-09-23 03:25:00', 'M', 11, 211, 2024),   -- Radioactive - REPETIÇÃO
(6, '2024-09-23 13:09:00', 'M', 11, 211, 2024),   -- Radioactive - REPETIÇÃO
(6, '2024-05-20 03:25:00', 'M', 11, 211, 2024),   -- Radioactive - REPETIÇÃO
(6, '2024-01-18 13:45:00', 'M', 14, 230, 2024),   -- Shimbalaiê
(6, '2024-01-18 13:45:00', 'M', 14, 230, 2024),   -- Shimbalaiê - REPETIÇÃO 
(6, '2024-11-21 21:04:00', 'M', 14, 230, 2024),   -- Shimbalaiê - REPETIÇÃO 
(6, '2024-01-18 16:50:00', 'M', 1, 180, 2024),    -- Envolver
(6, '2024-02-12 11:20:00', 'M', 1, 180, 2024),    -- Envolver - REPETIÇÃO 
(6, '2024-01-18 20:45:00', 'M', 13, 265, 2024),   -- Summertime Sadness
(6, '2024-02-01 23:08:00', 'M', 13, 265, 2024),   -- Summertime Sadness - REPETIÇÃO 
(6, '2024-01-18 21:05:00', 'M', 13, 265, 2024),   -- Summertime Sadness - REPETIÇÃO 
(6, '2024-01-18 13:35:00', 'M', 13, 265, 2024),   -- Summertime Sadness - REPETIÇÃO 
(6, '2024-02-12 11:15:00', 'M', 7, 225, 2024),    -- HUMBLE.
(6, '2024-03-20 17:10:00', 'P', 6, 4200, 2024),   -- Modus Operandi 
(6, '2024-04-14 19:08:00', 'P', 10,3120, 2024),   -- A Mulher da Casa Abandonada 
(6, '2024-07-29 16:32:00', 'P', 10,3120, 2024),   -- A Mulher da Casa Abandonada - REPETIÇÃO
(6, '2024-09-13 19:24:00', 'P', 10,3120, 2024),   -- A Mulher da Casa Abandonada - REPETIÇÃO
(6, '2024-04-14 12:55:00', 'P', 1, 4500, 2024),   -- Mamilos
(6, '2024-06-25 21:45:00', 'P', 1, 4500, 2024),   -- Mamilos - REPETIÇÃO
(6, '2024-05-09 16:15:00', 'P', 12,3960, 2024),   -- Gente! 
(6, '2024-05-09 20:10:00', 'P', 7, 1980, 2024),   -- DrauzioCast

-- Usuario 7 (Gustavo Oliveira) 
(7, '2024-01-30 14:10:00', 'M', 10, 167, 2024),   -- As It Was 
(7, '2024-01-30 20:20:00', 'M', 8, 170, 2024),    -- Favela Chegou
(7, '2024-10-08 15:30:00', 'M', 8, 170, 2024),    -- Favela Chegou - REPETIÇÃO
(7, '2024-07-16 17:20:00', 'M', 8, 170, 2024),    -- Favela Chegou - REPETIÇÃO
(7, '2024-09-26 12:22:00', 'M', 8, 170, 2024),    -- Favela Chegou - REPETIÇÃO
(7, '2024-02-22 09:50:00', 'M', 2, 195, 2024),    -- Logo Eu 
(7, '2024-05-15 09:50:00', 'M', 2, 195, 2024),    -- Logo Eu - REPETIÇÃO
(7, '2024-01-30 07:22:00', 'M', 2, 195, 2024),    -- Logo Eu - REPETIÇÃO
(7, '2024-05-15 19:50:00', 'M', 2, 195, 2024),    -- Logo Eu - REPETIÇÃO
(7, '2024-05-15 15:10:00', 'M', 2, 195, 2024),    -- Logo Eu - REPETIÇÃO 
(7, '2024-02-22 12:10:00', 'M', 4, 194, 2024),    -- WILDFLOWER
(7, '2024-02-22 21:20:00', 'M', 4, 194, 2024),    -- WILDFLOWER - REPETIÇÃO
(7, '2024-01-30 07:35:00', 'M', 12, 285, 2024),   -- Someone Like You
(7, '2024-01-30 17:25:00', 'M', 12, 285, 2024),   -- Someone Like You - REPETIÇÃO 
(7, '2024-04-20 07:35:00', 'M', 12, 285, 2024),   -- Someone Like You - REPETIÇÃO 
(7, '2024-03-08 10:40:00', 'P', 13,4380, 2024),   -- Braincast
(7, '2024-04-19 13:45:00', 'P', 3, 8520, 2024),   -- Charla Podcast 
(7, '2024-05-25 07:30:00', 'P', 3, 8520, 2024),   -- Charla Podcast - REPETIÇÃO
(7, '2024-03-19 16:24:00', 'P', 8, 5400, 2024),   -- Projeto Humanos
(7, '2024-09-21 12:40:00', 'P', 8, 5400, 2024),   -- Projeto Humanos - REPETIÇÃO
(7, '2024-04-27 18:04:00', 'P', 8, 5400, 2024),   -- Projeto Humanos - REPETIÇÃO
(7, '2024-05-25 10:00:00', 'P', 15, 1440, 2024),  -- O Assunto 

-- Usuario 8 (Helena Costa) 
(8, '2024-01-01 18:10:00', 'M', 15, 233, 2024),   -- Shape of You
(8, '2024-01-01 11:17:00', 'M', 15, 233, 2024),   -- Shape of You - REPETIÇÃO 
(8, '2024-02-09 17:11:00', 'M', 15, 233, 2024),   -- Shape of You - REPETIÇÃO  
(8, '2024-02-09 20:45:00', 'M', 13, 265, 2024),   -- Summertime Sadness 
(8, '2024-11-19 13:00:00', 'M', 13, 265, 2024),   -- Summertime Sadness - REPETIÇÃO
(8, '2024-02-09 13:10:00', 'M', 7, 265, 2024),    -- HUMBLE.
(8, '2024-02-09 10:30:00', 'M', 6, 266, 2024),    -- Yellow 
(8, '2024-03-14 09:30:00', 'M', 6, 260, 2024),    -- Yellow - REPETIÇÃO
(8, '2024-09-23 15:55:00', 'M', 6, 260, 2024),    -- Yellow - REPETIÇÃO
(8, '2024-02-13 12:45:00', 'M', 6, 260, 2024),    -- Yellow - REPETIÇÃO
(8, '2024-09-23 21:05:00', 'M', 6, 260, 2024),    -- Yellow - REPETIÇÃO
(8, '2024-07-29 19:11:00', 'M', 11, 211, 2024),   -- Radioactive 
(8, '2024-02-09 13:00:00', 'M', 11, 211, 2024),   -- Radioactive - REPETIÇÃO
(8, '2024-02-09 12:20:00', 'M', 11, 211, 2024),   -- Radioactive - REPETIÇÃO
(8, '2024-09-09 20:10:07', 'M', 11, 211, 2024),   -- Radioactive - REPETIÇÃO 
(8, '2024-03-14 20:30:00', 'P', 4,1080, 2024),    -- Durma Com Essa
(8, '2024-04-28 16:45:00', 'P', 11,5700, 2024),   -- Xadrez Verbal 
(8, '2024-04-28 19:00:00', 'P', 5,7900, 2024),    -- TICARACATICAST 
(8, '2024-05-02 12:15:00', 'P', 9,4800, 2024),    -- Milkshake Chamado Wanda
(8, '2024-07-06 12:15:00', 'P', 9,4800, 2024),    -- Milkshake Chamado Wanda - REPETIÇÃO
(8, '2024-05-02 15:05:00', 'P', 14,3420, 2024),   -- Deviante
(8, '2024-10-18 13:18:00', 'P', 14,3420, 2024),   -- Deviante - REPETIÇÃO
(8, '2024-09-04 08:50:00', 'P', 14,3420, 2024),   -- Deviante - REPETIÇÃO

-- Usuario 9 (Igor Pereira) 
(9, '2024-01-07 08:20:00', 'M', 3, 355, 2024),    -- Bohemian Rhapsody
(9, '2024-09-21 17:30:00', 'M', 3, 355, 2024),    -- Bohemian Rhapsody - REPETIÇÃO
(9, '2024-08-01 08:20:00', 'M', 3, 355, 2024),    -- Bohemian Rhapsody - REPETIÇÃO
(9, '2024-12-02 08:20:00', 'M', 3, 355, 2024),    -- Bohemian Rhapsody - REPETIÇÃO
(9, '2024-01-07 11:10:00', 'M', 5, 230, 2024),    -- Supera
(9, '2024-06-19 11:10:00', 'M', 5, 230, 2024),    -- Supera - REPETIÇÃO
(9, '2024-11-05 11:10:00', 'M', 5, 230, 2024),    -- Supera - REPETIÇÃO
(9, '2024-03-06 14:00:00', 'M', 7, 186, 2024),    -- HUMBLE.
(9, '2024-01-07 14:00:00', 'M', 7, 186, 2024),    -- HUMBLE. - REPETIÇÃO
(9, '2024-06-18 11:20:00', 'M', 7, 186, 2024),    -- HUMBLE. - REPETIÇÃO
(9, '2024-01-07 14:00:00', 'M', 7, 186, 2024),    -- HUMBLE. - REPETIÇÃO
(9, '2024-09-21 14:00:00', 'M', 7, 186, 2024),    -- HUMBLE. - REPETIÇÃO
(9, '2024-02-19 17:30:00', 'M', 14, 230, 2024),   -- Shimbalaiê
(9, '2024-02-19 17:30:00', 'M', 14, 230, 2024),   -- Shimbalaiê- REPETIÇÃO 
(9, '2024-03-06 09:00:00', 'M', 8, 170, 2024),    -- Favela Chegou 
(9, '2024-03-06 18:00:00', 'P', 6,4200, 2024),    -- Modus Operandi
(9, '2024-09-23 11:40:00', 'P', 6,4200, 2024),    -- Modus Operandi - REPETIÇÃO
(9, '2024-03-06 22:08:00', 'P', 6,4200, 2024),    -- Modus Operandi - REPETIÇÃO
(9, '2024-04-04 08:30:00', 'P', 12,3960, 2024),   -- Gente!
(9, '2024-05-10 17:00:00', 'P', 12,3960, 2024),   -- Gente! - REPETIÇÃO
(9, '2024-04-04 11:10:00', 'P', 7,1980, 2024),    -- DrauzioCast 
(9, '2024-05-10 14:00:00', 'P', 10,3120, 2024),   -- A Mulher da Casa Abandonada

-- Usuario 10 (Juliana Alves) 
(10, '2024-01-28 11:45:00', 'M', 10, 167, 2024),  -- As It Was
(10, '2024-09-21 13:55:00', 'M', 10, 167, 2024),  -- As It Was - REPETIÇÃO
(10, '2024-01-28 14:30:00', 'M', 15, 233, 2024),  -- Shape of You
(10, '2024-08-23 20:15:00', 'M', 15, 233, 2024),  -- Shape of You - REPETIÇÃO
(10, '2024-07-24 22:01:00', 'M', 15, 233, 2024),  -- Shape of You - REPETIÇÃO
(10, '2024-08-23 15:15:00', 'M', 15, 233, 2024),  -- Shape of You - REPETIÇÃO
(10, '2024-01-28 17:00:00', 'M', 1, 180, 2024),   -- Envolver
(10, '2024-02-20 20:20:00', 'M', 12, 285, 2024),  -- Someone Like You
(10, '2024-07-06 12:00:00', 'M', 12, 285, 2024),  -- Someone Like You - REPETIÇÃO 
(10, '2024-10-25 17:12:00', 'M', 12, 285, 2024),  -- Someone Like You - REPETIÇÃO
(10, '2024-01-28 10:20:00', 'M', 12, 285, 2024),  -- Someone Like You - REPETIÇÃO
(10, '2024-10-25 21:32:00', 'M', 12, 285, 2024),  -- Someone Like You - REPETIÇÃO
(10, '2024-03-01 10:15:00', 'M', 2, 195, 2024),   -- Logo Eu
(10, '2024-01-28 09:43:00', 'M', 2, 195, 2024),   -- Logo Eu - REPETIÇÃO
(10, '2024-03-01 07:05:00', 'M', 2, 195, 2024),   -- Logo Eu - REPETIÇÃO
(10, '2024-03-01 15:00:00', 'P', 1,4500, 2024),   -- Mamilos 
(10, '2024-05-20 17:30:00', 'P', 1,4500, 2024),   -- Mamilos - REPETIÇÃO 
(10, '2024-04-09 11:30:00', 'P', 15,1440, 2024),  -- O Assunto 
(10, '2024-04-09 14:45:00', 'P', 2,6120, 2024),   -- NerdCast 
(10, '2024-06-14 09:34:00', 'P', 14,3420, 2024),  -- Deviante 
(10, '2024-03-20 23:10:00', 'P', 14,3420, 2024),  -- Deviante - REPETIÇÃO 
(10, '2024-05-09 18:09:00', 'P', 14,3420, 2024);  -- Deviante - REPETIÇÃO 

select * from HistoricoReproducao;
