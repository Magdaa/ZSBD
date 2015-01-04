-------------------------------------------------------------------------------
-- AUTORZY: Ewelina Goñda, Magdalena Antkiewicz
-------------------------------------------------------------------------------

-- TWORZENIE NOWEJ BAZY DANYCH
if exists(select 1 from master.dbo.sysdatabases where name = 'firma') drop database firma
GO
CREATE DATABASE firma
GO



-- TABELA PRACOWNIKÓW
CREATE TABLE firma.dbo.pracownicy (
id					INT IDENTITY(1,1) NOT NULL,
nazwisko 			VARCHAR(50) NOT NULL,
imie 				VARCHAR(50) NOT NULL,
dataUrodzenia 		DATE NOT NULL,
pesel				CHAR(11) NOT NULL,
plec 				CHAR(1) NOT NULL,
nip					CHAR(10) NOT NULL,
telefon 			CHAR(9) NOT NULL,
adres				VARCHAR(50) NOT NULL,
numerDomu			VARCHAR(5) NOT NULL,
poczta				VARCHAR(50) NOT NULL,
kodPocztowy			CHAR(6) NOT NULL,
dataZatrudnienia	DATE NOT NULL,
dataZwolnienia		DATE,
stanowisko			VARCHAR(25) NOT NULL,

CONSTRAINT pracownicyIdConstraint PRIMARY KEY(id),
CONSTRAINT pracownicyPlecConstraint CHECK(
plec='K' OR plec='M'),
CONSTRAINT pracownicyPeselConstraint CHECK(
SUBSTRING(pesel,1,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,2,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,3,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,4,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,5,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,6,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,7,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,8,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,9,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,10,1) BETWEEN '0' AND '9' AND
SUBSTRING(pesel,11,1) BETWEEN '0' AND '9'),
CONSTRAINT pracownicyTelefonConstraint CHECK(
SUBSTRING(telefon,1,1) BETWEEN '0' AND '9' AND
SUBSTRING(telefon,2,1) BETWEEN '0' AND '9' AND
SUBSTRING(telefon,3,1) BETWEEN '0' AND '9' AND
SUBSTRING(telefon,4,1) BETWEEN '0' AND '9' AND
SUBSTRING(telefon,5,1) BETWEEN '0' AND '9' AND
SUBSTRING(telefon,6,1) BETWEEN '0' AND '9' AND
SUBSTRING(telefon,7,1) BETWEEN '0' AND '9' AND
SUBSTRING(telefon,8,1) BETWEEN '0' AND '9' AND
SUBSTRING(telefon,9,1) BETWEEN '0' AND '9'),
CONSTRAINT pracownicyKodPocztowyConstraint CHECK (
SUBSTRING(kodPocztowy,1,1) BETWEEN '0' AND '9' AND
SUBSTRING(kodPocztowy,2,1) BETWEEN '0' AND '9' AND
SUBSTRING(kodPocztowy,3,1) = '-' AND
SUBSTRING(kodPocztowy,4,1) BETWEEN '0' AND '9' AND
SUBSTRING(kodPocztowy,5,1) BETWEEN '0' AND '9' AND
SUBSTRING(kodPocztowy,6,1) BETWEEN '0' AND '9'),
CONSTRAINT pracownicyDataUrodzeniaConstraint CHECK (dataUrodzenia < dataZatrudnienia),
CONSTRAINT pracownicyDataZatrudnieniaConstraint CHECK (dataZatrudnienia < dataZwolnienia),
CONSTRAINT pracownicyStanowiskoConstraint CHECK(stanowisko IN 
	('Dyrektor firmy', 'Dyrektor oddzia³u', 'Koordynator Projektu', 'Pracownik HR', 'Zwyk³y pracownik')), 
);
GO



-- TABELA ODDZIA£ÓW
CREATE TABLE firma.dbo.oddzialy (
id 			INT IDENTITY(1,1) NOT NULL,
miasto		VARCHAR(50) NOT NULL,
dyrektor	INT NOT NULL,

CONSTRAINT oddzialyIdConstraint PRIMARY KEY(id),
CONSTRAINT oddzialyDyrektorConstraint FOREIGN KEY(dyrektor) REFERENCES pracownicy(id), 
);
GO



-- TABELA PROJEKTÓW
CREATE TABLE firma.dbo.projekty (
id 				INT IDENTITY(1,1) NOT NULL,
nazwa			VARCHAR(300) NOT NULL,
koordynator		INT NOT NULL,
budzet			MONEY NOT NULL,
postep			INT DEFAULT 0 NOT NULL,
dataRozpoczecia	DATE NOT NULL,
dataUkonczenia	DATE NOT NULL,

CONSTRAINT projektyIdConstraint PRIMARY KEY(id),
CONSTRAINT projektyKoordynatorConstraint FOREIGN KEY(koordynator) REFERENCES pracownicy(id), 
CONSTRAINT projektyPostepConstraint CHECK (postep >= 0 AND postep <= 100),
CONSTRAINT projektyBudzetConstraint CHECK (budzet >= 0),
CONSTRAINT projektyDatyConstraint CHECK (dataRozpoczecia < dataUkonczenia),
); 
GO



