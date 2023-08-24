-- update rekordow
UPDATE product_list 
	SET warehouse_id=2, descript = 'Mimas A7 - Artix 7 - płytka rozwojowa FPGA'
	WHERE symbol = '12892';
UPDATE product_list 
	SET descript = 'Mimas v2 - Spartan 6 - płytka rozwojowa FPGA' 
	WHERE symbol = '5904';
UPDATE product_list 
	SET descript = 'Raspberry Pi 4 model B WiFi DualBand Bluetooth 1GB RAM 1,5GHz' 
	WHERE symbol = '14645';
UPDATE product_list 
	SET descript= 'Kamera HD G OV5647 5Mpx - szerokokątna - dla Raspberry Pi - Waveshare 10344' 
	WHERE symbol = '4524';

-- kasowanie wierszy
DELETE FROM payment_list WHERE symbol = 'WZ';

-- lista produktow wraz z iloscia wystapien w bazie
SELECT 
	name AS nazwa_produktu,
	COUNT(name) AS ilosc_wystapien
FROM v_prod_list 
GROUP BY name 
ORDER BY name ASC;
	
-- liczba wystawionych opinii dot. produktu, posortowane wedlug ilosci opinii zaczynajac od najwiekszej
-- pokazuje najbardziej popularne produkty
SELECT
	v_review_list.nazwa_produktu,
	COUNT (v_review_list.nazwa_produktu) AS ilosc_opinii
	FROM v_review_list 
	GROUP BY v_review_list.nazwa_produktu
	ORDER BY ilosc_opinii DESC;

-- wybor rodzaju platnosci na BLIK dla prod. ktore zawieraja platnosc zdefiniowanego typu '%' dla kuriera DHL
SELECT * 
	FROM product_list AS pl 
	JOIN v_DHL_pay AS vp ON pl.payment_id = vp.payment_id
	WHERE 
		pl.payment_id = vp.payment_id
		AND vp.symbol LIKE ('BLIK%')
	ORDER BY pl.symbol ASC;

--zmiana
