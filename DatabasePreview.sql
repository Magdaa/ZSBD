-------------------------------------------------------------------------------
-- AUTORZY: Ewelina Go�da, Magdalena Antkiewicz
-------------------------------------------------------------------------------



-- 1. Przegl�d wszystkich tabel w bazie danych
--SELECT * FROM firma.dbo.pracownicy;
--SELECT * FROM firma.dbo.oddzialy;
--SELECT * FROM firma.dbo.projekty;
--SELECT * FROM firma.dbo.grupyProjektowe;
--SELECT * FROM firma.dbo.pracownicy_GrupyProjektowe;
--SELECT * FROM firma.dbo.grupyProjektowe_Projekty;
--SELECT * FROM firma.dbo.wyplaty;
--SELECT * FROM firma.dbo.wplaty;
--SELECT * FROM firma.dbo.zadania;
--SELECT * FROM firma.dbo.zgloszenia;


-- 2. Wy�wietl wszystkich pracownik�w, kt�rzy maj� jakie� zadania
--SELECT Prac.imie+' '+Prac.nazwisko as 'Pracownicy posiadaj�cy zadania to:' FROM firma.dbo.pracownicy Prac WHERE Prac.id IN (
--	SELECT Zad.wykonawca FROM firma.dbo.zadania Zad);


-- 3. Wy�wietl �redni� kwot� wynagrodze� w firmie z maja 2010
--SELECT ROUND(AVG(Wyp.kwota),2) FROM firma.dbo.wyplaty Wyp WHERE
--	MONTH(Wyp.data)=5 AND YEAR(Wyp.data)=2010;


-- 4. Wy�wietl wiek poszczeg�lnych pracownik�w
--SELECT Prac.imie, Prac.nazwisko, (YEAR(GETDATE())-YEAR(Prac.dataUrodzenia)) as 'Wiek' FROM firma.dbo.pracownicy Prac 
--	ORDER BY 'Wiek', Prac.nazwisko, Prac.imie;


-- 5. Wy�wietla wszystkich pracownik�w, kt�rzy powinni przej�� na emerytur�,
--		czyli kobiety powy�ej 60 roku �ycia i m�czyzn powy�ej 65 roku �ycia
--		Nie uwzgl�dniamy tutaj sta�u pracy poniewa� mogli pracowa� wczesniej
--		w innych firmach.
--SELECT Prac.imie, Prac.nazwisko, (YEAR(GETDATE())-YEAR(Prac.dataUrodzenia)) as 'Wiek' FROM firma.dbo.pracownicy Prac WHERE
--	(Prac.plec='K' AND (YEAR(GETDATE())-YEAR(Prac.dataUrodzenia))>60) OR
--	(Prac.plec='M' AND (YEAR(GETDATE())-YEAR(Prac.dataUrodzenia))>65);


-- 6. Wy�wietl projekty oraz oddzia�y, kt�re odpowiadaj� za dany projekt 
--SELECT Proj.nazwa as 'Projekt', Oddz.miasto as 'Oddzia� odpowiedzialny' FROM firma.dbo.projekty Proj, firma.dbo.oddzialy Oddz WHERE Proj.id IN
--	(SELECT GrupProj.projekt FROM firma.dbo.grupyProjektowe_Projekty GrupProj WHERE GrupProj.grupa IN
--		(SELECT Grup.id FROM firma.dbo.grupyProjektowe Grup WHERE Grup.oddzial=Oddz.id));


-- 7. Wy�wietl oddzia�, kt�ry osi�gn�� najlepszy bilans w przeci�gu ca�ego roku 2010
-- SELECT top 1 Oddz.miasto,SUM(Bil.bilans) as 'Bilans' from firma.dbo.oddzialy Oddz, firma.dbo.bilanse Bil where Bil.oddzial=Oddz.id group by Oddz.miasto order by SUM(Bil.bilans) desc;


-- 8. Wy�wietl zadania, kt�re s� w trakcie realizacji oraz pracownik�w, kt�rzy odpowiadaj� za dane zadania
--SELECT Zad.tytul as 'Zadanie w trakcie realizacji', Prac.imie+' '+Prac.nazwisko as 'Wykonawca' FROM firma.dbo.zadania Zad, firma.dbo.pracownicy Prac WHERE 
--	Zad.status='W realizacji' AND Zad.wykonawca=Prac.id;


