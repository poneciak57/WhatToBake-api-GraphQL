TRUNCATE TABLE whattobake.category;
TRUNCATE TABLE whattobake.recipe_product;
TRUNCATE TABLE whattobake.recipe;
TRUNCATE TABLE whattobake.product;

INSERT INTO whattobake.category (name) VALUES
('brak'); # 1

INSERT INTO whattobake.product (name, category) VALUES
('proszek do pieczenia',1),('ekstrakt z wanilii',1),('przyprawa do piernika',1),('dżem z moreli',1),
('syrop z agawy',1),('oliwa z oliwek',1),('suszone płatki róży',1),('puree z kasztanów',1),('syrop z bzu',1),
('papryka w proszku',1),('nasiona babki płesznik',1),('ekstrakt z migdałów',1),('groszki w czekoladzie',1),
('kandyzowana skórka cytrynowa',1),('suszone ziarna kukurydzy',1),('kolor w pascie',1),('jogurt naturalny',1),
('cukier wanilinowy',1),('pasta waniliowa',1),('skrobia ziemniaczana',1),('krem pistacjowy',1),('cukier puder',1),
('gałka muszkatołowa',1),('wiórki kokosowe',1),('śmietana kremówka',1),('słodka śmietanka',1),('masa kajmakowa',1),
('konfitura wiśniowa',1),('suszone pomidory',1),('passata pomidorowa',1),('likier kokosowy',1),('czerwone porzeczki',1),
('syrop klonowy',1),('serek philadelphia',1),('czarne porzeczki',1),('pomidory koktajlowe',1),('przyprawa korzenna',1),
('ciastka pełnoziarniste',1),('ciastka zbożowe',1),('ciastka owsiane',1),('ciastka imbirowe',1),('mleko skondensowane',1),
('ciasto filo',1),('ciasto francuskie',1),('płatki owsiane',1),('galaretka truskawkowa',1),('galaretka cytrynowa',1),
('galaretka brzoskwiniowa',1),('galaretka wiśniowa',1),('galaretka morelowa',1),('galaretka winogronowa',1),
('galaretka ananasowa',1),('galaretka malinowa',1),('powidła śliwkowe',1),('kasza jaglana',1),('ciastka amaretti',1),
('masło orzechowe',1),('wafelek kokosowy',1),('dżem truskawkowy',1),('kasza manna',1),('jagody goji',1),('pestki dyni',1),
('siemie lniane',1),('ziarna kakaowca',1),('niasiona chia',1),('płatki kukurydziane',1),('korzeń macy',1),('olej kokosowy',1),
('herbata matcha',1),('ekstrakt waniliowy',1),('suszone owoce',1),('serek kremowy',1),('bułka tarta',1),
('borówki amerykańskie',1),('ciastka kokosowe',1),('dżem jagodowy',1),('płatki kokosowe',1),('ziele angielskie',1),
('kapusta kiszona',1),('suszone grzyby',1),('ser feta',1),('kandyzowana skórka',1),('ciasto duńskie',1),('ser żółty',1),
('ryż preparowany',1),('golden syrup',1),('płatki śniadaniowe',1),('karmelowy sos',1),('ser pleśniowy',1),
('czerwone groszki',1),('lody waniliowe',1),('ziarna kukurydzy',1),('masa serowa',1),('posypka cukrowa',1),
('cukrowe kuleczki',1),('serek wiejski',1),('ekstrakt różany',1),('ekstrakt kokosowy',1),('śmietanka kokosowa',1),
('czekolada gorzka',1),('czekolada mleczna',1),('biała czekolada',1),('różowa czekolada',1),('płatki chilli',1),
('cukrowe kostki',1),('serek homogenizowany',1),('ser półtłusty/tłusty',1),('masa cukrowa',1),('chocolate chips',1),
('napój gazowany',1),('napój bananowy',1),('zioła prowansalskie',1),('syrop słodowy',1),('natka pietruszki',1),
('nasiona kminu',1),('nasiona kopru',1),('nasiona kolendry',1),('orzechy laskowe',1),('kandyzowany melon',1),
('kandyzowana pomarańcza',1),('aromat rumowy',1),('aromat cytrynowy',1),('aromat waniliowy',1),('aromat miętowy',1),
('aromat pomarabczowy',1),('herbatniki kakaowe',1),('wisienki koktajlowe',1),('nalewka wiśniowa',1),('sok pomarańczowy',1),
('sok jabłkowy',1),('krem ciasteczkowy',1),('suchy wafelek',1),('przyprawa mahlep',1),('czerwony groszek',1),('cydr jabłkowy',1),
('frużelina żurawinowa',1),('paluszkowe precle',1),('cukrowe kulki',1),('krem cytrynowy',1),('praliny orzechowe',1),
('cukrowa kostka',1),('dowolny aromat',1),('truskawkowy napój',1),('creme fraiche',1),('vin santo',1),('prince polo',1),
('candy melts',1),('ferrero rocher',1),('milky way',1),('cherry brandy',1),('chupa chups',1),('kinder chocolate',1),
('kinder country',1),('budyń',1),('masło',1),('jajka',1),('cukier',1),('rabarbar',1),('migdały',1),('sól',1),('truskawki',1),
('drożdże',1),('mleko',1),('pistacje',1),('pomarańcze',1),('majonez',1),('cytryna',1),('śmietana',1),('olej',1),('marchewka',1),
('kakao',1),('rodzynki',1),('miód',1),('marakuja',1),('orzechy',1),('kardamon',1),('twaróg',1),('mandarynki',1),('maślanka kefir',1),
('maliny',1),('malinojeżyny',1),('mascarpone',1),('nutella',1),('wanilia',1),('rum',1),('banany',1),('mak',1),('żurawina',1),
('cynamon',1),('czosnek',1),('mozarella',1),('bazylia',1),('jabłka',1),('pigwa',1),('sezam',1),('jagody',1),('śliwki',1),
('wiśnie',1),('soda',1),('kawa',1),('espresso',1),('latte',1),('cappucino',1),('żelatyna',1),('czereśnie',1),('mango',1),
('imbir',1),('biszkopty',1),('melasa',1),('goździki',1),('ajerkoniak',1),('dynia',1),('porzeczki',1),('agrest',1),('grejpfrut',1),
('szpinak',1),('marcepan',1),('herbatniki',1),('gruszki',1),('jeżyny',1),('smalec',1),('ananas',1),('semolina',1),('chałwa',1),
('piwo',1),('oregano',1),('rozmaryn',1),('parmezan',1),('brzoskwinia',1),('krakersy',1),('orzeszki',1),('aronia',1),('ricotta',1),
('cukinia',1),('morele',1),('barwnik',1),('konfitura',1),('ocet',1),('cebula',1),('daktyle',1),('granat',1),('ziemniaki',1),
('anyż',1),('mięta',1),('likier',1),('słonecznik',1),('kiwi',1),('szampan',1),('szafran',1),('snickers',1),('adwokat',1),
('kremówka',1),('szczypiorek',1),('koperek',1),('pianki',1),('herbata',1),('powidła',1),('croissant',1),('otręby',1),('oliwa',1),
('wafle',1),('pieczarki',1),('figa',1),('dżem',1),('nektarynka',1),('pomidory',1),('wino',1),('fistaszki',1),('spirytus',1),
('klementynki',1),('pektyna',1),('brokuł',1),('kalafior',1),('ciastka',1),('granola',1),('kminek',1),('drożdżówki',1),('jarmuż',1),
('tapioka',1),('precelki',1),('musli',1),('ryż',1),('chałka',1),('papaja',1),('alkohol',1),('pierniczki',1),('glukoza',1),
('lód',1),('awokado',1),('buraki',1),('żelki',1),('czekolada',1),('kaki',1),('sucharki',1),('bakalie',1),('bez',1),('hibiskus',1),
('babeczki',1),('papryka',1),('pastylki/draże',1),('len',1),('marmolada',1),('woda',1),('żyto',1),('limonka',1),('pieprz',1),
('mąka',1),('owoce',1),('oliwki',1),('wódka',1),('zakwas',1),('kwiat',1),('winogron',1),('patyczki',1),('lemoniada',1),('naleśnik',1),
('precel',1),('limoncello',1),('brownies',1),('baileys',1),('oreo',1),('amaretto',1),('raffaello',1),('tahini',1),('brandy',1),
('daim',1),('horlicks',1),('toblerone',1),('crunchie',1),('michałki',1),('terrys',1),('toffifee',1),('mikado',1),('marshmallows',1),
('tequila',1),('rocher',1),('delicje',1),('krówki',1),('mincemeat',1),('cheddar',1),('andruty',1),('Maltesers',1),('kukułki',1),
('cocacola',1),('M&M',1);

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