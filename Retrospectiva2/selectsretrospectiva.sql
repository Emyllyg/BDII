-- Usuário escolhido: Alice Silva (id=1).

-- =================================================================================================
-- Total de Minutos Ouvidos no Ano e sua Porcentagem em Relação aos Outros Ouvintes:
-- Foi usado a porcentagem do Usuário 1 em relação ao total de minutos ouvidos por TODOS os 10 usuários 
-- para simular essa métrica.

-- Calcula o total de minutos ouvidos pelo Usuário 1 (Alice)
WITH TempoTotalUsuario AS ( SELECT CAST(SUM(duracao_segundos) / 60.0 AS DECIMAL(10, 2)) 
	AS minutos_usuario FROM HistoricoReproducao WHERE usuario_id = 1),
	TempoTotalGeral AS (
    -- Calcula o total de minutos ouvidos por TODOS os usuários (simulação do mundo)
    SELECT CAST(SUM(duracao_segundos) / 60.0 AS DECIMAL(10, 2)) AS minutos_geral
    FROM HistoricoReproducao) 
    SELECT TTU.minutos_usuario AS "Total de Minutos Ouvidos Durante o Ano",
    CAST((TTU.minutos_usuario / TTG.minutos_geral) * 100 AS DECIMAL(10, 2)) AS "Sua Porcentagem (%)"
	FROM TempoTotalUsuario TTU, TempoTotalGeral TTG;
-- =================================================================================================

-- O Dia que Mais Ouviu Músicas no Ano e Quantos Minutos:
SELECT DATE(data_hora) AS "Dia Mais Ouvido no Ano",
    CAST(SUM(duracao_segundos) / 60.0 AS DECIMAL(10, 2)) AS "Minutos Desse Dia"
	FROM HistoricoReproducao WHERE usuario_id = 1 AND tipo_midia = 'M' -- Focando apenas em MÚSICAS
	GROUP BY DATE(data_hora) ORDER BY "Minutos Desse Dia" DESC LIMIT 1;

-- =================================================================================================

-- Quantas Músicas Diferentes Você Ouviu no Ano:
-- Contamos o número de IDs de músicas únicos ouvidos.
-- DISTINCT midia_id: Garante que o banco de dados só considere cada valor de midia_id 
-- (o identificador da música) uma única vez, mesmo que ele apareça várias vezes na tabela.

SELECT COUNT(DISTINCT midia_id) AS "Total de Músicas Diferentes"
	FROM HistoricoReproducao WHERE usuario_id = 1 AND tipo_midia = 'M';
    
 -- =================================================================================================
 
-- Quantidade de Músicas Ouvidas Durante o Ano (incluindo as repetições):
 SELECT COUNT(midia_id) AS "Quantidade de Músicas Ouvidas Durante o Ano"
	FROM HistoricoReproducao WHERE usuario_id = 1 AND tipo_midia = 'M';
 
 -- =================================================================================================
 
-- Música Mais Ouvida do Ano:
-- Mostra o artista, quantas vezes foi ouvida, a porcentagem
-- usuário em relação a outros usuários que também ouviram 
-- essa música e a data da 1º reprodução.

WITH MusicaMaisOuvidaAlice AS (
    -- 1. Encontra a música mais ouvida pelo Usuário 1 (Alice) e seu total de reproduções
    SELECT H.midia_id AS musica_id_principal, M.titulo, A.nome_artista,
        COUNT(H.reproducao_id) AS reproducoes_alice
    FROM HistoricoReproducao H
    JOIN Musicas M ON H.midia_id = M.musica_id AND H.tipo_midia = 'M'
    JOIN Artistas A ON M.artista_id = A.artista_id
    WHERE H.usuario_id = 1
    GROUP BY H.midia_id, M.titulo, A.nome_artista
    ORDER BY reproducoes_alice DESC LIMIT 1)