-- 9. Wy�wietl pracownik�w oraz liczb� zada�, za kt�re odpowiadaj� w kolejno�ci malej�cej
--SELECT Prac.imie+' '+Prac.nazwisko as 'Pracownik',
--	(SELECT COUNT(*) FROM firma.dbo.zadania Zad WHERE Zad.wykonawca=Prac.id) as 'Liczba zada�'
--	FROM firma.dbo.pracownicy Prac ORDER BY 'Liczba zada�' DESC;


--10.Wy�wietl zadania kt�re nie s� realizowane i date zam�wienia 
--SELECT Zad.tytul,Zad.dataDodania FROM firma.dbo.zadania Zad WHERE 
--	Zad.status='Oczekuje'


--11. Wy�wietl oddzia�y i ilo�� projekt�w kt�re realizuj�
--SELECT Oddz.miasto as 'Oddzia�', count(Proj.nazwa) as 'Ilo�� projekt�w' FROM firma.dbo.projekty Proj, firma.dbo.oddzialy Oddz WHERE Proj.id IN
--	(SELECT GrupProj.projekt FROM firma.dbo.grupyProjektowe_Projekty GrupProj WHERE GrupProj.grupa IN
--		(SELECT Grup.id FROM firma.dbo.grupyProjektowe Grup WHERE Grup.oddzial=Oddz.id)) group by Oddz.miasto;


--12. Wy�wietl pracownik�w, kt�rzy nie maj� �adnych zada�
--SELECT Prac.imie+' '+Prac.nazwisko as 'Pracownicy nie posiadaj�cy zadania to:' FROM firma.dbo.pracownicy Prac WHERE Prac.id NOT IN (
--	SELECT wykonawca FROM firma.dbo.zadania WHERE wykonawca IS NOT NULL)


--13. Wy�wietl grupy projektowe i ilo�� pracownik�w kt�rzy do nich nale��
--SELECT DISTINCT GrupProj.rola, 
--	(SELECT COUNT(*) FROM firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrup WHERE 
--		Prac.id=PracGrup.pracownik AND GrupProj.id=PracGrup.grupa) as 'Ilo�� pracownik�w w grupie'
-- FROM firma.dbo.grupyProjektowe GrupProj;


--14. Wy�wietl ��czn� kwot� wyp�at, kt�re zosta�y wyp�acone pracownikom w oddziale w Krakowie
--SELECT SUM(Wyp.kwota) FROM firma.dbo.wyplaty Wyp, firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrupProj, firma.dbo.grupyProjektowe GrupProj WHERE 
--	Wyp.pracownik=Prac.id AND Prac.id=PracGrupProj.pracownik AND PracGrupProj.grupa=GrupProj.id AND GrupProj.oddzial=
--		(SELECT Oddz.id FROM firma.dbo.oddzialy Oddz WHERE Oddz.miasto='Krak�w');


--15. Wy�wietl dla ka�dego ka�dego oddzia�u, w ka�dym roku sum� wyp�at
--SELECT DISTINCT Oddz.miasto as 'Siedziba oddzia�u', YEAR(Wyp1.data) as 'Rok wyp�at',
--(SELECT SUM(Wyp.kwota) FROM firma.dbo.wyplaty Wyp, firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrupProj, firma.dbo.grupyProjektowe GrupProj WHERE 
--	Wyp.pracownik=Prac.id AND Prac.id=PracGrupProj.pracownik AND PracGrupProj.grupa=GrupProj.id AND GrupProj.oddzial=
--		(SELECT Oddz.id FROM firma.dbo.oddzialy Oddz2 WHERE Oddz2.miasto=Oddz.miasto) AND YEAR(Wyp.data)=YEAR(Wyp1.data))as 'Suma wyp�at'
-- FROM firma.dbo.wyplaty Wyp1, firma.dbo.oddzialy Oddz ORDER BY Oddz.miasto;
