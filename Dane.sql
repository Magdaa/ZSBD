-------------------------------------------------------------------------------
-- AUTORZY: Ewelina Goñda, Magdalena Antkiewicz
-------------------------------------------------------------------------------



-- UZUPE£NIENIE TABELI PRACOWNIKÓW
INSERT INTO firma.dbo.pracownicy
VALUES('Tkaczyk','Jerzy','1964/10/15','64101500456','M','0427650912','512836172','ul. Matejki','82','£ódŸ','93-162','2010/01/01',NULL,'Dyrektor firmy');
INSERT INTO firma.dbo.pracownicy
VALUES('Nowak','Stanis³aw','1954/07/19','54071905426','M','0437658432','600835475','ul. 1 maja','32','£ódŸ','95-435','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Kubicki','Rafa³','1984/04/23','94042363428','M','0295618452','518364823','ul. Szeroka','11','Piotrków Trybunalski','98-053','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Kowalska','Joanna','1986/01/21','86012167239','K','0479326469','698537617','ul. Tkaczew','87','£owicz','99-400','2010/01/01',NULL,'Pracownik HR');
INSERT INTO firma.dbo.pracownicy
VALUES('Jarzêbski','Konrad','1983/02/02','83020243416','M','4219351380','500472491','ul. Dostawcza','23','Kraków','93-852','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Wilk','Karolina','1989/05/31','89053163084','K','8372064892','512835671','ul. Krótka','12','£ódŸ','95-435','2010/01/01',NULL,'Dyrektor oddzia³u');
INSERT INTO firma.dbo.pracownicy
VALUES('Kie³basiñska','Justyna','1974/11/29','74112973928','K','0172639165','603728542','ul. Zielona','34','£ódŸ','95-619','2010/01/01',NULL,'Koordynator Projektu');
INSERT INTO firma.dbo.pracownicy
VALUES('Jarosiñski','Mateusz','1979/03/02','79030272937','M','0529471643','513064816','ul. Jab³eczna','2','£owicz','90-415','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Kromska','Irena','1943/02/23','43024305426','K','0364917293','600835475','al. Politechniki','7','£ódŸ','90-234','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Jarzêbska','Sylwia','1988/03/14','88031482038','K','8304746281','798163826','ul. Cytrynowa','231','£ódŸ','95-435','2010/01/01',NULL,'Pracownik HR');
INSERT INTO firma.dbo.pracownicy
VALUES('Morski','Krystian','1954/07/19','54071905426','M','0437658432','600835475','ul. 1 maja','32','£ódŸ','95-435','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Antosik','Damian','1984/04/23','94042363428','M','0295618452','518364823','ul. Szeroka','11','Piotrków Trybunalski','98-053','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Zagawa','Teresa','1986/01/21','86012167239','K','0479326469','698537617','ul. Tkaczew','87','£owicz','99-400','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Korek','Witold','1983/02/02','83020243416','M','4219351380','500472491','ul. Dostawcza','23','Kraków','93-852','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Cegliñska','Wiktoria','1989/05/31','89053163084','K','8372064892','512835671','ul. Krótka','12','£ódŸ','95-435','2010/01/01',NULL,'Dyrektor oddzia³u');
INSERT INTO firma.dbo.pracownicy
VALUES('Mróz','Miros³aw','1974/11/29','74112973928','M','0172639165','603728542','ul. Zielona','34','£ódŸ','95-619','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Kotlarski','£ukasz','1979/03/02','79030272937','M','0529471643','513064816','ul. Jab³eczna','2','£owicz','90-415','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('S³oma','Anna','1943/02/23','43024305426','K','0364917293','600835475','al. Politechniki','7','£ódŸ','90-234','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Budzyñska','Karolina','1988/03/14','88031482038','K','8304746281','798163826','ul. Cytrynowa','231','£ódŸ','95-435','2010/01/01',NULL,'Zwyk³y pracownik');
INSERT INTO firma.dbo.pracownicy
VALUES('Czerwiñski','Bart³omiej','1988/03/14','88031482038','M','8304746281','798163826','ul. Cytrynowa','231','£ódŸ','95-435','2010/01/01',NULL,'Zwyk³y pracownik');

GO
SELECT count(*) as 'Iloœæ rekordów w tabeli pracownicy' FROM firma.dbo.pracownicy;
GO
SELECT * FROM firma.dbo.pracownicy;
GO



-- UZUPE£NIENIE TABELI PROJEKTY
INSERT INTO firma.dbo.projekty VALUES('Projekt1',1,2500000,	100,'2010/01/01','2011/12/01');
INSERT INTO firma.dbo.projekty VALUES('Projekt2',1,500000,	100,'2010/05/15','2011/12/01');
INSERT INTO firma.dbo.projekty VALUES('Projekt3',1,1700000,	100,'2010/10/23','2011/05/01');
INSERT INTO firma.dbo.projekty VALUES('Projekt4',1,30000,	95,	'2011/07/01','2012/04/01');
INSERT INTO firma.dbo.projekty VALUES('Projekt5',1,5000000,	56, '2011/09/12','2012/12/01');

GO
SELECT count(*) as 'Iloœæ rekordów w tabeli projekty' FROM firma.dbo.projekty;
GO
SELECT * FROM firma.dbo.projekty;
GO



-- UZUPE£NIENIE TABELI ODDZIA£Y
INSERT INTO firma.dbo.oddzialy VALUES('£ódŸ', 6);
INSERT INTO firma.dbo.oddzialy VALUES('Kraków', 15);

GO
SELECT count(*) as 'Iloœæ rekordów w tabeli oddzialy' FROM firma.dbo.oddzialy;
GO
SELECT * FROM firma.dbo.oddzialy;
GO



-- UZUPE£NIENIE TABELI GRUPY PROJEKTOWE
INSERT INTO firma.dbo.grupyProjektowe VALUES(1, 'Designer', 2);
INSERT INTO firma.dbo.grupyProjektowe VALUES(1, 'Grafik', 3);
INSERT INTO firma.dbo.grupyProjektowe VALUES(1, 'Level designer', 5);
INSERT INTO firma.dbo.grupyProjektowe VALUES(1, 'Programista', 8);
INSERT INTO firma.dbo.grupyProjektowe VALUES(1, 'Tester', 9);

INSERT INTO firma.dbo.grupyProjektowe VALUES(2, 'Designer', 11);
INSERT INTO firma.dbo.grupyProjektowe VALUES(2, 'Grafik', 12);
INSERT INTO firma.dbo.grupyProjektowe VALUES(2, 'Level designer', 13);
INSERT INTO firma.dbo.grupyProjektowe VALUES(2, 'Programista', 14);
INSERT INTO firma.dbo.grupyProjektowe VALUES(2, 'Tester', 16);

GO
SELECT count(*) as 'Iloœæ rekordów w tabeli grupy projektowe' FROM firma.dbo.grupyProjektowe;
GO
SELECT * FROM firma.dbo.grupyProjektowe;
GO



-- UZUPE£NIENIE TABELI PRACOWNICY - GRUPY PROJEKTOWE
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(2, 1);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(3, 2);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(4, 3);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(8, 4);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(9, 5);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(11, 6);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(12, 7);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(13, 8);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(14, 9);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(16, 10);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(17, 4);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(18, 2);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(19, 7);
INSERT INTO firma.dbo.pracownicy_GrupyProjektowe VALUES(20, 9);

GO
SELECT count(*) as 'Iloœæ rekordów w tabeli po³¹czeniowej Pracownicy_GrupyProjektowe' FROM firma.dbo.pracownicy_GrupyProjektowe;
GO
SELECT * FROM firma.dbo.pracownicy_GrupyProjektowe;
GO



-- UZUPE£NIENIE TABELI GRUPY PROJEKTOWE - PROJEKTY
INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(4, 1);
INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(4, 2);
INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(4, 3);
INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(4, 4);
INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(4, 5);

INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(5, 6);
INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(5, 7);
INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(5, 8);
INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(5, 9);
INSERT INTO firma.dbo.grupyProjektowe_Projekty VALUES(5, 10);


GO
SELECT count(*) as 'Iloœæ rekordów w tabeli po³¹czeniowej GrupyProjektowe_Pracownicy' FROM firma.dbo.grupyProjektowe_Projekty;
GO
SELECT * FROM firma.dbo.grupyProjektowe_Projekty;
GO



-- UZUPE£NIENIE TABELI WYP£ATY
INSERT INTO firma.dbo.wyplaty VALUES(1432, 1, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(1225, 1, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2752, 1, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1611, 1, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2119, 1, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1801, 1, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3144, 1, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3843, 1, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3125, 1, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3425, 1, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2562, 1, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3689, 1, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2625, 2, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(1748, 2, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3194, 2, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1371, 2, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(1322, 2, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2054, 2, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2235, 2, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1625, 2, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3722, 2, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2090, 2, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3940, 2, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(1575, 2, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3401, 3, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(1372, 3, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2851, 3, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1343, 3, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2504, 3, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2258, 3, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3402, 3, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1684, 3, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3836, 3, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1265, 3, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3050, 3, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2076, 3, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2129, 4, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3125, 4, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3048, 4, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1652, 4, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2366, 4, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2121, 4, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3844, 4, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3223, 4, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2302, 4, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2302, 4, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3199, 4, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3600, 4, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(1646, 5, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3228, 5, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3671, 5, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3990, 5, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3424, 5, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3429, 5, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(1238, 5, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3341, 5, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(1284, 5, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2376, 5, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2210, 5, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(1946, 5, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2950, 6, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3001, 6, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2538, 6, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2066, 6, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(1222, 6, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2077, 6, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3853, 6, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2560, 6, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2697, 6, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2317, 6, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3241, 6, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2196, 6, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3005, 7, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(1783, 7, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3259, 7, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2801, 7, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2246, 7, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1917, 7, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3273, 7, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2299, 7, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2172, 7, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3251, 7, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3697, 7, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3276, 7, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2586, 8, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3412, 8, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2260, 8, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1607, 8, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(1226, 8, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3708, 8, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(1992, 8, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3753, 8, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2115, 8, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2302, 8, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2701, 8, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3364, 8, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3582, 9, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2977, 9, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3201, 9, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1424, 9, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2448, 9, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1839, 9, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2102, 9, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3328, 9, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3986, 9, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2675, 9, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2184, 9, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2840, 9, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(1370, 10, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2437, 10, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2295, 10, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3367, 10, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3102, 10, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3911, 10, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3774, 10, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3699, 10, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3303, 10, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3262, 10, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3479, 10, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(1810, 10, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3817, 11, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3446, 11, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2533, 11, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2988, 11, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(1525, 11, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3488, 11, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(1281, 11, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1903, 11, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3082, 11, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3894, 11, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3218, 11, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3268, 11, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2716, 12, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3049, 12, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3850, 12, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1533, 12, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2348, 12, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1569, 12, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3289, 12, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3911, 12, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2427, 12, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3419, 12, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1437, 12, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2788, 12, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2613, 13, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2624, 13, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1850, 13, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2204, 13, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2528, 13, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3001, 13, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(1261, 13, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1520, 13, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3498, 13, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2590, 13, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1607, 13, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3001, 13, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3305, 14, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3113, 14, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3002, 14, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1698, 14, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2593, 14, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1480, 14, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3758, 14, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1475, 14, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3219, 14, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3026, 14, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1851, 14, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(1253, 14, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(1260, 15, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3440, 15, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2551, 15, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2934, 15, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3972, 15, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3567, 15, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3382, 15, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1598, 15, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3209, 15, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3744, 15, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1575, 15, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2900, 15, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2837, 16, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3076, 16, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3375, 16, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1280, 16, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3833, 16, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2897, 16, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3770, 16, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1325, 16, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2642, 16, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2048, 16, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2227, 16, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3235, 16, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2567, 17, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2790, 17, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2518, 17, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2146, 17, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3660, 17, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3961, 17, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3569, 17, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3587, 17, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(1973, 17, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1797, 17, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2144, 17, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3087, 17, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(1650, 18, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2326, 18, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1547, 18, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3930, 18, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3208, 18, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1209, 18, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3792, 18, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3560, 18, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2738, 18, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1301, 18, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2861, 18, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3517, 18, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2104, 19, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3678, 19, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1642, 19, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1521, 19, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3256, 19, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1725, 19, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2611, 19, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3211, 19, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2412, 19, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3315, 19, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1567, 19, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2382, 19, '2010/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2249, 20, '2010/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2435, 20, '2010/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1937, 20, '2010/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3248, 20, '2010/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(1375, 20, '2010/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1987, 20, '2010/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2127, 20, '2010/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2239, 20, '2010/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2132, 20, '2010/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1488, 20, '2010/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3629, 20, '2010/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2706, 20, '2010/12/01');

INSERT INTO firma.dbo.wyplaty VALUES(1508, 1, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2118, 1, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1646, 1, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3277, 1, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2070, 1, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2794, 1, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3383, 1, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3599, 1, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2082, 1, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1745, 1, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3315, 1, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2357, 1, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2464, 2, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2915, 2, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1606, 2, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2147, 2, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3522, 2, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1541, 2, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(1490, 2, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1284, 2, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(1916, 2, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2556, 2, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3185, 2, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2163, 2, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2372, 3, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3943, 3, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1280, 3, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2353, 3, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(1819, 3, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1904, 3, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3596, 3, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2953, 3, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3349, 3, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1204, 3, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1537, 3, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2210, 3, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2985, 4, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3944, 4, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3001, 4, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2227, 4, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2147, 4, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2510, 4, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2578, 4, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2676, 4, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3498, 4, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2756, 4, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1771, 4, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2549, 4, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(1380, 5, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3920, 5, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2212, 5, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3942, 5, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(1680, 5, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2137, 5, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2068, 5, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2951, 5, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2932, 5, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3482, 5, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2105, 5, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2127, 5, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2713, 6, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2229, 6, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2980, 6, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1377, 6, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2149, 6, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1561, 6, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3007, 6, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2459, 6, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2578, 6, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3395, 6, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3161, 6, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3577, 6, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2540, 7, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3263, 7, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3136, 7, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3405, 7, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3978, 7, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1708, 7, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2665, 7, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3615, 7, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3372, 7, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2730, 7, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2173, 7, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(1898, 7, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3691, 8, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3653, 8, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2473, 8, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2412, 8, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3135, 8, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2585, 8, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3277, 8, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3503, 8, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3039, 8, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2074, 8, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3513, 8, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3917, 8, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3530, 9, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2400, 9, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1727, 9, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3137, 9, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3748, 9, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3311, 9, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3971, 9, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1984, 9, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(1958, 9, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2635, 9, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2602, 9, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2417, 9, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3000, 10, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2663, 10, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2973, 10, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2423, 10, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2017, 10, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2489, 10, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2755, 10, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3983, 10, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(1256, 10, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2282, 10, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1686, 10, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2496, 10, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3088, 11, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(1795, 11, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3324, 11, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3992, 11, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(1318, 11, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3658, 11, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(1738, 11, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1665, 11, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3749, 11, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3218, 11, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3874, 11, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2778, 11, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3981, 12, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3527, 12, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(3866, 12, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1260, 12, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2759, 12, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1389, 12, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3939, 12, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2256, 12, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2250, 12, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1255, 12, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3411, 12, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(1672, 12, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3611, 13, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2053, 13, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2686, 13, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1750, 13, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3319, 13, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3530, 13, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3861, 13, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2448, 13, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(1913, 13, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3230, 13, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1248, 13, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3153, 13, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3987, 14, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3978, 14, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1865, 14, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2300, 14, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2097, 14, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2136, 14, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2667, 14, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3782, 14, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2788, 14, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1395, 14, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(2442, 14, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2489, 14, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2622, 15, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2694, 15, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2423, 15, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(3866, 15, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2342, 15, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3430, 15, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(1445, 15, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3032, 15, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2384, 15, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2851, 15, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1581, 15, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3264, 15, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2172, 16, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3988, 16, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(2346, 16, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1419, 16, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3357, 16, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2626, 16, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2064, 16, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1951, 16, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3478, 16, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1913, 16, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1273, 16, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2780, 16, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3523, 17, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2838, 17, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1359, 17, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1314, 17, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2588, 17, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(3629, 17, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(2883, 17, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(3416, 17, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3611, 17, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1396, 17, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3127, 17, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(1824, 17, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(2306, 18, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(3994, 18, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1305, 18, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2483, 18, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(2985, 18, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2216, 18, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(1969, 18, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(2335, 18, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(3597, 18, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(2601, 18, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1328, 18, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(2108, 18, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3789, 19, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(2447, 19, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1624, 19, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(1362, 19, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3330, 19, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(1690, 19, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3010, 19, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1909, 19, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2621, 19, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(3643, 19, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(1543, 19, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3503, 19, '2011/12/01');
INSERT INTO firma.dbo.wyplaty VALUES(3271, 20, '2011/01/01');
INSERT INTO firma.dbo.wyplaty VALUES(1331, 20, '2011/02/01');
INSERT INTO firma.dbo.wyplaty VALUES(1644, 20, '2011/03/01');
INSERT INTO firma.dbo.wyplaty VALUES(2754, 20, '2011/04/01');
INSERT INTO firma.dbo.wyplaty VALUES(3967, 20, '2011/05/01');
INSERT INTO firma.dbo.wyplaty VALUES(2164, 20, '2011/06/01');
INSERT INTO firma.dbo.wyplaty VALUES(3653, 20, '2011/07/01');
INSERT INTO firma.dbo.wyplaty VALUES(1975, 20, '2011/08/01');
INSERT INTO firma.dbo.wyplaty VALUES(2060, 20, '2011/09/01');
INSERT INTO firma.dbo.wyplaty VALUES(1721, 20, '2011/10/01');
INSERT INTO firma.dbo.wyplaty VALUES(3113, 20, '2011/11/01');
INSERT INTO firma.dbo.wyplaty VALUES(3362, 20, '2011/12/01');

GO
SELECT count(*) as 'Iloœæ rekordów w tabeli wyp³aty' FROM firma.dbo.wyplaty;
GO
SELECT * FROM firma.dbo.wyplaty;
GO



-- UZUPE£NIENIE TABELI WP£ATY
INSERT INTO firma.dbo.wplaty VALUES(2500000, 1, '2010/01/01', 'Klient 1');
INSERT INTO firma.dbo.wplaty VALUES(500000 , 2, '2010/05/15', 'Klient 2');
INSERT INTO firma.dbo.wplaty VALUES(1700000, 3, '2010/10/23', 'Klient 3');
INSERT INTO firma.dbo.wplaty VALUES(15000  , 4, '2011/07/01', 'Klient 4');
INSERT INTO firma.dbo.wplaty VALUES(15000  , 4, '2012/01/01', 'Klient 4');
INSERT INTO firma.dbo.wplaty VALUES(1000000, 5, '2011/09/12', 'Klient 5');
INSERT INTO firma.dbo.wplaty VALUES(1000000, 5, '2011/11/01', 'Klient 5');
INSERT INTO firma.dbo.wplaty VALUES(1000000, 5, '2012/01/01', 'Klient 5');

GO
SELECT count(*) as 'Iloœæ rekordów w tabeli zadania' FROM firma.dbo.wplaty;
GO
SELECT * FROM firma.dbo.wplaty;
GO



-- UZUPE£NIENIE TABELI ZADANIA
INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'W realizacji',	1, 2,		'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Oczekuje',		1, NULL,	'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'W realizacji',	1, 2,		'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Ukoñczone',		1, 2,		'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'W realizacji',	1, 2,		'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'W realizacji',	1, 2,		'2011/01/25');

INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'Ukoñczone',		2, 18,		'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Oczekuje',		2, NULL,	'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'W realizacji',	2, 3,		'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Ukoñczone',		2, 3,		'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'W realizacji',	2, 18,		'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'Ukoñczone',		2, 18,		'2011/01/25');

INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'W realizacji',	3, 4,		'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Oczekuje',		3, NULL,	'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'W realizacji',	3, 4,		'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Oczekuje',		3, NULL,	'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'Ukoñczone',		3, 4,		'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'W realizacji',	3, 4,		'2011/01/25');

INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'W realizacji',	4, 8,		'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Ukoñczone',		4, 17,		'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'W realizacji',	4, 8,		'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Ukoñczone',		4, 17,		'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'W realizacji',	4, 8,		'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'Ukoñczone',		4, 8,		'2011/01/25');

INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'W realizacji',	5, 9,		'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Oczekuje',		5, NULL,	'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'Oczekuje',		5, NULL,	'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Oczekuje',		5, NULL,	'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'Oczekuje',		5, NULL,	'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'W realizacji',	5, 9,		'2011/01/25');

INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'W realizacji',	6, 11,		'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Oczekuje',		6, NULL,	'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'W realizacji',	6, 11,		'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Ukoñczone',		6, 11,		'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'Oczekuje',		6, NULL,	'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'Ukoñczone',		6, 11,		'2011/01/25');

INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'Ukoñczone',		7, 12,		'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Oczekuje',		7, NULL,	'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'W realizacji',	7, 19,		'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Ukoñczone',		7, 12,		'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'Ukoñczone',		7, 19,		'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'Oczekuje',		7, NULL,	'2011/01/25');

INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'W realizacji',	8, 13,		'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Oczekuje',		8, NULL,	'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'W realizacji',	8, 13,		'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Ukoñczone',		8, 13,		'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'W realizacji',	8, 13,		'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'W realizacji',	8, 13,		'2011/01/25');

INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'W realizacji',	9, 14,		'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Oczekuje',		9, NULL,	'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'Oczekuje',		9, NULL,	'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Ukoñczone',		9, 20,		'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'W realizacji',	9, 14,		'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'Ukoñczone',		9, 20,		'2011/01/25');

INSERT INTO firma.dbo.zadania VALUES('Zadanie1', 'Treœæ zadania', 'Oczekuje',		10, NULL,	'2011/05/23');
INSERT INTO firma.dbo.zadania VALUES('Zadanie2', 'Treœæ zadania', 'Oczekuje',		10, NULL,	'2011/06/12');
INSERT INTO firma.dbo.zadania VALUES('Zadanie3', 'Treœæ zadania', 'Ukoñczone',		10, 16,		'2011/09/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie4', 'Treœæ zadania', 'Ukoñczone',		10, 16,		'2010/04/05');
INSERT INTO firma.dbo.zadania VALUES('Zadanie5', 'Treœæ zadania', 'W realizacji',	10, 16,		'2011/11/09');
INSERT INTO firma.dbo.zadania VALUES('Zadanie6', 'Treœæ zadania', 'W realizacji',	10, 16,		'2011/01/25');

GO
SELECT count(*) as 'Iloœæ rekordów w tabeli zadania' FROM firma.dbo.zadania;
GO
SELECT * FROM firma.dbo.zadania;
GO





-- UZUPE£NIENIE TABELI ZG£OSZENIA
INSERT INTO firma.dbo.zgloszenia VALUES('Wysoki', 'Tytu³ 1', 'Treœæ zg³oszenia', 1);
INSERT INTO firma.dbo.zgloszenia VALUES('Niski', 'Tytu³ 2', 'Treœæ zg³oszenia', 1);
INSERT INTO firma.dbo.zgloszenia VALUES('Zwyk³y', 'Tytu³ 3', 'Treœæ zg³oszenia', 1);
INSERT INTO firma.dbo.zgloszenia VALUES('Bardzo wysoki', 'Tytu³ 4', 'Treœæ zg³oszenia', 1);
INSERT INTO firma.dbo.zgloszenia VALUES('Niski', 'Tytu³ 5', 'Treœæ zg³oszenia', 1);

INSERT INTO firma.dbo.zgloszenia VALUES('Zwyk³y', 'Tytu³ 6', 'Treœæ zg³oszenia', 2);
INSERT INTO firma.dbo.zgloszenia VALUES('Wysoki', 'Tytu³ 7', 'Treœæ zg³oszenia', 2);
INSERT INTO firma.dbo.zgloszenia VALUES('Bardzo wysoki', 'Tytu³ 8', 'Treœæ zg³oszenia', 2);
INSERT INTO firma.dbo.zgloszenia VALUES('Zwyk³y', 'Tytu³ 9', 'Treœæ zg³oszenia', 2);
INSERT INTO firma.dbo.zgloszenia VALUES('Niski', 'Tytu³ 10', 'Treœæ zg³oszenia',2);

GO
SELECT count(*) as 'Iloœæ rekordów w tabeli zg³oszenia' FROM firma.dbo.zgloszenia;
GO
SELECT * FROM firma.dbo.zgloszenia;
GO



-- UZUPE£NIENIE TABELI BILANSE
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/01/01', '2010/01/30', 16396);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/02/01', '2010/02/28', 92495);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/03/01', '2010/03/30', 25124);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/04/01', '2010/04/30', 74509);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/05/01', '2010/05/30', 15211);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/06/01', '2010/06/30', 84182);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/07/01', '2010/07/30', 63814);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/08/01', '2010/08/30', 20523);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/09/01', '2010/09/30', 83062);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/10/01', '2010/10/30', 50574);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/11/01', '2010/11/30', 46957);
INSERT INTO firma.dbo.bilanse VALUES(1, '2010/12/01', '2010/12/30', 42242);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/01/01', '2010/01/30', 63443);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/02/01', '2010/02/28', 338);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/03/01', '2010/03/30', 65240);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/04/01', '2010/04/30', 82065);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/05/01', '2010/05/30', -6492);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/06/01', '2010/06/30', 35602);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/07/01', '2010/07/30', 74286);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/08/01', '2010/08/30', 11987);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/09/01', '2010/09/30', -4317);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/10/01', '2010/10/30', 34125);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/11/01', '2010/11/30', 22913);
INSERT INTO firma.dbo.bilanse VALUES(2, '2010/12/01', '2010/12/30', 55209);

INSERT INTO firma.dbo.bilanse VALUES(1, '2011/01/01', '2011/01/30', 84008);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/02/01', '2011/02/28', 19211);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/03/01', '2011/03/30', 66086);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/04/01', '2011/04/30', 57865);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/05/01', '2011/05/30', 26058);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/06/01', '2011/06/30', 80587);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/07/01', '2011/07/30', 14600);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/08/01', '2011/08/30', 19038);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/09/01', '2011/09/30', 54232);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/10/01', '2011/10/30', 2852);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/11/01', '2011/11/30', 44867);
INSERT INTO firma.dbo.bilanse VALUES(1, '2011/12/01', '2011/12/30', -4286);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/01/01', '2011/01/30', 74108);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/02/01', '2011/02/28', -5591);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/03/01', '2011/03/30', 72423);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/04/01', '2011/04/30', 53321);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/05/01', '2011/05/30', 21751);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/06/01', '2011/06/30', -1531);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/07/01', '2011/07/30', 65053);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/08/01', '2011/08/30', 63500);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/09/01', '2011/09/30', 81619);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/10/01', '2011/10/30', 3603);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/11/01', '2011/11/30', 66565);
INSERT INTO firma.dbo.bilanse VALUES(2, '2011/12/01', '2011/12/30', 35221);


GO
SELECT count(*) as 'Iloœæ rekordów w tabeli bilanse' FROM firma.dbo.bilanse;
GO
SELECT * FROM firma.dbo.bilanse;
GO

