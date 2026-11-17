-- ETAPA 3: consultas para praticar SQL
-- Execute apos criar o banco e inserir a amostra.
USE F1Analytics;
GO

-- 1. Visualizar pilotos cadastrados
SELECT PilotoID, NomeCompleto
FROM dbo.Pilotos
ORDER BY NomeCompleto;

-- 2. Listar corridas e seus circuitos (JOIN)
SELECT c.Temporada, c.Rodada, c.NomeGrandePremio, ci.NomeCircuito
FROM dbo.Corridas AS c
INNER JOIN dbo.Circuitos AS ci ON ci.CircuitoID = c.CircuitoID
ORDER BY c.Temporada, c.Rodada;

-- 3. Mostrar os tempos por volta dos pilotos (JOIN + ORDER BY)
SELECT v.Temporada, v.Rodada, p.NomeCompleto, v.NumeroVolta,
       v.TempoMs,
       CAST(v.TempoMs / 60000 AS VARCHAR(10)) + ':' +
       RIGHT('0' + CAST((v.TempoMs % 60000) / 1000 AS VARCHAR(2)), 2) + '.' +
       RIGHT('00' + CAST(v.TempoMs % 1000 AS VARCHAR(3)), 3) AS TempoFormatado
FROM dbo.Voltas AS v
INNER JOIN dbo.Pilotos AS p ON p.PilotoID = v.PilotoID
ORDER BY v.NumeroVolta, v.TempoMs;

-- 4. Menor tempo registrado por piloto (MIN + GROUP BY)
-- Na amostra inicial ha APENAS uma volta por piloto. Amplie os dados antes de tirar conclusoes.
SELECT p.NomeCompleto, MIN(v.TempoMs) AS MelhorTempoMs
FROM dbo.Voltas AS v
INNER JOIN dbo.Pilotos AS p ON p.PilotoID = v.PilotoID
GROUP BY p.NomeCompleto
ORDER BY MelhorTempoMs;

-- 5. Quantidade de voltas cadastradas por piloto (COUNT + GROUP BY)
SELECT p.NomeCompleto, COUNT(*) AS VoltasRegistradas
FROM dbo.Voltas AS v
INNER JOIN dbo.Pilotos AS p ON p.PilotoID = v.PilotoID
GROUP BY p.NomeCompleto
ORDER BY VoltasRegistradas DESC;
GO
