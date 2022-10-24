TRUNCATE TABLE whattobake.category;
INSERT INTO whattobake.category (name) VALUES
('brak'), # 1
('owoce'); # 2

TRUNCATE TABLE whattobake.product;
INSERT INTO whattobake.product (name, category) VALUES
('jabłko',1), # 1
('ziemniak',1); # 2

TRUNCATE TABLE whattobake.recipe;
INSERT INTO whattobake.recipe (title, image, link) VALUES
('ziemniakoprzepis','img','link'), # 1
('jablecznik','img2','link2'); # 2

TRUNCATE TABLE whattobake.recipe_product;
INSERT INTO whattobake.recipe_product(recipe_id, product_id) VALUES
(2,1),
(1,2);

# INSERT INTO whattobake.recipe (title, image, link) VALUES('{title}','{img}','{link}');
# INSERT INTO whattobake.recipe_product (recipe_id, product_id)
# SELECT LAST_INSERT_ID(),p.id
# FROM whattobake.product AS p
# WHERE p.name IN ('{product1}','{product2}','...')