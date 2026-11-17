-- ETAPA 2: dados iniciais para testar relacionamentos
-- Amostra parcial da DOCUMENTACAO da Jolpica: GP da Hungria de 1997, volta 1.
-- Fonte: https://github.com/jolpica/jolpica-f1/blob/main/docs/endpoints/laps.md
-- NAO sao dados de toda a corrida. Equipes, posicoes finais e pontos nao foram importados.
-- Execute somente apos 01_criar_banco_e_tabelas.sql.

USE F1Analytics;
GO

INSERT INTO dbo.Pilotos (PilotoID, NomeCompleto, Nacionalidade)
VALUES ('michael_schumacher', N'Michael Schumacher', NULL),
       ('damon_hill', N'Damon Hill', NULL);

INSERT INTO dbo.Circuitos (CircuitoID, NomeCircuito, Pais)
VALUES ('hungaroring', N'Hungaroring', N'Hungria');

INSERT INTO dbo.Corridas (Temporada, Rodada, NomeGrandePremio, DataCorrida, CircuitoID)
VALUES (1997, 11, N'Grande Prêmio da Hungria', '1997-08-10', 'hungaroring');

INSERT INTO dbo.Resultados (Temporada, Rodada, PilotoID, EquipeID, PosicaoLargada,
                            PosicaoClassificacao, StatusCorrida, Pontos)
VALUES (1997, 11, 'michael_schumacher', NULL, NULL, NULL, NULL, NULL),
       (1997, 11, 'damon_hill', NULL, NULL, NULL, NULL, NULL);

-- Tempos da primeira volta conforme exemplo da documentação:
-- Michael Schumacher: 1:24.350 = 84.350 ms; Damon Hill: 1:26.068 = 86.068 ms.
INSERT INTO dbo.Voltas (Temporada, Rodada, PilotoID, NumeroVolta, TempoMs, PosicaoNaVolta)
VALUES (1997, 11, 'michael_schumacher', 1, 84350, 1),
       (1997, 11, 'damon_hill', 1, 86068, 2);
GO
