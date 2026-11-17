-- PROJETO F1 DRIVER PERFORMANCE ANALYTICS
-- ETAPA 1: banco de dados e relacionamentos
-- Executar este arquivo UMA VEZ em uma instância de SQL Server.

IF DB_ID(N'F1Analytics') IS NULL
BEGIN
    EXEC(N'CREATE DATABASE F1Analytics');
END;
GO

USE F1Analytics;
GO

CREATE TABLE dbo.Pilotos (
    PilotoID VARCHAR(80) NOT NULL PRIMARY KEY, -- ID fornecido pela fonte (ex.: damon_hill)
    NomeCompleto NVARCHAR(120) NOT NULL,
    Nacionalidade NVARCHAR(80) NULL
);

CREATE TABLE dbo.Equipes (
    EquipeID VARCHAR(80) NOT NULL PRIMARY KEY,
    NomeEquipe NVARCHAR(120) NOT NULL
);

CREATE TABLE dbo.Circuitos (
    CircuitoID VARCHAR(80) NOT NULL PRIMARY KEY,
    NomeCircuito NVARCHAR(120) NOT NULL,
    Pais NVARCHAR(80) NULL
);

CREATE TABLE dbo.Corridas (
    Temporada SMALLINT NOT NULL,
    Rodada TINYINT NOT NULL,
    NomeGrandePremio NVARCHAR(120) NOT NULL,
    DataCorrida DATE NULL,
    CircuitoID VARCHAR(80) NOT NULL,
    CONSTRAINT PK_Corridas PRIMARY KEY (Temporada, Rodada),
    CONSTRAINT FK_Corridas_Circuitos FOREIGN KEY (CircuitoID)
        REFERENCES dbo.Circuitos(CircuitoID)
);

CREATE TABLE dbo.Resultados (
    Temporada SMALLINT NOT NULL,
    Rodada TINYINT NOT NULL,
    PilotoID VARCHAR(80) NOT NULL,
    EquipeID VARCHAR(80) NULL,
    PosicaoLargada SMALLINT NULL,
    PosicaoClassificacao SMALLINT NULL,
    StatusCorrida NVARCHAR(100) NULL,
    Pontos DECIMAL(6,2) NULL,
    CONSTRAINT PK_Resultados PRIMARY KEY (Temporada, Rodada, PilotoID),
    CONSTRAINT FK_Resultados_Corridas FOREIGN KEY (Temporada, Rodada)
        REFERENCES dbo.Corridas(Temporada, Rodada),
    CONSTRAINT FK_Resultados_Pilotos FOREIGN KEY (PilotoID)
        REFERENCES dbo.Pilotos(PilotoID),
    CONSTRAINT FK_Resultados_Equipes FOREIGN KEY (EquipeID)
        REFERENCES dbo.Equipes(EquipeID)
);

CREATE TABLE dbo.Voltas (
    Temporada SMALLINT NOT NULL,
    Rodada TINYINT NOT NULL,
    PilotoID VARCHAR(80) NOT NULL,
    NumeroVolta SMALLINT NOT NULL,
    TempoMs INT NOT NULL, -- 1:24.350 => 84.350 milissegundos
    PosicaoNaVolta SMALLINT NULL,
    CONSTRAINT PK_Voltas PRIMARY KEY (Temporada, Rodada, PilotoID, NumeroVolta),
    CONSTRAINT FK_Voltas_Resultados FOREIGN KEY (Temporada, Rodada, PilotoID)
        REFERENCES dbo.Resultados(Temporada, Rodada, PilotoID),
    CONSTRAINT CK_Voltas_Tempo CHECK (TempoMs > 0),
    CONSTRAINT CK_Voltas_Numero CHECK (NumeroVolta > 0)
);
GO
