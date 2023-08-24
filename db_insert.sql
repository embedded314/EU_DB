-- przykladowe wiersze dla tablic
INSERT INTO price_list (symbol, price_disc, price_desc, VAT)
VALUES ('PSA01', 5, 'Prog sprzedazy A', 23);
INSERT INTO price_list (symbol, price_disc, price_desc, VAT)
VALUES ('PSB01', 7, 'Prog sprzedazy B', 23);
INSERT INTO price_list (symbol, price_disc, price_desc, VAT)
VALUES ('PSC01', 10, 'Prog sprzedazy C', 23);

INSERT INTO warehouse_list (symbol, name)
VALUES ('WOT25A1', 'MAZ OTW Magazyn A');
INSERT INTO warehouse_list (symbol, name)
VALUES ('WZA11G3', 'MAZ WAR Magazyn G');
INSERT INTO warehouse_list (symbol, name)
VALUES ('WUV20A3', 'MAZ WAR Magazyn A');

INSERT INTO courier_list (symbol, name, descript, country_list)
VALUES ('PERS', 'ODD Sienkiewicza', 'Warszawski oddzial firmy, Sienkiewicza 137a', 'PL');
INSERT INTO courier_list (symbol, name, descript, country_list)
VALUES ('WARDHL1', 'DHL oddzial WARSZAWA', 'Warszawski oddzial miedzynarodowej firmy DHL', 'PL,ROM,UK,GER,SWE,ND,GR,ES');
INSERT INTO courier_list (symbol, name, descript, country_list)
VALUES ('WARUPS1', 'UPS oddzial WARSZAWA', 'Warszawski oddzial miedzynarodowej firmy UPS', 'PL,ROM,UK,GER,SWE,ND');
INSERT INTO courier_list (symbol, name, descript, country_list)
VALUES ('WARNN', 'NN oddzial WARSZAWA', 'Warszawski oddzial lokalnej firmy NN', 'PL,UK');

INSERT INTO delivery_list (symbol, courier_id, del_time, del_price, del_insurance)
VALUES ('PERS', 1, '1-1', 0.00, 0.00);
INSERT INTO delivery_list (symbol, courier_id, del_time, del_price, del_insurance)
VALUES ('DHL1', 2, '2-3', 17.26, 1000.00);
INSERT INTO delivery_list (symbol, courier_id, del_time, del_price, del_insurance)
VALUES ('UPS1', 3, '2-3', 18.23, 500.00);
INSERT INTO delivery_list (symbol, courier_id, del_time, del_price, del_insurance)
VALUES ('PERS', 4, '5-30', 0.00, 0.00);

INSERT INTO payment_list (symbol, descript, courier_id)
VALUES ('CASH', 'Gotowka.', 1);
INSERT INTO payment_list (symbol, descript, courier_id)
VALUES ('BLIK', 'BLIK DHL', 2);
INSERT INTO payment_list (symbol, descript, courier_id)
VALUES ('BANK', 'Przelew DHL.', 2);
INSERT INTO payment_list (symbol, descript, courier_id)
VALUES ('CC', 'Karta kredytowa DHL.', 2);
INSERT INTO payment_list (symbol, descript, courier_id)
VALUES ('CASH', 'Gotowka UPS.', 3);
INSERT INTO payment_list (symbol, descript, courier_id)
VALUES ('CC', 'Karta kredytowa UPS.', 3);
INSERT INTO payment_list (symbol, descript, courier_id)
VALUES ('WZ', 'Wyżebranie', 4);


INSERT INTO review_content (stars, com_header, com_cont)
VALUES (5, 'Bardzo udany produkt', 'Doskonale wykonanie, brak zadnych defektow na PCB');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (4, 'Calkiem udany produkt', 'Bardzo dobre wykonanie, kilka drobnych defektow na PCB');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (3, 'Nie calkiem udany produkt', 'Dobre wykonanie, zwarcie na PCB');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (3, 'Taki sobie', 'Wykonanie takie sobie');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (4, 'Calkiem niezle', 'Dobre wykonanie, kilka rys');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (5, 'Bardzo udanie', 'Robi wrazenie');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (1, 'Zdecydowanie niezadowalające', 'Strata czasu.');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (2, 'Nie do końca przekonujące', 'Brakuje czegoś.');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (3, 'Średnie doświadczenie', 'Nie powala, ale da się przeżyć.');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (4, 'Bardzo satysfakcjonujące', 'Wiele pozytywnych aspektów.');
INSERT INTO review_content (stars, com_header, com_cont)
VALUES (5, 'Wspaniałe doświadczenie', 'Wyjątkowe i niezapomniane.');

INSERT INTO review_list (review_id, product_id)
VALUES (1, 1);
INSERT INTO review_list (review_id, product_id)
VALUES (2, 2);
INSERT INTO review_list (review_id, product_id)
VALUES (3, 1);
INSERT INTO review_list (review_id, product_id)
VALUES (4, 2);
INSERT INTO review_list (review_id, product_id)
VALUES (5, 2);
INSERT INTO review_list (review_id, product_id)
VALUES (6, 4);
INSERT INTO review_list (review_id, product_id)
VALUES (7, 5);
INSERT INTO review_list (review_id, product_id)
VALUES (8, 6);
INSERT INTO review_list (review_id, product_id)
VALUES (9, 3);

INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('12892', 1, '|1|23.475|11.234|32.506|reg:[A]|12892|',
						 'Mimas A7 - Artix 7 - płytka rozwojowa FPGA', 
						 'botland.com.pl/moduly-i-zestawy-fpga/12892-5904422320157.html',
						 'botland.com.pl/moduly-i-zestawy-fpga/12892-5904422320157.html',
						 'botland.com.pl/moduly-i-zestawy-fpga/12892-5904422320157.html',
						 1,1,1, TRUE, FALSE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('5904', 1, '|1|115.475|2381.132|2.561|reg:[C]|5904|',
						 'Mimas v2 - Spartan 6 - płytka rozwojowa FPGA', 
						 'botland.com.pl/moduly-i-zestawy-fpga/8603-5904422311964.html',
						 'botland.com.pl/moduly-i-zestawy-fpga/8603-5904422311964.html',
						 'botland.com.pl/moduly-i-zestawy-fpga/8603-5904422311964.html',
						 2,2,2,TRUE,FALSE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('14645', 1, '|1|211.215|1320.671|156.51|reg:[C]|14645|',
						 'Raspberry Pi 4 model B WiFi DualBand Bluetooth 1GB RAM 1,5GHz', 
						 'botland.com.pl/moduly-i-zestawy-raspberry-pi-4b/14645-765756931168.html',
						 'botland.com.pl/moduly-i-zestawy-raspberry-pi-4b/14645-765756931168.html',
						 'botland.com.pl/moduly-i-zestawy-raspberry-pi-4b/14645-765756931168.html',
						 1,1,1,FALSE,FALSE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('14645', 3, '|1|211.215|1320.671|56.51|reg:[C]|14645|',
						 'Raspberry Pi 4 model B WiFi DualBand Bluetooth 1GB RAM 1,5GHz', 
						 'botland.com.pl/moduly-i-zestawy-raspberry-pi-4b/14645-765756931168.html',
						 'botland.com.pl/moduly-i-zestawy-raspberry-pi-4b/14645-765756931168.html',
						 'botland.com.pl/moduly-i-zestawy-raspberry-pi-4b/14645-765756931168.html',
						 2,1,1,FALSE,FALSE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('4524', 2, '|1|331.112|220.171|52.11|reg:[Q]|4524|',
						 'Kamera HD G OV5647 5Mpx - szerokokątna - dla Raspberry Pi - Waveshare 10344', 
						 'botland.com.pl/kamery-do-raspberry-pi/4524-kamera-hd-g-ov5647-5mpx-szerokokatna-dla-raspberry-pi-waveshare-10344-5904422374037.html',
						 'botland.com.pl/kamery-do-raspberry-pi/4524-kamera-hd-g-ov5647-5mpx-szerokokatna-dla-raspberry-pi-waveshare-10344-5904422374037.html',
						 'botland.com.pl/kamery-do-raspberry-pi/4524-kamera-hd-g-ov5647-5mpx-szerokokatna-dla-raspberry-pi-waveshare-10344-5904422374037.html',
						 3,3,1,TRUE,FALSE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('18892', 1, '|1|3231.612|1520.771|46.12|reg:[Q]|4524|',
						 'STM32MP157F-DK2 Discovery - STM32MP157FAC1 + ekran dotykowy 4', 
						 'Zestaw uruchomieniowy oparty na mikrokontrolerze STM32MP157FAC1 
							(Cortex-A7 800 MHz 32-bit + Cortex-M4 209 MHz 32-bit). Płytka posiada między innymi wbudowany wyświetlacz dotykowy o rozdzielczości 4",
							4 porty USB, port Ethernet oraz slot na kartę microSD.',
						 'botland.com.pl/kamery-do-raspberry-pi/4524-kamera-hd-g-ov5647-5mpx-szerokokatna-dla-raspberry-pi-waveshare-10344-5904422374037.html',
						 'botland.com.pl/kamery-do-raspberry-pi/4524-kamera-hd-g-ov5647-5mpx-szerokokatna-dla-raspberry-pi-waveshare-10344-5904422374037.html',
						 1,2,1,TRUE,TRUE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('3411', 2, '|2|11.012|210.372|6.42|reg:[A]|3411|',
						 'Mikrokontrolery STM32 w sieci Ethernet w przykładach - Marcin Peczarski', 
						 'Wydawnictwo: BTC. Książka przedstawia praktyczne zastosowanie mikrokontrolerów STM32 w protokołach sieciowych.',
						 'botland.com.pl/ksiazki-i-kursy/3411-mikrokontrolery-stm32-w-sieci-ethernet-w-przykladach-marcin-peczarski-9788360233689.html',
						 'botland.com.pl/ksiazki-i-kursy/3411-mikrokontrolery-stm32-w-sieci-ethernet-w-przykladach-marcin-peczarski-9788360233689.html',
						 1,1,2,FALSE,FALSE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('15913', 1, '|1|511.312|2330.312|16.52|reg:[B]|15913|',
						 'Oscyloskop Rigol DS1202 Z-E 200MHz 2 kanały', 
							'Zaawansowany oscyloskop cyfrowy pracujący w paśmie 200 MHz. Został wyposażony w 2 kanały, 
							które pracują z prędkością próbkowania do 1 GSa/s. Wyposażony został w 7 calowy wyświetlacz o 
							rozdzielczości 800 x 480 px. Posiada złącza USB oraz LAN.',
						 'botland.com.pl/oscyloskopy/15913-oscyloskop-rigol-ds1202-z-e-200mhz-2-kanaly-6973332406182.html',
						 'botland.com.pl/oscyloskopy/15913-oscyloskop-rigol-ds1202-z-e-200mhz-2-kanaly-6973332406182.html',
						 1,1,2,FALSE,TRUE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('15912', 1, '|1|451.145|22360.982|254.82|reg:[B]|15912|',
						 'Generator funkcyjny Siglent SDG1062X 60MHz - 2 kanały', 
						 'Dwukanałowy generator funkcyjny z generacją przebiegów do 60 MHz, 
							prędkość próbkowania wynosi 150 MSa/s. Rozdzielczość pionowa to 14 bit. 
							Został wyposażony w wyświetlacz LCD TFT 4,3" oraz takie interfejsy jak USB oraz LAN.',
						 'botland.com.pl/generatory-funkcyjne/15912-generator-funkcyjny-siglent-sdg1062x-60mhz-2-kanaly-5904422343996.html',
						 'botland.com.pl/generatory-funkcyjne/15912-generator-funkcyjny-siglent-sdg1062x-60mhz-2-kanaly-5904422343996.html',
						 1,1,2,FALSE,TRUE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('7713', 1, '|1|451.145|22360.982|254.82|reg:[B]|7713|',
						 'Zasilacz 3in1 Korad KA3305D 2x 0-30V/0-5A + 1x 5V/3A', 
						 'KA3305D to potrójny stabilizowany zasilacz laboratoryjny z programowalną pamięcią 
							i płynną regulacją napięcia w zakresach 2x od 0 do 30 V oraz prądu 
							w zakresie od 0 do 5 A oraz jedno wyjście 5 V / 3 A.',
						 'botland.com.pl/zasilacze-laboratoryjne/7713-zasilacz-3in1-korad-ka3305d-2x-0-30v0-5a-1x-5v3a-5907558240641.html',
						 'botland.com.pl/zasilacze-laboratoryjne/7713-zasilacz-3in1-korad-ka3305d-2x-0-30v0-5a-1x-5v3a-5907558240641.html',
						 1,2,2,TRUE,TRUE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('16740', 1, '|1|4851.145|74361.122|1274.22|reg:[B]|16740|',
						 'Drukarka 3D - Flashforge Creator Pro 2', 
						 'Zmodernizowana wersja drukarki Creator Pro, której producentem jest firma Flashforge. 
							Najnowsza odsłona modelu Creator Pro oferuje użytkownikowi system dwóch niezależnych ekstruderów IDEX, 
							zmodernizowaną płytę główną oraz funkcję pozwalającą uniknąć zarysowań wydruku. 
							Pole robocze urządzenia wynosi 200 x 148 x 150 mm. Urządzenie jest w całości złożone, nie wymaga skomplikowanego montażu.',
						 'botland.com.pl/drukarki-3d-flashforge/16740-drukarka-3d-flashforge-creator-pro-2-6971940403616.html',
						 'botland.com.pl/drukarki-3d-flashforge/16740-drukarka-3d-flashforge-creator-pro-2-6971940403616.html',
						 1,3,2,TRUE,TRUE
						 );
INSERT INTO product_list (symbol, warehouse_id, warehouse_sym, name, descript, url_spec, url_subm, price_id, delivery_id,
                          payment_id, review_id, sameday_flag, freeship_flag)
VALUES ('15122', 1, '|1|4141.115|74991.134|9214.22|reg:[B]|15122|',
						 'Drukarka 3D - Zortrax M300 Dual - HEPA Cover', 
						 'Drukarka 3D firmy Zortrax, przeznaczona do druku elementów o wymiarach 265 x 265 x 300 mm. 
							Zortrax M300 Dual zamknięto w szczelnej komorze roboczej. Posiada dotykowy wyświetlacz. 
							Drukarka wyposażona w moduł WiFi, porty USB, Ethernet i wbudowane czujniki, umożliwiające ciągłą kontrolę druku. 
							W zestawie razem z drukarką Zortrax HEPA Cover - urządzenie do filtrowania, poprawiające jakość wydruków 3D.',
						 'botland.com.pl/drukarki-3d-zortrax/15122-drukarka-3d-zortrax-m300-dual-hepa-cover-5904422342968.html',
						 'botland.com.pl/drukarki-3d-zortrax/15122-drukarka-3d-zortrax-m300-dual-hepa-cover-5904422342968.html',
						 1,3,2,TRUE,TRUE
						 );
