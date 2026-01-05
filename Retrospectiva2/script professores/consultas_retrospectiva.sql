-- Defina o ID do usuário para o qual a retrospectiva será gerada.
-- Altere o número '6' para ver a retrospectiva de outros usuários:
-- 1: Ana Silva (Eclética)
-- 2: Bruno Costa (Rock)
-- 3: Daniel Martins (Sertanejo)
-- 6: Gabriela Lima (K-Pop)
SET @id_usuario_retrospectiva = 3;

-- Consulta 1: O Tempo Total de Descobertas Musicais
-- Esta consulta calcula o total de minutos que o usuário passou ouvindo música. 
-- É um ótimo ponto de partida para impressionar.
-- Calcula o tempo total de audição em minutos para o usuário selecionado.
SELECT
    u.nome_usuario,
    ROUND(SUM(m.duracao_segundos) / 60) AS total_minutos_ouvidos
FROM historico_reproducao AS h
-- Junta com a tabela de músicas para obter a duração de cada faixa
JOIN musicas AS m ON h.id_musica = m.id_musica
-- Junta com a tabela de usuários para obter o nome
JOIN usuarios AS u ON h.id_usuario = u.id_usuario
WHERE h.id_usuario = @id_usuario_retrospectiva
GROUP BY u.nome_usuario;

-- O que ela faz: Soma a duração (em segundos) de todas as músicas que o usuário ouviu e divide por 60 para apresentar o resultado em minutos.

-- Consulta 2: Sua Trilha Sonora Principal (Top 5 Músicas)
-- Qual foi a música que não saiu do repeat? Esta consulta revela as 5 músicas mais tocadas pelo usuário.
-- Lista as 5 músicas mais ouvidas pelo usuário.
SELECT
    m.titulo_musica,
    a.nome_artista,
    COUNT(h.id_reproducao) AS numero_de_reproducoes
FROM historico_reproducao AS h
JOIN musicas AS m ON h.id_musica = m.id_musica
JOIN albuns AS al ON m.id_album = al.id_album
JOIN artistas AS a ON al.id_artista = a.id_artista
WHERE h.id_usuario = @id_usuario_retrospectiva
GROUP BY m.titulo_musica, a.nome_artista
ORDER BY numero_de_reproducoes DESC
LIMIT 5;

-- O que ela faz: Conta quantas vezes cada música aparece no histórico do usuário, agrupando por título e artista, e depois ordena o resultado para mostrar as mais tocadas no topo.

-- Consulta 3: Seus Artistas Mais Próximos (Top 5 Artistas)
-- Quais artistas definiram o ano musical do usuário?
-- Lista os 5 artistas mais ouvidos pelo usuário.
SELECT
    a.nome_artista,
    COUNT(h.id_reproducao) AS numero_de_reproducoes
FROM historico_reproducao AS h
-- Precisamos de múltiplos JOINs para conectar a reprodução ao artista
JOIN musicas AS m ON h.id_musica = m.id_musica
JOIN albuns AS al ON m.id_album = al.id_album
JOIN artistas AS a ON al.id_artista = a.id_artista
WHERE h.id_usuario = @id_usuario_retrospectiva
GROUP BY a.nome_artista
ORDER BY numero_de_reproducoes DESC
LIMIT 5;

-- O que ela faz: Similar à consulta anterior, mas agrupa as contagens pelo nome_artista, mostrando a popularidade de cada um na vida do ouvinte.

-- Consulta 4: Sua "Aura Sonora" (Top Gêneros Musicais)
-- Se o gosto musical do usuário fosse um mix de gêneros, quais seriam os ingredientes principais?

-- Mostra os gêneros musicais mais escutados pelo usuário.
SELECT
    m.genero_musical,
    COUNT(h.id_reproducao) AS numero_de_reproducoes,
    -- Calcula a porcentagem de cada gênero no total de reproduções do usuário
    ROUND((COUNT(h.id_reproducao) * 100.0) / (SELECT COUNT(*) FROM historico_reproducao WHERE id_usuario = @id_usuario_retrospectiva)) AS porcentagem
FROM historico_reproducao AS h
JOIN musicas AS m ON h.id_musica = m.id_musica
WHERE h.id_usuario = @id_usuario_retrospectiva
GROUP BY m.genero_musical
ORDER BY numero_de_reproducoes DESC;

-- O que ela faz: Agrupa todas as reproduções por genero_musical e as conta. A coluna de porcentagem adiciona um toque especial, mostrando o quão dominante cada gênero foi.

-- Consulta 5: Seu Espírito Aventureiro (Total de Músicas e Artistas Explorados)
-- O usuário é fiel a poucos artistas ou um explorador de novidades?

-- Conta quantas músicas e artistas distintos o usuário ouviu.
SELECT
    COUNT(DISTINCT m.id_musica) AS total_musicas_diferentes,
    COUNT(DISTINCT a.id_artista) AS total_artistas_diferentes
FROM historico_reproducao AS h
JOIN musicas AS m ON h.id_musica = m.id_musica
JOIN albuns AS al ON m.id_album = al.id_album
JOIN artistas AS a ON al.id_artista = a.id_artista
WHERE h.id_usuario = @id_usuario_retrospectiva;

-- O que ela faz: Usa a função COUNT(DISTINCT ...) para contar apenas uma vez cada música e cada artista diferente que o usuário ouviu.

-- Consulta 6 (Bônus): Você é o Fã Nº 1?
-- Esta é uma consulta mais avançada e muito legal para a demonstração. Primeiro, descobrimos o artista mais ouvido do nosso usuário. Em seguida, verificamos no banco de dados inteiro quem foi a pessoa que mais ouviu esse artista específico.

-- PASSO 1: Descobrir o artista mais ouvido do nosso usuário da retrospectiva.
SET @artista_favorito_id = (
    SELECT a.id_artista
    FROM historico_reproducao h
    JOIN musicas m ON h.id_musica = m.id_musica
    JOIN albuns al ON m.id_album = al.id_album
    JOIN artistas a ON al.id_artista = a.id_artista
    WHERE h.id_usuario = @id_usuario_retrospectiva
    GROUP BY a.id_artista
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-- PASSO 2: Agora, vamos ver o ranking de todos os fãs desse artista.
SELECT
    u.nome_usuario,
    a.nome_artista,
    COUNT(h.id_reproducao) AS reproducoes_do_artista
FROM historico_reproducao h
JOIN usuarios u ON h.id_usuario = u.id_usuario
JOIN musicas m ON h.id_musica = m.id_musica
JOIN albuns al ON m.id_album = al.id_album
JOIN artistas a ON al.id_artista = a.id_artista
WHERE a.id_artista = @artista_favorito_id
GROUP BY u.nome_usuario, a.nome_artista
ORDER BY reproducoes_do_artista DESC;
-- O que ela faz: A primeira parte é uma subconsulta que guarda o ID do artista mais ouvido. A segunda parte usa esse ID para filtrar o histórico de todos os usuários e criar um ranking. Assim, você pode dizer se o usuário da retrospectiva é ou não o fã número 1 daquele artista na plataforma!