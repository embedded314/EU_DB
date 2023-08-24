CREATE DATABASE mod_warehouse;

-- lista magazynow
CREATE TABLE IF NOT EXISTS warehouse_list (
	id SERIAL,
	symbol VARCHAR (10) NOT NULL, -- symbol magazynu
	name VARCHAR (50),
	CONSTRAINT pk_warehouse_list PRIMARY KEY (id)
	);
-- lista upustu cen towaru
CREATE TABLE IF NOT EXISTS price_list (
	id SERIAL,
	symbol VARCHAR (10) NOT NULL, -- symbol ceny
	price_disc INT NOT NULL, -- upust
	price_desc TEXT, -- opis progu upustu
	VAT INT NOT NULL, -- stawka VAT (%)
	CONSTRAINT pk_price_list PRIMARY KEY (id)
	);
-- lista kurierow
CREATE TABLE IF NOT EXISTS courier_list (
	id SERIAL,
	symbol VARCHAR (10) NOT NULL, -- symbol przewoznika
	name TEXT, -- nazwa przewoznika
	descript TEXT, -- opis URL
	logo TEXT, -- logo, URL
	rules TEXT, -- regulamin, URL
	webpage TEXT, -- strona WWW przewoznika
	country_list TEXT NOT NULL, -- lista obslugiwanych panstw rozdzielona przecinkiem ','
	CONSTRAINT pk_courier_list PRIMARY KEY (id)
	);
-- lista metod wysylki
CREATE TABLE IF NOT EXISTS delivery_list (
	id SERIAL,
	symbol VARCHAR (10) NOT NULL, -- symbol metody wysylki
	courier_id INT, -- identyfikator kuriera
	del_time TEXT,-- termin dostawy (przedzial dni)
	del_price MONEY NOT NULL, -- obliczona cena 'od'
	del_insurance MONEY NOT NULL, -- ubezpieczenie, cena
	del_PL BOOLEAN DEFAULT TRUE NOT NULL, -- flaga obslugi wysylki na terenie PL
	del_UE BOOLEAN DEFAULT TRUE NOT NULL, -- flaga obslugi wysylki na terenie UE
	del_OT BOOLEAN DEFAULT FALSE NOT NULL, -- flaga obslugi wysylki poza teren UE
	CONSTRAINT pk_delivery_list PRIMARY KEY (id),
	CONSTRAINT fk_courier_id FOREIGN KEY (courier_id)
		REFERENCES courier_list (id) MATCH SIMPLE
	);
-- lista metod platnosci, typu: 'platnosc z gory' 'przelew' 'gotowka' ...
CREATE TABLE IF NOT EXISTS payment_list (
	id SERIAL,
	symbol VARCHAR (10) NOT NULL, -- symbol platnosci	
	descript TEXT, -- opis
	courier_id INT NOT NULL, -- dotyczy (identyfikator przewoznika)
	CONSTRAINT pk_payment_list PRIMARY KEY (id),
	CONSTRAINT fk_courier_id FOREIGN KEY (courier_id)
		REFERENCES courier_list (id) MATCH SIMPLE
	);	
-- opinie nt. produktu
CREATE TABLE IF NOT EXISTS review_content (
	id SERIAL,
	stars INT, -- ilosc gwiazdek opinii
	com_header TEXT, -- naglowek opinii
	com_cont TEXT, -- tresc opinii
	CONSTRAINT pk_review_content PRIMARY KEY (id)
	);
-- lista opinii nt. produktu
CREATE TABLE IF NOT EXISTS review_list (
	id SERIAL,
	product_id INT NOT NULL, -- identyfikator produktu
	review_id INT NOT NULL, -- identyfikator opinii
	CONSTRAINT pk_review_list PRIMARY KEY (id),
	CONSTRAINT fk_review_content FOREIGN KEY (review_id)
		REFERENCES review_content (id) MATCH SIMPLE
	);
-- lista produktow
CREATE TABLE IF NOT EXISTS product_list (
	id SERIAL,
	symbol VARCHAR (10) NOT NULL, -- symbol produktu
	warehouse_id INT NOT NULL, -- identyfikator magazynu
	warehouse_pos VARCHAR (50) NOT NULL, -- symbol w magazynie ('|warehouse_id|wsp:X|wsp:Y|wsp:Z|reg:[]' + '|symbol|')
	name TEXT NOT NULL, -- nazwa produktu
	descript TEXT, -- opisu produktu <HTML>
	url_spec TEXT, -- url do specyfikacji <HTML>
	url_subm TEXT, -- url do podstron wyboru <HTML>
	price_id INT NOT NULL,	-- identyfikator cennika
	delivery_id INT NOT NULL, -- identyfikator sposobu wysylki
	review_id INT NOT NULL, -- identyfikator listy opinii
	sameday_flag BOOLEAN NOT NULL, -- wysylka tego samego dnia
	freeship_flag BOOLEAN NOT NULL, -- darmowa wysylka
	CONSTRAINT pk_product_list PRIMARY KEY (id),
	CONSTRAINT fk_warehouse_id FOREIGN KEY (warehouse_id)
		REFERENCES warehouse_list (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_price_id FOREIGN KEY (price_id)
		REFERENCES price_list (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_delivery_id FOREIGN KEY (delivery_id)
		REFERENCES delivery_list (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_payment_id FOREIGN KEY (payment_id)
		REFERENCES payment_list (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_review_id FOREIGN KEY (review_id)
		REFERENCES review_list (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION
	);

