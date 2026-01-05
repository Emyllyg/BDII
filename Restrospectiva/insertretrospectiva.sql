INSERT INTO Artista (nome, genero_principal, pais_origem) VALUES
('Brisa da Tarde', 'MPB', 'Brasil'),
('The Code Breakers', 'Rock Alternativo', 'Estados Unidos'),
('DJ Beat Drop', 'Eletrônica', 'Holanda');

select * from artista;


INSERT INTO Album (titulo, ano_lancamento, artista_id) VALUES
('Mar de Lembranças', 2023, 1), 
('Sons do Cerrado', 2024, 1), 
('Binary Sunrise', 2022, 2);

select * from album;


INSERT INTO Musica (titulo, duracao_segundos, genero_secundario, album_id, artista_principal_id) VALUES

('Onda Suave', 240, 'Bossa Nova', 1, 1),
('Pôr do Sol em Ipanema', 195, 'Samba-Canção', 1, 1),
('Aquarela da Saudade', 210, 'Jazz Fusion', 1, 1),

('Chapada Diamantina', 300, 'Regional', 2, 1),
('Caminhos de Goiás', 250, 'Folk', 2, 1),

('Electric Dreams', 280, 'Indie Rock', 3, 2),
('System Overload', 320, 'Post-Punk', 3, 2),

('Rhythm Factory', 220, 'House', NULL, 3);

select * from musica;


INSERT INTO Usuario (nome_usuario, nome_completo, email, data_cadastro) VALUES
('musicolouco', 'Ana Carolina Silva', 'ana.silva@email.com', '2024-01-15'),
('jovem_auditor', 'Bruno Mendes', 'bruno.mendes@email.com', '2024-03-01');

select * from usuario;


INSERT INTO Historico_Reproducao (usuario_id, musica_id, data_hora_reproducao, duracao_reproduzida_segundos) VALUES
-- Ana (usuario_id = 1)
(1, 1, '2025-09-30 10:05:00', 240), 
(1, 2, '2025-09-30 10:09:30', 195), 
(1, 1, '2025-09-30 15:20:00', 240), 
(1, 6, '2025-10-01 11:30:00', 280), 
(1, 8, '2025-10-01 14:00:00', 220), 

-- Bruno (usuario_id = 2)
(2, 6, '2025-10-01 19:10:00', 280), 
(2, 7, '2025-10-01 20:00:00', 320),
(2, 4, '2025-10-02 08:00:00', 150), 
(2, 7, '2025-10-02 09:00:00', 320);

select * from historico_Reproducao;