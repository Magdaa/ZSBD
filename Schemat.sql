--TABLEA PRACOWNICY
CREATE TABLE pracownicy (
id					INT IDENTITY(1,1) NOT NULL,
nazwisko 			VARCHAR(50) NOT NULL,
imie 				VARCHAR(50) NOT NULL,
dataUrodzenia 		DATE NOT NULL,
pesel				CHAR(11) NOT NULL,
plec 				CHAR(1) NOT NULL,
dataZatrudnienia	DATE NOT NULL,
dataZwolnienia		DATE,
stanowisko			VARCHAR(25) NOT NULL,
stawka				MONEY NOT NULL,
oddzial				INT NOT NULL,

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
CONSTRAINT pracownicyDataZatrudnieniaConstraint CHECK (dataZatrudnienia < dataZwolnienia),
CONSTRAINT pracownicyOddzialConstraint FOREIGN KEY (oddzial) REFERENCES oddzialy (id)
);
GO

--TABELA PROJEKTY
CREATE TABLE projekty(
id 				INT IDENTITY(1,1) NOT NULL,
nazwa			VARCHAR(300) NOT NULL,
budzet			MONEY NOT NULL,
dataRozpoczecia	DATE NOT NULL,
dataUkonczenia	DATE NOT NULL,

CONSTRAINT projektyIdConstraint PRIMARY KEY(id), 
CONSTRAINT projektyBudzetConstraint CHECK (budzet >= 0),
CONSTRAINT projektyDatyConstraint CHECK (dataRozpoczecia < dataUkonczenia),
); 
GO

--TABELA ZADANIA
CREATE TABLE zadania(
id 				INT IDENTITY(1,1) NOT NULL,
temat			VARCHAR(300) NOT NULL,
postep			INT DEFAULT 0 NOT NULL,
projekt			INT NOT NULL,
pracownik		INT NOT NULL,

CONSTRAINT zadaniaIdConstraint PRIMARY KEY(id),
CONSTRAINT zadaniaPostepConstraint CHECK (postep >= 0 AND postep <= 100),
CONSTRAINT zadaniaProjektConstraint FOREIGN KEY (projekt) REFERENCES projekty(id),
CONSTRAINT zadaniaPracownikConstraint FOREIGN KEY (pracownik) REFERENCES pracownicy (id)
);
GO

--TABELA ROBOCZOGODZINY
CREATE TABLE roboczogodziny(
pracownik		INT NOT NULL,
zadanie			INT NOT NULL,
ile_godzin		INT NOT NULL,

CONSTRAINT roboczogodzinyPracownikContstraint FOREIGN KEY (pracownik) REFERENCES pracownicy(id),
CONSTRAINT roboczogodzinyZadanieConstraint FOREIGN KEY (zadanie) REFERENCES zadania (id),
);
GO

--TABELA ODDZIA£Y
CREATE TABLE oddzialy(
id					INT IDENTITY (1,1) NOT NULL,
miasto				VARCHAR (50) NOT NULL,
l_pracownikow		INT NOT NULL,
koszt_projektu		MONEY NOT NULL,
zysk_projektu		MONEY NOT NULL,
przychod_oddzialu	MONEY NOT NULL,
projekt			INT NOT NULL,

CONSTRAINT oddzialyIdConstraint PRIMARY KEY(id),
CONSTRAINT oddialyProjektConstraint FOREIGN KEY (projekt) REFERENCES projekty (id)
);
GO