-- TABELA GRUP PROJEKTOWYCH
CREATE TABLE firma.dbo.grupyProjektowe (
id 		INT IDENTITY(1,1) NOT NULL,
oddzial	INT NOT NULL,
rola	VARCHAR(20) NOT NULL,
lider	INT NOT NULL,		

CONSTRAINT grupyProjektoweIdConstraint PRIMARY KEY(id),
CONSTRAINT grupyProjektoweOddzialConstraint FOREIGN KEY(oddzial) REFERENCES oddzialy(id), 
CONSTRAINT grupyProjektoweLiderConstraint FOREIGN KEY(lider) REFERENCES pracownicy(id), 
CONSTRAINT grupyProjektoweRolaConstraint CHECK(rola IN 
	('Designer', 'Grafik', 'Level designer', 'Programista', 'Tester')), 
);
GO



-- TABELA PO£¥CZENIOWA PRACOWNIKÓW I GRUP PROJEKTOWYCH
CREATE TABLE firma.dbo.pracownicy_GrupyProjektowe (
id 			INT IDENTITY(1,1) NOT NULL,
pracownik	INT NOT NULL,
grupa		INT NOT NULL,	

CONSTRAINT pracownicy_GrupyProjektoweIdConstraint PRIMARY KEY(id),
CONSTRAINT pracownicy_GrupyProjektowePracownikConstraint FOREIGN KEY(pracownik) REFERENCES pracownicy(id), 
CONSTRAINT pracownicy_GrupyProjektoweGrupaConstraint FOREIGN KEY(grupa) REFERENCES grupyProjektowe(id), 
);
GO



-- TABELA PO£¥CZENIOWA GRUP PROJEKTOWYCH I PROJEKTÓW
CREATE TABLE firma.dbo.grupyProjektowe_Projekty (
id 		INT IDENTITY(1,1) NOT NULL,
projekt	INT NOT NULL,
grupa	INT NOT NULL,	

CONSTRAINT grupyProjektowe_ProjektyIdConstraint PRIMARY KEY(id),
CONSTRAINT grupyProjektowe_ProjektyProjektConstraint FOREIGN KEY(projekt) REFERENCES projekty(id), 
CONSTRAINT grupyProjektowe_ProjektyGrupaConstraint FOREIGN KEY(grupa) REFERENCES grupyProjektowe(id), 
);
GO



-- TABELA WYP£ATY
CREATE TABLE firma.dbo.wyplaty (
id 			INT IDENTITY(1,1) NOT NULL,
kwota		MONEY NOT NULL,
pracownik	INT NOT NULL,
data		DATE NOT NULL,	

CONSTRAINT wyplatyIdConstraint PRIMARY KEY(id),
CONSTRAINT wyplatyKwotaConstraint CHECK(kwota > 0),
CONSTRAINT wyplatyPracownikConstraint FOREIGN KEY(pracownik) REFERENCES pracownicy(id), 
);
GO



-- TABELA WP£ATY
CREATE TABLE firma.dbo.wplaty (
id 			INT IDENTITY(1,1) NOT NULL,
kwota		MONEY NOT NULL,
projekt		INT NOT NULL,
data		DATE NOT NULL,	
sponsor		VARCHAR(50) NOT NULL,

CONSTRAINT wplatyIdConstraint PRIMARY KEY(id),
CONSTRAINT wplatyKwotaConstraint CHECK(kwota > 0),
CONSTRAINT wplatyProjektConstraint FOREIGN KEY(projekt) REFERENCES projekty(id), 
);
GO



-- TABELA ZADANIA
CREATE TABLE firma.dbo.zadania (
id			INT IDENTITY(1,1) NOT NULL,
tytul		VARCHAR(50) NOT NULL,
tresc		VARCHAR(1000) NOT NULL,
status		VARCHAR(15) NOT NULL,
grupa		INT NOT NULL,
wykonawca	INT DEFAULT NULL,
dataDodania	DATE NOT NULL,

CONSTRAINT zadaniaIdConstraint PRIMARY KEY(id),
CONSTRAINT zadaniaStatusConstraint CHECK( status IN ('Oczekuje', 'W realizacji', 'Ukoñczone')), 
CONSTRAINT zadaniaGrupaConstraint FOREIGN KEY(grupa) REFERENCES grupyProjektowe(id), 
CONSTRAINT zadaniaWykonawcaConstraint FOREIGN KEY(wykonawca) REFERENCES pracownicy(id), 
);
GO



-- TABELA ZG£OSZENIA
CREATE TABLE firma.dbo.zgloszenia (
id			INT IDENTITY(1,1) NOT NULL,
priorytet	VARCHAR(15) NOT NULL,
tytul		VARCHAR(50) NOT NULL,
tresc		VARCHAR(1000) NOT NULL,
oddzial		INT NOT NULL,

CONSTRAINT zgloszeniaIdConstraint PRIMARY KEY(id),
CONSTRAINT zgloszeniaOddzialConstraint FOREIGN KEY(oddzial) REFERENCES oddzialy(id), 
CONSTRAINT zgloszeniaPriorytetConstraint CHECK( priorytet IN ('Bardzo wysoki', 'Wysoki', 'Zwyk³y', 'Niski')), 
);
GO



-- TABELA BILANS
CREATE TABLE firma.dbo.bilanse (
id			INT IDENTITY(1,1) NOT NULL,
oddzial		INT NOT NULL,
od			DATE NOT NULL,
do			DATE NOT NULL,
bilans		MONEY NOT NULL,

CONSTRAINT bilanseIdConstraint PRIMARY KEY(id),
CONSTRAINT bilanseOddzialConstraint FOREIGN KEY(oddzial) REFERENCES oddzialy(id), 
CONSTRAINT bilanseDatyConstraint CHECK (od < do)
);
GO
