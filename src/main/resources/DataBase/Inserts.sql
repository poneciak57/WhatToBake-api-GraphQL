TRUNCATE TABLE whattobake.category;
TRUNCATE TABLE whattobake.recipe_product;
TRUNCATE TABLE whattobake.recipe;
TRUNCATE TABLE whattobake.product;

INSERT INTO whattobake.category (name) VALUES
('brak'),
('Zboża i Produkty sypkie'),
('Nabiał i Jaja'),
('Owoce i Przetwory'),
('Warzywa i Przetwory'),
('Cukier/Słodycze/Posypki'),
('Oleje i Tłuszcze'),
('Kremy, Pasty i Ciasta'),
('Syropy i Napoje'),
('Orzechy i Nasiona'),
('Ekstrakty i Przyprawy'),
('Inne');

INSERT INTO whattobake.product (name, category) VALUES ('proszek do pieczenia','1'),('ekstrakt z wanilii','10'),
('przyprawa do piernika','10'),('dżem z moreli','3'),('syrop z agawy','8'),('oliwa z oliwek','6'),('suszone płatki róży','11'),
('puree z kasztanów','9'),('syrop z bzu','8'),('papryka w proszku','10'),('nasiona babki płesznik','9'),('ekstrakt z migdałów','10'),
('groszki w czekoladzie','5'),('kandyzowana skórka cytrynowa','3'),('suszone ziarna kukurydzy','9'),('jogurt naturalny','2'),
('cukier wanilinowy','5'),('pasta waniliowa','10'),('skrobia ziemniaczana','1'),('krem pistacjowy','7'),('cukier puder','5'),
('gałka muszkatołowa','10'),('wiórki kokosowe','5'),('śmietana kremówka','2'),('masa kajmakowa','7'),('konfitura wiśniowa','3'),
('suszone pomidory','4'),('passata pomidorowa','4'),('likier kokosowy','8'),('czerwone porzeczki','3'),('syrop klonowy','8'),
('serek philadelphia','2'),('czarne porzeczki','3'),('pomidory koktajlowe','4'),('przyprawa korzenna','10'),('ciastka pełnoziarniste','5'),
('ciastka zbożowe','5'),('ciastka owsiane','5'),('ciastka imbirowe','5'),('mleko skondensowane','2'),('ciasto filo','7'),
('ciasto francuskie','7'),('płatki owsiane','1'),('galaretka truskawkowa','11'),('galaretka cytrynowa','11'),
('galaretka brzoskwiniowa','11'),('galaretka wiśniowa','11'),('galaretka morelowa','11'),('galaretka winogronowa','11'),
('galaretka ananasowa','11'),('galaretka malinowa','11'),('powidła śliwkowe','3'),('kasza jaglana','1'),('ciastka amaretti','5'),
('masło orzechowe','7'),('wafelek kokosowy','5'),('dżem truskawkowy','3'),('kasza manna','1'),('jagody goji','3'),
('pestki dyni','9'),('siemie lniane','9'),('ziarna kakaowca','9'),('niasiona chia','9'),('płatki kukurydziane','1'),
('korzeń macy','4'),('olej kokosowy','6'),('herbata matcha','11'),('ekstrakt waniliowy','10'),('suszone owoce','3'),
('serek kremowy','2'),('bułka tarta','1'),('borówki amerykańskie','3'),('ciastka kokosowe','5'),('dżem jagodowy','3'),
('płatki kokosowe','5'),('ziele angielskie','10'),('kapusta kiszona','4'),('suszone grzyby','4'),('ser feta','2'),
('kandyzowana skórka','3'),('ciasto duńskie','7'),('ser żółty','2'),('ryż preparowany','1'),('płatki śniadaniowe','1'),
('karmelowy sos','8'),('ser pleśniowy','2'),('czerwone groszki','5'),('lody waniliowe','5'),('ziarna kukurydzy','9'),
('masa serowa','2'),('posypka cukrowa','5'),('cukrowe kuleczki','5'),('serek wiejski','2'),('ekstrakt różany','10'),
('ekstrakt kokosowy','10'),('śmietanka kokosowa','2'),('czekolada gorzka','5'),('czekolada mleczna','5'),('biała czekolada','5'),
('różowa czekolada','5'),('płatki chilli','10'),('cukrowe kostki','5'),('serek homogenizowany','2'),('ser półtłusty/tłusty','2'),
('masa cukrowa','7'),('chocolate chips','5'),('napój gazowany','8'),('napój bananowy','8'),('zioła prowansalskie','10'),
('syrop słodowy','8'),('natka pietruszki','4'),('nasiona kminu','9'),('nasiona kopru','9'),('nasiona kolendry','9'),
('orzechy laskowe','9'),('kandyzowany melon','3'),('kandyzowana pomarańcza','3'),('aromat rumowy','10'),
('aromat cytrynowy','10'),('aromat waniliowy','10'),('aromat miętowy','10'),('aromat pomarabczowy','10'),
('herbatniki kakaowe','5'),('wisienki koktajlowe','3'),('nalewka wiśniowa','8'),('sok pomarańczowy','8'),
('sok jabłkowy','8'),('krem ciasteczkowy','7'),('suchy wafelek','5'),('przyprawa mahlep','10'),('cydr jabłkowy','8'),
('frużelina żurawinowa','3'),('paluszkowe precle','5'),('cukrowe kulki','5'),('krem cytrynowy','7'),('praliny orzechowe','5'),
('dowolny aromat','10'),('truskawkowy napój','8'),('creme fraiche','7'),('vin santo','8'),('prince polo','5'),('candy melts','5'),
('ferrero rocher','5'),('milky way','5'),('cherry brandy','8'),('chupa chups','5'),('kinder chocolate','5'),('kinder country','5'),
('budyń','7'),('masło','6'),('jajka','2'),('cukier','5'),('rabarbar','4'),('migdały','9'),('sól','10'),('truskawki','3'),
('drożdże','11'),('mleko','2'),('pistacje','9'),('pomarańcze','3'),('majonez','2'),('cytryna','3'),('śmietana','2'),('olej','6'),
('marchewka','4'),('kakao','10'),('rodzynki','3'),('miód','5'),('marakuja','3'),('orzechy','9'),('kardamon','10'),('twaróg','2'),
('mandarynki','3'),('maślanka kefir','2'),('maliny','3'),('malinojeżyny','3'),('mascarpone','2'),('nutella','7'),('wanilia','10'),
('rum','8'),('banany','3'),('mak','9'),('żurawina','3'),('cynamon','10'),('czosnek','10'),('mozarella','2'),('bazylia','10'),
('jabłka','3'),('pigwa','3'),('sezam','9'),('jagody','3'),('śliwki','3'),('wiśnie','3'),('soda','11'),('kawa','11'),
('espresso','11'),('latte','11'),('cappucino','11'),('żelatyna','11'),('czereśnie','3'),('mango','3'),('imbir','10'),
('biszkopty','5'),('melasa','8'),('goździki','10'),('ajerkoniak','8'),('dynia','4'),('porzeczki','3'),('agrest','3'),
('grejpfrut','3'),('szpinak','4'),('marcepan','7'),('herbatniki','5'),('gruszki','3'),('jeżyny','3'),('smalec','6'),
('ananas','3'),('semolina','1'),('chałwa','5'),('piwo','8'),('oregano','10'),('rozmaryn','10'),('parmezan','2'),
('brzoskwinia','3'),('krakersy','5'),('orzeszki','9'),('aronia','3'),('ricotta','2'),('cukinia','4'),('morele','3'),
('barwnik','11'),('konfitura','3'),('ocet','11'),('cebula','4'),('daktyle','3'),('granat','3'),('ziemniaki','4'),
('anyż','10'),('mięta','10'),('likier','8'),('słonecznik','9'),('kiwi','3'),('szampan','8'),('szafran','10'),
('snickers','5'),('adwokat','8'),('kremówka','7'),('szczypiorek','10'),('koperek','10'),('pianki','5'),
('herbata','11'),('powidła','3'),('croissant','7'),('otręby','1'),('oliwa','6'),('wafle','5'),('pieczarki','4'),
('figa','4'),('dżem','3'),('nektarynka','3'),('pomidory','4'),('wino','8'),('fistaszki','9'),('spirytus','8'),
('klementynki','3'),('pektyna','11'),('brokuł','4'),('kalafior','4'),('ciastka','5'),('granola','5'),('kminek','10'),
('drożdżówki','7'),('jarmuż','4'),('tapioka','1'),('precelki','5'),('musli','1'),('ryż','1'),('chałka','7'),
('papaja','3'),('alkohol','8'),('pierniczki','5'),('glukoza','5'),('awokado','3'),('buraki','4'),('żelki','5'),
('czekolada','5'),('kaki','3'),('sucharki','5'),('bakalie','3'),('bez','10'),('hibiskus','10'),('babeczki','7'),
('papryka','4'),('pastylki/draże','5'),('len','10'),('marmolada','3'),('żyto','1'),('limonka','3'),('pieprz','10'),
('mąka','1'),('owoce','3'),('oliwki','4'),('wódka','8'),('zakwas','11'),('kwiat','10'),('winogron','3'),('patyczki','11'),
('lemoniada','8'),('naleśnik','7'),('limoncello','8'),('brownies','5'),('baileys','8'),('oreo','5'),('amaretto','8'),
('raffaello','5'),('tahini','7'),('brandy','8'),('daim','5'),('horlicks','8'),('toblerone','5'),('crunchie','5'),
('michałki','5'),('terrys','5'),('toffifee','5'),('mikado','11'),('tequila','8'),('rocher','5'),('delicje','5'),
('krówki','5'),('mincemeat','3'),('cheddar','2'),('andruty','1'),('Maltesers','5'),('kukułki','5'),('cocacola','8'),
('M&M','5');

