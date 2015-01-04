-------------------------------------------------------------------------------
-- AUTORZY: Ewelina Goñda, Magdalena Antkiewicz
-------------------------------------------------------------------------------



-- PROCEDURA 1
-- OPIS:	Wysy³a wszystkich pracowników powy¿ej 65 roku ¿ycia na przymusow¹ emeryturê.
IF EXISTS (SELECT name FROM sysobjects
	  WHERE name = 'P1')
   DROP PROCEDURE P1
GO

CREATE PROCEDURE P1 AS
	BEGIN
		declare @srednia int;
		
		SELECT @srednia=avg(Wyp.kwota) FROM firma.dbo.wyplaty Wyp, firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrupProj, firma.dbo.grupyProjektowe GrupProj WHERE 
		Wyp.pracownik=Prac.id AND Prac.id=PracGrupProj.pracownik AND PracGrupProj.grupa=GrupProj.id;
		
		update firma.dbo.pracownicy set dataZwolnienia=GETDATE() WHERE id in
		(select Prac.id from firma.dbo.pracownicy Prac where (YEAR(GETDATE())-YEAR(Prac.dataUrodzenia))>65 and @srednia>(select MAX(wyp.kwota) from firma.dbo.wyplaty wyp where wyp.pracownik=Prac.id));

	END
GO

--EXEC P1;



-- PROCEDURA 2
-- OPIS:	Jeœli w tabeli zadania s¹ rekordy, które nie maj¹ swojego wykonawcy to procedura szuka dla tych zadañ pracowników
--			a je¿eli takich nie znajdzie to tworzy zg³oszenie zatrudnienia nowego pracownika
IF EXISTS (SELECT name FROM sysobjects
	  WHERE name = 'P2')
   DROP PROCEDURE P2
GO

CREATE PROCEDURE P2 AS
	BEGIN
	
		DECLARE @idZadania int;
		DECLARE @licznik int;
		DECLARE @idGrupyZadania int
		DECLARE @idWykonawcy int;
		
		SET @licznik=0;
		
		SELECT TOP 1 @idZadania=Zad.id FROM firma.dbo.zadania Zad WHERE Zad.wykonawca IS NULL ORDER BY Zad.dataDodania;
		
		WHILE(@idZadania IS NOT NULL)
			BEGIN
			
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
						DECLARE @idDzialu int;			
						DECLARE @wpis VARCHAR(256);
						
						SELECT @idDzialu=GrupProj.oddzial FROM firma.dbo.grupyProjektowe GrupProj WHERE
							GrupProj.id=@idGrupyZadania;
						
						PRINT('Nie ma wolnego wykonawcy');
						PRINT('Dodajê wpis do tabeli zg³oszenia, informuj¹c o koniecznoœci zatrudnienia pracownika');
						SET @wpis='Nale¿y zatrudniæ nowego pracownika do grupy ' + (SELECT GrupProj.rola FROM firma.dbo.grupyProjektowe GrupProj WHERE GrupProj.id=@idGrupyZadania);
						
						INSERT INTO firma.dbo.zgloszenia VALUES('Wysoki', 'Rekrutacja pracownika', @wpis, @idDzialu);
						UPDATE firma.dbo.zadania SET wykonawca=1 WHERE id=@idZadania;
					END				
			
				SET @idZadania=NULL;
				SELECT TOP 1 @idZadania=Zad.id FROM firma.dbo.zadania Zad WHERE Zad.wykonawca IS NULL ORDER BY Zad.dataDodania;
				
				SET @licznik=@licznik+1;
			END		
			
		UPDATE firma.dbo.zadania SET wykonawca=NULL WHERE wykonawca=1;
		PRINT('Znaleziono ' + STR(@licznik) + ' zadañ bez wykonawcy');

	END
GO

--EXEC P2;



-- PROCEDURA 3
-- OPIS:	Co miesi¹c zostaje wykonany bilans zysków i strat dla danego oddzia³u. Je¿eli bilans jest ujemny dla okreœlonego okresu czasu to pracownicy z tego oddzia³u zostaj¹ zwolnieni
IF EXISTS (SELECT name FROM sysobjects
	  WHERE name = 'P3')
   DROP PROCEDURE P3
GO

CREATE PROCEDURE P3 (@czas INT) --okreslony czas w miesiacach 
AS
	BEGIN
		declare @od1 int,@od2 int;
		
		SELECT @od1 = SUM(Bil.bilans) from firma.dbo.bilanse Bil where Bil.oddzial=1 and (ABS((YEAR(GETDATE())-YEAR(Bil.od))*12)-ABS((MONTH(GETDATE())-MONTH(Bil.od))))<=@czas group by Bil.id;
		SELECT @od2 = SUM(Bil.bilans) from firma.dbo.bilanse Bil where Bil.oddzial=2 and (ABS((YEAR(GETDATE())-YEAR(Bil.od))*12)-ABS((MONTH(GETDATE())-MONTH(Bil.od))))<=@czas group by Bil.id;

		if @od1<0
			begin
				update firma.dbo.pracownicy set dataZwolnienia=GETDATE() WHERE id in
				(SELECT Prac.id FROM firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrupProj, firma.dbo.grupyProjektowe GrupProj WHERE 
				 Prac.id=PracGrupProj.pracownik AND PracGrupProj.grupa=GrupProj.id AND GrupProj.oddzial=
				(SELECT Oddz.id FROM firma.dbo.oddzialy Oddz WHERE Oddz.id=1));
			end

		if @od2<0
			begin
				update firma.dbo.pracownicy set dataZwolnienia=GETDATE() WHERE id in
				(SELECT Prac.id FROM firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrupProj, firma.dbo.grupyProjektowe GrupProj WHERE 
				 Prac.id=PracGrupProj.pracownik AND PracGrupProj.grupa=GrupProj.id AND GrupProj.oddzial=
				(SELECT Oddz.id FROM firma.dbo.oddzialy Oddz WHERE Oddz.id=2));
			end

	END
GO
--EXEC P3 @czas = 3;




-- FUNKCJA 1
-- OPIS:	Wyszukujemy bilans firmy z danego roku i miesi¹ca, zwracaj¹c ró¿nicê pomiêdzy rozchodami i przychodami.
IF EXISTS (SELECT name FROM sysobjects
	  WHERE name = 'F1')
   DROP FUNCTION F1
GO

CREATE FUNCTION F1(@mon int,@year int) RETURNS int AS
	BEGIN
		declare @suma int;
		 select @suma=Bil.bilans from firma.dbo.bilanse Bil where MONTH(Bil.od)=@mon and YEAR(Bil.od)=@year;
		 return @suma;
	END
GO

--EXEC F1 @mon=2, @year=2010;
