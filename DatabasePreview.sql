-------------------------------------------------------------------------------
-- AUTORZY: Ewelina Goñda, Magdalena Antkiewicz
-------------------------------------------------------------------------------



-- 1. Przegl¹d wszystkich tabel w bazie danych
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


-- 2. Wyœwietl wszystkich pracowników, którzy maj¹ jakieœ zadania
--SELECT Prac.imie+' '+Prac.nazwisko as 'Pracownicy posiadaj¹cy zadania to:' FROM firma.dbo.pracownicy Prac WHERE Prac.id IN (
--	SELECT Zad.wykonawca FROM firma.dbo.zadania Zad);


-- 3. Wyœwietl œredni¹ kwotê wynagrodzeñ w firmie z maja 2010
--SELECT ROUND(AVG(Wyp.kwota),2) FROM firma.dbo.wyplaty Wyp WHERE
--	MONTH(Wyp.data)=5 AND YEAR(Wyp.data)=2010;


-- 4. Wyœwietl wiek poszczególnych pracowników
--SELECT Prac.imie, Prac.nazwisko, (YEAR(GETDATE())-YEAR(Prac.dataUrodzenia)) as 'Wiek' FROM firma.dbo.pracownicy Prac 
--	ORDER BY 'Wiek', Prac.nazwisko, Prac.imie;


-- 5. Wyœwietla wszystkich pracowników, którzy powinni przejœæ na emeryturê,
--		czyli kobiety powy¿ej 60 roku ¿ycia i mê¿czyzn powy¿ej 65 roku ¿ycia
--		Nie uwzglêdniamy tutaj sta¿u pracy poniewa¿ mogli pracowaæ wczesniej
--		w innych firmach.
--SELECT Prac.imie, Prac.nazwisko, (YEAR(GETDATE())-YEAR(Prac.dataUrodzenia)) as 'Wiek' FROM firma.dbo.pracownicy Prac WHERE
--	(Prac.plec='K' AND (YEAR(GETDATE())-YEAR(Prac.dataUrodzenia))>60) OR
--	(Prac.plec='M' AND (YEAR(GETDATE())-YEAR(Prac.dataUrodzenia))>65);


-- 6. Wyœwietl projekty oraz oddzia³y, które odpowiadaj¹ za dany projekt 
--SELECT Proj.nazwa as 'Projekt', Oddz.miasto as 'Oddzia³ odpowiedzialny' FROM firma.dbo.projekty Proj, firma.dbo.oddzialy Oddz WHERE Proj.id IN
--	(SELECT GrupProj.projekt FROM firma.dbo.grupyProjektowe_Projekty GrupProj WHERE GrupProj.grupa IN
--		(SELECT Grup.id FROM firma.dbo.grupyProjektowe Grup WHERE Grup.oddzial=Oddz.id));


-- 7. Wyœwietl oddzia³, który osi¹gn¹³ najlepszy bilans w przeci¹gu ca³ego roku 2010
-- SELECT top 1 Oddz.miasto,SUM(Bil.bilans) as 'Bilans' from firma.dbo.oddzialy Oddz, firma.dbo.bilanse Bil where Bil.oddzial=Oddz.id group by Oddz.miasto order by SUM(Bil.bilans) desc;


-- 8. Wyœwietl zadania, które s¹ w trakcie realizacji oraz pracowników, którzy odpowiadaj¹ za dane zadania
--SELECT Zad.tytul as 'Zadanie w trakcie realizacji', Prac.imie+' '+Prac.nazwisko as 'Wykonawca' FROM firma.dbo.zadania Zad, firma.dbo.pracownicy Prac WHERE 
--	Zad.status='W realizacji' AND Zad.wykonawca=Prac.id;


-- 9. Wyœwietl pracowników oraz liczbê zadañ, za które odpowiadaj¹ w kolejnoœci malej¹cej
--SELECT Prac.imie+' '+Prac.nazwisko as 'Pracownik',
--	(SELECT COUNT(*) FROM firma.dbo.zadania Zad WHERE Zad.wykonawca=Prac.id) as 'Liczba zadañ'
--	FROM firma.dbo.pracownicy Prac ORDER BY 'Liczba zadañ' DESC;


--10.Wyœwietl zadania które nie s¹ realizowane i date zamówienia 
--SELECT Zad.tytul,Zad.dataDodania FROM firma.dbo.zadania Zad WHERE 
--	Zad.status='Oczekuje'


--11. Wyœwietl oddzia³y i iloœæ projektów które realizuj¹
--SELECT Oddz.miasto as 'Oddzia³', count(Proj.nazwa) as 'Iloœæ projektów' FROM firma.dbo.projekty Proj, firma.dbo.oddzialy Oddz WHERE Proj.id IN
--	(SELECT GrupProj.projekt FROM firma.dbo.grupyProjektowe_Projekty GrupProj WHERE GrupProj.grupa IN
--		(SELECT Grup.id FROM firma.dbo.grupyProjektowe Grup WHERE Grup.oddzial=Oddz.id)) group by Oddz.miasto;


--12. Wyœwietl pracowników, którzy nie maj¹ ¿adnych zadañ
--SELECT Prac.imie+' '+Prac.nazwisko as 'Pracownicy nie posiadaj¹cy zadania to:' FROM firma.dbo.pracownicy Prac WHERE Prac.id NOT IN (
--	SELECT wykonawca FROM firma.dbo.zadania WHERE wykonawca IS NOT NULL)


--13. Wyœwietl grupy projektowe i iloœæ pracowników którzy do nich nale¿¹
--SELECT DISTINCT GrupProj.rola, 
--	(SELECT COUNT(*) FROM firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrup WHERE 
--		Prac.id=PracGrup.pracownik AND GrupProj.id=PracGrup.grupa) as 'Iloœæ pracowników w grupie'
-- FROM firma.dbo.grupyProjektowe GrupProj;


--14. Wyœwietl ³¹czn¹ kwotê wyp³at, które zosta³y wyp³acone pracownikom w oddziale w Krakowie
--SELECT SUM(Wyp.kwota) FROM firma.dbo.wyplaty Wyp, firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrupProj, firma.dbo.grupyProjektowe GrupProj WHERE 
--	Wyp.pracownik=Prac.id AND Prac.id=PracGrupProj.pracownik AND PracGrupProj.grupa=GrupProj.id AND GrupProj.oddzial=
--		(SELECT Oddz.id FROM firma.dbo.oddzialy Oddz WHERE Oddz.miasto='Kraków');


--15. Wyœwietl dla ka¿dego ka¿dego oddzia³u, w ka¿dym roku sumê wyp³at
--SELECT DISTINCT Oddz.miasto as 'Siedziba oddzia³u', YEAR(Wyp1.data) as 'Rok wyp³at',
--(SELECT SUM(Wyp.kwota) FROM firma.dbo.wyplaty Wyp, firma.dbo.pracownicy Prac, firma.dbo.pracownicy_GrupyProjektowe PracGrupProj, firma.dbo.grupyProjektowe GrupProj WHERE 
--	Wyp.pracownik=Prac.id AND Prac.id=PracGrupProj.pracownik AND PracGrupProj.grupa=GrupProj.id AND GrupProj.oddzial=
--		(SELECT Oddz.id FROM firma.dbo.oddzialy Oddz2 WHERE Oddz2.miasto=Oddz.miasto) AND YEAR(Wyp.data)=YEAR(Wyp1.data))as 'Suma wyp³at'
-- FROM firma.dbo.wyplaty Wyp1, firma.dbo.oddzialy Oddz ORDER BY Oddz.miasto;