INSERT INTO whattobake.recipe (title, image, link) VALUES('Muffiny dyniowe z suszoną żurawiną','https://static.mojewypieki.com/wp-content/uploads/2022/10/Muffiny_dyniowe_z_suszona_zurawina_1.jpg','https://mojewypieki.com/przepis/muffiny-dyniowe-z-suszona-zurawina');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('masło','maślanka kefir','jajka','miód','ekstrakt z wanilii','cukier','mąka','proszek do pieczenia','soda','sól','cynamon','imbir','goździki','gałka muszkatołowa','rodzynki');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Babeczki brownie z truskawkami','https://static.mojewypieki.com/wp-content/uploads/2022/05/Babeczki_brownie_z_truskawkami_20.jpg','https://mojewypieki.com/przepis/babeczki-brownie-z-truskawkami');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('czekolada gorzka','masło','jajka','cukier','mąka','proszek do pieczenia','ekstrakt z wanilii','truskawki');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Muffiny z rabarbarem i marcepanem','https://static.mojewypieki.com/wp-content/uploads/2022/04/Muffiny_z_rabarbarem_i_marcepanem_1.jpg','https://mojewypieki.com/przepis/muffiny-z-rabarbarem-i-marcepanem');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('mąka','proszek do pieczenia','cukier','jogurt naturalny','olej','jajka','marcepan','rabarbar','ekstrakt z migdałów','migdały');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Muffiny czekoladowo – bananowe','https://static.mojewypieki.com/wp-content/uploads/2022/01/Muffiny_czekoladowo_-_bananowe_1.jpg','https://mojewypieki.com/przepis/muffiny-czekoladowo-bananowe');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('banany','olej','jajka','cukier','mąka','kakao','soda','chocolate chips');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Dyniowe muffiny z kruszonką','https://static.mojewypieki.com/wp-content/uploads/2021/10/Dyniowe_muffiny_z_kruszonka_4.jpg','https://mojewypieki.com/przepis/dyniowe-muffiny-z-kruszonka');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('mąka','cukier','cukier','przyprawa korzenna','masło','mąka','soda','cynamon','przyprawa do piernika','sól','olej','cukier','cukier','jajka','mleko','cukier puder','woda');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Mini serniczki mango lassi','https://static.mojewypieki.com/wp-content/uploads/2021/09/Mini_serniczki_mango_lassi_3.jpg','https://mojewypieki.com/przepis/mini-serniczki-mango-lassi');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('ciastka pełnoziarniste','masło','twaróg','mango','cytryna','cukier puder','żelatyna','woda','śmietanka kokosowa','maliny','wiórki kokosowe');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Friands pistacjowo – truskawkowe','https://static.mojewypieki.com/wp-content/uploads/2021/07/Friands_pistacjowo_-_truskawkowe_3.jpg','https://mojewypieki.com/przepis/friands-pistacjowo-truskawkowe');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('mąka','pistacje','migdały','cukier puder','sól','jajka','masło','truskawki');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Muffiny z białą czekoladą i rabarbarem','https://static.mojewypieki.com/wp-content/uploads/2018/05/Babeczki_z_biala_czekolada_i_rabarbarem_2.jpg','https://mojewypieki.com/przepis/muffiny-z-biala-czekolada-i-rabarbarem');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('mleko','jajka','masło','cukier','mąka','proszek do pieczenia','rabarbar','biała czekolada');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Babeczki mango z kremem kokosowym','https://static.mojewypieki.com/wp-content/uploads/2021/04/Babeczki_mango_z_kremem_kokosowym_2.jpg','https://mojewypieki.com/przepis/babeczki-mango-z-kremem-kokosowym');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('masło','cukier','jajka','mango','jogurt naturalny','mąka','proszek do pieczenia','mascarpone','śmietana kremówka','cukier puder','limonka','likier kokosowy');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Cytrynowe muffiny z serkiem ricotta i nasionami chia','https://static.mojewypieki.com/wp-content/uploads/2020/10/Cytrynowe_muffiny_z_serkiem_ricotta_i_nasionami_chia_3.jpg','https://mojewypieki.com/przepis/cytrynowe-muffiny-z-serkiem-ricotta-i-nasionami-chia');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('ricotta','jajka','ekstrakt z wanilii','jogurt naturalny','olej','cukier','cytryna','mąka','proszek do pieczenia','cukier puder','cytryna');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Babeczki cappuccino','https://static.mojewypieki.com/wp-content/uploads/2020/10/Babeczki_cappuccino_1.jpg','https://mojewypieki.com/przepis/babeczki-cappuccino');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('masło','cukier','jajka','ekstrakt z wanilii','espresso','mleko','mąka','proszek do pieczenia','śmietana kremówka','mascarpone','cukier puder','ekstrakt z wanilii','kakao');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Muffiny z cukinią i twarożkiem','https://static.mojewypieki.com/wp-content/uploads/2020/07/Muffiny_z_cukinią_i_twarożkiem_1.jpg','https://mojewypieki.com/przepis/muffiny-z-cukinia-i-twarozkiem');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('mąka','proszek do pieczenia','sól','cynamon','gałka muszkatołowa','olej','jajka','ekstrakt z wanilii','cukier','cukier','cukinia','twaróg','jajka','ekstrakt z wanilii','cukier','cukier');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Babeczki Confetti','https://static.mojewypieki.com/wp-content/uploads/2020/07/Babeczki_confetti_1-compressor.jpg','https://mojewypieki.com/przepis/babeczki-confetti');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('masło','cukier','mąka','proszek do pieczenia','jajka','pasta waniliowa','mleko','posypka cukrowa','śmietana kremówka','mascarpone','cukier puder','ekstrakt z wanilii');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Kruche stokrotki z lemon curdem','https://static.mojewypieki.com/wp-content/uploads/2020/07/Kruche_stokrotki_z_lemon_curdem_2.jpg','https://mojewypieki.com/przepis/kruche-stokrotki-z-lemon-curdem');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('masło','cukier puder','mąka','jajka','jajka','ekstrakt z wanilii','sól','borówki amerykańskie','cukier puder');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Maślane muffiny z czereśniami','https://static.mojewypieki.com/wp-content/uploads/2020/07/Maślane_muffiny_z_czereśniami_2.jpg','https://mojewypieki.com/przepis/maslane-muffiny-z-czeresniami');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('masło','cukier','cukier wanilinowy','jajka','śmietana','mleko','mąka','proszek do pieczenia','czereśnie');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Kokosowe mini serniczki z malinami','https://static.mojewypieki.com/wp-content/uploads/2020/01/Kokosowe_mini_serniczki_z_malinami_1.jpg','https://mojewypieki.com/przepis/kokosowe-mini-serniczki-z-malinami');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('ciastka pełnoziarniste','twaróg','ricotta','cukier','jajka','śmietanka kokosowa','wiórki kokosowe','skrobia ziemniaczana');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Muffiny bananowe z czekoladą','https://static.mojewypieki.com/wp-content/uploads/2020/04/Muffiny_bananowe_z_czekoladą_1.jpg','https://mojewypieki.com/przepis/muffiny-bananowe-z-czekolada');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('mąka','proszek do pieczenia','cukier','jajka','olej','śmietana','ekstrakt z wanilii','banany','czekolada gorzka','cukier puder');
INSERT INTO whattobake.recipe (title, image, link) VALUES('Żytnie czekoladowe muffiny','https://static.mojewypieki.com/wp-content/uploads/2020/03/Zytnie_czekoladowe_muffiny_1.jpg','https://mojewypieki.com/przepis/zytnie-czekoladowe-muffiny');
INSERT INTO whattobake.recipe_product (recipe_id, product_id) SELECT LAST_INSERT_ID(),p.id FROM whattobake.product AS p WHERE p.name IN ('mąka','mąka','kakao','proszek do pieczenia','jajka','mleko','syrop klonowy','olej','cukier','czekolada gorzka');

# INSERT INTO whattobake.recipe_product(recipe_id, product_id) VALUES ();

# INSERT INTO whattobake.recipe (title, image, link) VALUES('{title}','{img}','{link}');
# INSERT INTO whattobake.recipe_product (recipe_id, product_id)
# SELECT LAST_INSERT_ID(),p.id
# FROM whattobake.product AS p
# WHERE p.name IN ('{product1}','{product2}','...')