SELECT MMA.titulo AS "Música Mais Ouvida", MMA.nome_artista AS "Artista", 
MMA.reproducoes_alice AS "Suas Reproduções",
    -- Adicionando a data da primeira reprodução
    (
        SELECT DATE(MIN(H_PRIMEIRA.data_hora))
        FROM HistoricoReproducao H_PRIMEIRA
        WHERE H_PRIMEIRA.midia_id = MMA.musica_id_principal
            AND H_PRIMEIRA.tipo_midia = 'M'
            AND H_PRIMEIRA.usuario_id = 1 -- Garantindo que é a primeira vez de Alice
    ) AS "Data da Primeira Reprodução",
    -- Calcula a porcentagem
    CAST((MMA.reproducoes_alice * 100.0) / (
            SELECT COUNT(H_GERAL.reproducao_id)
            FROM HistoricoReproducao H_GERAL
            WHERE H_GERAL.midia_id = MMA.musica_id_principal AND H_GERAL.tipo_midia = 'M'
        ) 
    AS DECIMAL(10, 2)) AS "Sua Porcentagem (%)" FROM MusicaMaisOuvidaAlice MMA;

-- =================================================================================================

--  Top 5 de Músicas Mais Ouvidas no Ano:
SELECT
    -- Cria a coluna de posição (1, 2, 3...)
    ROW_NUMBER() OVER (ORDER BY COUNT(H.reproducao_id) DESC) AS Ranking,
    M.titulo AS "Músicas mais Ouvidas",
    A.nome_artista AS "Artista"
	FROM HistoricoReproducao H
	JOIN Musicas M ON H.midia_id = M.musica_id AND H.tipo_midia = 'M'
	JOIN Artistas A ON M.artista_id = A.artista_id
	WHERE H.usuario_id = 1
	GROUP BY M.titulo, A.nome_artista
	ORDER BY Ranking 
    LIMIT 5;

-- =================================================================================================

--  Quantos Minutos Você Ouviu de Podcasts o Ano Todo:
SELECT CAST(SUM(duracao_segundos) / 60.0 AS DECIMAL(10, 2)) 
	AS "Total de Minutos Ouvindo Podcasts"
	FROM HistoricoReproducao
	WHERE usuario_id = 1 AND tipo_midia = 'P';

-- =================================================================================================

-- Tipos de Podcast Ouvidos (Categorias):
WITH ReproducoesPorCategoriaAlice AS (
    -- 1. Total de reproduções de Alice em cada categoria
    SELECT P.categoria, COUNT(H.reproducao_id) AS reproducoes_alice
    FROM HistoricoReproducao H
    JOIN Episodios E ON H.midia_id = E.episodio_id AND H.tipo_midia = 'P'
    JOIN Podcasts P ON E.podcast_id = P.podcast_id
    WHERE H.usuario_id = 1
    GROUP BY P.categoria
)
SELECT RPA.categoria AS "Tipo de Podcast Ouvidos",
    RPA.reproducoes_alice AS "Total de Reproduções",
    -- 2. Calcula e mostra a porcentagem (usando subconsulta escalar para o total geral)
    CAST((RPA.reproducoes_alice * 100.0) / (
            SELECT COUNT(H_GERAL.reproducao_id)
            FROM HistoricoReproducao H_GERAL
            JOIN Episodios E_GERAL ON H_GERAL.midia_id = E_GERAL.episodio_id AND H_GERAL.tipo_midia = 'P'
            JOIN Podcasts P_GERAL ON E_GERAL.podcast_id = P_GERAL.podcast_id
            WHERE P_GERAL.categoria = RPA.categoria -- Filtra pela categoria atual da linha de Alice
        ) 
    AS DECIMAL(10, 2)) AS "Sua Porcentagem (%)"
		FROM ReproducoesPorCategoriaAlice RPA
		ORDER BY RPA.reproducoes_alice DESC;
    
-- =================================================================================================

