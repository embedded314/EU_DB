/*1. Przygotować skrypt dodający 4 wiersze do tabeli komputery wg założeń:
	2 komputery do działu płac, 
	1 do działu IT, 
	1 do działu Gospodarczego
	1 komputer z windows10 x32, 1 z Fedora 24 x64, 1 Windows 7 x64, 1 windowsem 8 (architektura dowolna)
*/
INSERT INTO komputery (dzial, os_system, architektura, nazwa) VALUES ('PLA', 'WIN 10', 'x32', 'komp 1');
INSERT INTO komputery (dzial, os_system, architektura, nazwa) VALUES ('PLA', 'Fedora 24', 'x64', 'komp 2');
INSERT INTO komputery (dzial, os_system, architektura, nazwa) VALUES ('IT',  'WIN 7', 'x64', 'komp 3');
INSERT INTO komputery (dzial, os_system, architektura, nazwa) VALUES ('GSP', 'WIN 8', null, 'komp 4');
/*
lub jezeli rekord bedzie dodawany zawsze z ta sama liczba kolumn
INSERT INTO komputery VALUES ('PLA', 'WIN 10', 'x32', 'komp 1')
...
*/

/*2. Przygotować skrypt dodający 1 wiersz do tabeli users wg założeń:
	Użytkownik to imię i nazwisko studenta,
	login wg wzoru pierwsza litera imienia „_” nazwisko,
	hasło to numer indeksu,
	funkcja Student
	komórka organizacyjna to Finanse.
*/
INSERT INTO users (nazwa, login, haslo, funkcja, dzial) VALUES ('Krzysztof Siejka', 'k_siejka', '7884', 'student', 'FIN');

/*3. Utworzyć zapytanie z tabeli komputery, zapytanie ma wyświetlić kolumny z etykietami:
	„Nazwa komputera”,
	„Lokalizacja komputera”,
	„System operacyjny”.
*/
SELECT nazwa AS "Nazwa komputera", dzial AS "Lokalizacja komputera", os_system AS "System operacyjny" FROM komputery;

/*4. Utworzyć zapytanie z tabeli users, zapytanie ma wyświetlić kolumny z etykietami:
	„Identyfikator”, „Login”,”Imię i nazwisko z stanowiskiem”,
	ostatnia kolumna ma zwierać imię i nazwisko pracownika i jego funkcję oddzielone znakiem „ : ”
*/
SELECT id AS "Identyfikator", login AS "Login", CONCAT (nazwa, " : ", funkcja) AS "Imie i nazwisko ze stanowiskiem" FROM users;

/*5. Utworzyć zapytanie z tabeli zgloszenie, zapytanie ma wyświetlić kolumny z następującycmi etykietami:
	„Id zgłoszenia”.”Data zgłoszenia”,”Termin rozwiązania”,Data rozwiązania”, „Opis z wyjaśnieniem”, „Opóźnienie”
	kolumna „opis z wyjaśnieniem” - ma zawierać opis i wyjaśnienie oddzielone słowem „wyjasnienie:”
	
	kolumna opóźnienie ma być różnicą pomiędzy daty rozwiązania i terminem rozwiązania
	Jedyny akceptowalny motor bazy danych to postgresql
*/
SELECT id AS "Id zgloszenia", 
	data_zgl AS "Data zgloszenia", 
	term_rozw AS "Termin rozwiazania", 
	data_rozw AS "Data rozwiazania", 
	CONCAT (opis, ' wyjasnienie: ', wyjasnienie) AS "Opis z wyjasnieniem", 
	DATE_PART('day', data_rozw::timestamp - term_rozw::timestamp) AS "Opoznienie"
FROM zgloszenie;
