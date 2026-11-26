-- F1 Driver Performance Analytics
-- Cadastro inicial dos circuitos
-- Temporadas: 2023 a 2025

USE F1Analytics;
GO

INSERT INTO dbo.Circuitos (
    CircuitoID,
    NomeCircuito,
    Pais
    
)
VALUES
    ('abudhabi', N'Circuito de Yas Marina', N'Emirados Árabes Unidos'),
    ('arabia', N'Circuito da Corniche de Jidá', N'Arábia Saudita'),
    ('austin', N'Circuito das Américas', N'Estados Unidos'),
    ('australia', N'Circuito de Albert Park', N'Austrália'),
    ('austria', N'Red Bull Ring', N'Áustria'),
    ('azer', N'Circuito Urbano de Baku', N'Azerbaijão'),
    ('bahrein', N'Bahrain International Circuit', N'Bahrein'),
    ('belgica', N'Circuito de Spa-Francorchamps', N'Bélgica'),
    ('brasil', N'Autódromo José Carlos Pace', N'Brasil'),
    ('canada', N'Circuito Gilles Villeneuve', N'Canadá'),
    ('china', N'Circuito Internacional de Xangai', N'China'),
    ('espanha', N'Circuito da Catalunha', N'Espanha'),
    ('hungria', N'Hungaroring', N'Hungria'),
    ('imola', N'Autódromo Enzo e Dino Ferrari', N'Itália'),
    ('las_vegas', N'Circuito Urbano de Las Vegas', N'Estados Unidos'),
    ('lusail', N'Circuito Internacional de Lusail', N'Catar'),
    ('marina_bay', N'Circuito Urbano de Marina Bay', N'Singapura'),
    ('mexico', N'Autódromo Hermanos Rodríguez', N'México'),
    ('miami', N'Autódromo Internacional de Miami', N'Estados Unidos'),
    ('monaco', N'Circuito de Mônaco', N'Mônaco'),
    ('monza', N'Autódromo Nacional de Monza', N'Itália'),
    ('silverstone', N'Silverstone', N'Reino Unido'),
    ('suzuka', N'Circuito de Suzuka', N'Japão'),
    ('zandvoort', N'Circuito de Zandvoort', N'Países Baixos');
