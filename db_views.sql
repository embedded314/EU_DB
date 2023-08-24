-- tworzenie widokow
-- v_prod_list -> lista wszystkich produktow posortowana rosnaco wg. nazwy i symbolu
-- o niepowtarzajacych sie nazwach
DROP VIEW IF EXISTS v_prod_list;
CREATE VIEW v_prod_list AS
	SELECT 
		pl.symbol AS symbol_pl,
		pl.warehouse_pos,
		pl.name,
		wl.symbol AS symbol_wl,
		prl.price_disc,
		prl.VAT,
		prl.price_desc,
		dl.symbol AS symbol_dl
	FROM product_list AS pl
	JOIN warehouse_list AS wl ON pl.warehouse_id=wl.id
	JOIN price_list AS prl ON pl.price_id=prl.id
	JOIN delivery_list AS dl ON pl.delivery_id=dl.id
	ORDER BY pl.name ASC, pl.symbol ASC;

-- v_review_list -> lista wszystkich opinii posortowana rosnaco wg. nazwy i symbolu
DROP VIEW IF EXISTS v_review_list;
CREATE VIEW v_review_list AS
	SELECT 
		pl.name AS nazwa_produktu, 
		rc.stars AS ilosc_gwiazdek,
		rc.com_header AS naglowek_opinii,
		rc.com_cont AS opinia
	FROM review_list AS rl
	JOIN review_content AS rc ON rl.review_id = rc.id
	JOIN product_list AS pl ON rl.product_id = pl.id
	ORDER BY pl.name ASC;

DROP VIEW IF EXISTS v_delivery_list;
CREATE VIEW v_delivery_list AS
	SELECT 
		dl.del_price, 
		dl.symbol, 
		cl.name, 
		cl.descript
	FROM courier_list AS cl 
	JOIN delivery_list AS dl ON cl.id = dl.courier_id
	ORDER BY cl.name;

DROP VIEW IF EXISTS v_DHL_pay;
-- polaczenie identyfikatora typu platnosci z oddzialem kuriera
CREATE VIEW v_payment_list AS
	-- znalezienie wszystkich rodzajow platnosci ktore zawieraja w sobie wybrany fragment tekstu
	SELECT 
	 	pl.id AS payment_id,
	 	pl.symbol,
	 	pl.descript,
	 	cl.name,
	 	cl.country_list
		FROM payment_list AS pl 
		JOIN courier_list AS cl ON pl.courier_id = cl.id
		WHERE pl.descript SIMILAR TO '%\DHL\M%'
		ORDER BY pl.symbol;