-- Top 3 Podcasts Mais Ouvidos:
SET @rank_num = 0;
-- Incrementa a variável para criar o ranking
SELECT(@rank_num := @rank_num + 1) AS Ranking, 
    T.nome_podcast AS "Podcasts mais Ouvidos"
	FROM
(
        -- Subconsulta para calcular a contagem de reproduções em ordem decrescente
        SELECT P.nome_podcast, COUNT(H.reproducao_id) AS total_episodios_ouvidos
        FROM HistoricoReproducao H
        JOIN Episodios E ON H.midia_id = E.episodio_id AND H.tipo_midia = 'P'
        JOIN Podcasts P ON E.podcast_id = P.podcast_id
        WHERE H.usuario_id = 1
        GROUP BY P.nome_podcast
        ORDER BY total_episodios_ouvidos DESC LIMIT 3
) AS T;

-- =================================================================================================

-- Jornada Musical (gêneros e artistas mais ouvidos em determinados meses):
-- foi selecionado os meses Janeiro, Março e Abril 
-- (os meses com maior atividade do usuário 1) para um resultado mais útil.

SELECT CASE MONTH(data_hora)
        WHEN 1 THEN 'Janeiro'
        WHEN 2 THEN 'Fevereiro'
        WHEN 3 THEN 'Março'
        ELSE 'Outros'
    END AS  Mês, M.genero AS "Gênero Mais Ouvido",   A.nome_artista AS "Artista Mais Ouvido"
	FROM HistoricoReproducao H
	JOIN Musicas M ON H.midia_id = M.musica_id AND H.tipo_midia = 'M'
	JOIN Artistas A ON M.artista_id = A.artista_id
	WHERE H.usuario_id = 1 AND MONTH(data_hora) IN (1, 2, 3) -- Filtrando os 3 meses
	GROUP BY Mês,M.genero, A.nome_artista ORDER BY Mês
	LIMIT 9; -- Limitamos para pegar os top em cada mês (3 por mês)
    
-- =================================================================================================

    
-- Artista que Mais Ouviu no Ano e Quantos Minutos Você Ouviu:
SELECT A.nome_artista as "Artista Mais Ouvido",
    CAST(SUM(H.duracao_segundos) / 60.0 AS DECIMAL(10, 2)) AS "Minutos Ouvidos"
	FROM HistoricoReproducao H
	JOIN Musicas M ON H.midia_id = M.musica_id AND H.tipo_midia = 'M'
	JOIN Artistas A ON M.artista_id = A.artista_id
	WHERE H.usuario_id = 1	GROUP BY A.nome_artista ORDER BY "Minutos Ouvidos" DESC
	LIMIT 1;
    
-- =================================================================================================     

-- Top 5 Artistas Mais Ouvidos:
-- ETAPA 1: (Opcional, mas recomendada se não for usar subconsulta)
-- Inicializa a variável de ranking
SET @rank_num = 0;

-- ETAPA 2: A consulta principal
SELECT (@rank_num := @rank_num + 1) AS Ranking, -- Incrementa a variável para criar o rank
    T.Artista
	FROM (-- Subconsulta para calcular a contagem de reproduções e ordenar
        SELECT A.nome_artista AS Artista,
            COUNT(HR.reproducao_id) AS Total_Reproducoes -- Métrica de ranking: Contagem
        FROM HistoricoReproducao HR
        JOIN Musicas M ON HR.midia_id = M.musica_id AND HR.tipo_midia = 'M'
        JOIN Artistas A ON M.artista_id = A.artista_id
        WHERE HR.usuario_id = 1     -- Filtra para o Usuário 1 (Alice Silva)
        GROUP BY A.nome_artista
        ORDER BY Total_Reproducoes DESC -- Ordena pela contagem
        LIMIT 5
    ) AS T,
    (SELECT @rank_num := 0) AS R -- Inicializa a variável dentro da query (mais robusto)
	ORDER BY T.Total_Reproducoes DESC; -- Garante a ordenação final