CREATE DATABASE Fotboll
GO

USE Fotboll
GO

CREATE TABLE LagInfo(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	Namn NVARCHAR(50),
	Arena NVARCHAR(50),
	ArenaKapacitet INT,
	TitlarUCL INT,
	TitlarLiga INT,
	Liga NVARCHAR(50),
	KändasteSpelare NVARCHAR(50),
	AntalFöljare DECIMAL(5, 1), -- i miljoner, Instagram & data från 2026
	BallonDor INT
	);

	INSERT INTO LagInfo(Namn, Arena, ArenaKapacitet, TitlarUCL, TitlarLiga, Liga, KändasteSpelare, AntalFöljare, BallonDor)
	VALUES
	('Real Madrid', 'Santiago Bernabéu', 83186, 15, 36, 'LaLiga', 'Cristiano Ronaldo', 182.6, 8),
	('FC Barcelona', 'Spotify Camp Nou', 105000, 5, 29, 'LaLiga', 'Lionel Messi', 149.6, 6),
	('Paris Saint-Germain', 'Parc des Princes', 47929, 2, 14, 'Ligue 1', 'Kylian Mbappe',  67.7, 2),
	('Manchester United', 'Old Trafford', 74158, 3, 20, 'Premier League', 'Cristiano Ronaldo', 66.2, 4),
	('Juventus', 'Allianz Stadium', 41507, 2, 36, 'Serie A', 'Alessandro Del Piero', 59.0, 6),
	('Manchester City', 'Etihad Stadium', 61100, 1, 10, 'Premier League', 'Kevin De Bruyne',  57.0, 1),
	('Liverpool', 'Anfield', 61276, 6, 20, 'Premier League', 'Steven Gerrard', 48.4, 1),
	('Bayern Munich', 'Allianz Arena', 75024, 6, 35, 'Bundesliga', 'Thomas Muller', 46.2, 4),
	('Chelsea', 'Stamford Bridge', 40044,  2,  6, 'Premier League', 'John Terry',  44.3, 0),
	('Arsenal', 'Emirates Stadium', 60704,  0, 14, 'Premier League', 'Thierry Henry', 32.5, 0),
	('Al Nassr', 'Al-Awwal Park', 26004, 0, 11, 'Saudi Pro League', 'Cristiano Ronaldo', 30.3, 0),
	('Flamengo', 'Maracana', 78826, 0, 9, 'Campeonato Brasileiro Serie A', 'Ronaldinho', 25.2, 0),
	('Borussia Dortmund', 'Signal Iduna Park', 81365, 1, 8, 'Bundesliga', 'Marco Reus', 20.8, 1),
	('Inter Miami', 'Nu Stadium', 26700, 0, 1, 'MLS', 'Lionel Messi', 19.6, 1),
	('AC Milan', 'San Siro', 75817, 7, 19, 'Serie A', 'Paolo Maldini', 18.2, 6);
	
--Visar bara Premier League & sorterar på AntalFöljare störst till minst
SELECT * FROM LagInfo
WHERE Liga = 'Premier League'
ORDER BY AntalFöljare DESC

--Summerar alla klubbars TitlarUCL som är i samma liga
SELECT Liga, SUM(TitlarUCL) AS LigansUCL FROM LagInfo
GROUP BY Liga
ORDER BY LigansUCL DESC

--Visar klubbens Namn & deras följare i Instagram i miljoner
SELECT Namn, AntalFöljare FROM LagInfo
ORDER BY AntalFöljare DESC

--Visar klubbens Namn & deras UCL i rangordning
SELECT Namn, TitlarUCL FROM LagInfo
ORDER BY TitlarUCL DESC

--Visar klubbens Namn, deras ligatitlar & vilken liga de spelar i
SELECT Namn, TitlarLiga, Liga FROM LagInfo
ORDER BY TitlarLiga DESC
