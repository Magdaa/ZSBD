-------------------------------------------------------------------------------
-- AUTORZY: Ewelina Goñda, Magdalena Antkiewicz
-------------------------------------------------------------------------------



use firma;
go





-- 1. Trigger - AFTER/INSERT
-- Opis: Po dodaniu nowego zadania trigger wyszukuje pracownika, który nie posiada zadania a jest w grupie projektowej do której zadanie zosta³o dodane
IF EXISTS (SELECT name FROM sysobjects
	  WHERE name = 'FirstTrigger')
   DROP TRIGGER FirstTrigger
GO
  
CREATE TRIGGER FirstTrigger ON zadania AFTER INSERT AS
	BEGIN
		DECLARE @idZadania int;
		DECLARE @idGrupyZadania int
		DECLARE @idWykonawcy int;
		DECLARE @released date;
		
		SELECT TOP 1 @idZadania=Zad.id FROM firma.dbo.zadania Zad ORDER BY Zad.dataDodania DESC;
		SELECT @idGrupyZadania=Zad.grupa FROM firma.dbo.zadania Zad WHERE Zad.id=@idZadania;
		SELECT TOP 1 @idWykonawcy=Prac.id FROM firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrupProj, firma.dbo.grupyProjektowe GrupProj WHERE 
				Prac.id=PracGrupProj.pracownik AND PracGrupProj.grupa=GrupProj.id AND GrupProj.id=@idGrupyZadania AND Prac.id NOT IN 
				(SELECT Zad2.wykonawca FROM firma.dbo.zadania Zad2 WHERE Zad2.status IN ('W realizacji'));	
					
				
		if(@idWykonawcy IS NOT NULL)
			BEGIN
				PRINT('Jest wolny wykonawca o numerze ' + STR(@idWykonawcy));
				UPDATE firma.dbo.zadania SET wykonawca=@idWykonawcy WHERE id=@idZadania;
				UPDATE firma.dbo.zadania SET status='W realizacji' WHERE id=@idZadania;
				PRINT('Wolny pracownik zosta³ dodany do zadania');
			END
		else
			BEGIN
				PRINT('Nie ma wolnego wykonawcy');
			END
	END
GO

-- EXAMPLE
--INSERT INTO firma.dbo.pracownicy VALUES('Jarzêbski','Konrad','1983/02/02','83020243416','M','4219351380','500472491','ul. Dostawcza','23','Kraków','93-852','2010/01/01',NULL,'Zwyk³y pracownik');
--INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(21, 10);
INSERT INTO firma.dbo.zadania VALUES('Zadanie triggera', 'Treœæ zadania', 'Oczekuje',		10, NULL,	GETDATE());

-- VERYFICATION
--SELECT * FROM firma.dbo.zadania;






-- 2. Trigger - INSTEAD OF/DELETE
-- Opis: W momencie usuniêcia pracownika z bazy, tak naprawdê nie usuwamy go lecz ustawiamy datê zwolnienia i usuwamy jego powi¹zania z innymi tabelami
IF EXISTS (SELECT name FROM sysobjects
	  WHERE name = 'SecondTrigger')
   DROP TRIGGER SecondTrigger
GO
  
CREATE TRIGGER SecondTrigger ON pracownicy INSTEAD OF DELETE AS
	BEGIN
		UPDATE firma.dbo.pracownicy SET dataZwolnienia=GETDATE() WHERE
			id=(SELECT id FROM deleted);
		UPDATE firma.dbo.zadania SET status='Oczekuje' WHERE
			wykonawca=(SELECT id FROM deleted);
		DELETE FROM firma.dbo.pracownicy_GrupyProjektowe WHERE
			pracownik=(SELECT id FROM deleted);
	END
GO

-- EXAMPLE
--DELETE FROM firma.dbo.pracownicy WHERE id=21;

-- VERYFICATION
--SELECT * FROM firma.dbo.pracownicy;





-- 3. Trigger - AFTER/UPDATE
-- Opis: 
--IF EXISTS (SELECT name FROM sysobjects
--	  WHERE name = 'ThirdTrigger')
--   DROP TRIGGER ThirdTrigger
--GO
  
--CREATE TRIGGER ThirdTrigger ON wplaty AFTER UPDATE AS
--	BEGIN
--		-- nie mam pomys³u na ten trigger
--	END
--GO

-- EXAMPLE


-- VERYFICATION
