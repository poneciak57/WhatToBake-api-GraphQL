DROP DATABASE IF EXISTS `whattobake`;
CREATE DATABASE `whattobake`;

CREATE TABLE `whattobake`.`user`(
    `id` INT AUTO_INCREMENT NOT NULL ,
    `username` VARCHAR(255),
    `password` VARCHAR(255),
    `enabled` BOOLEAN,
    `roles` VARCHAR(255),
    PRIMARY KEY (`id`)
);
CREATE TABLE `whattobake`.`recipe`(
    `id` INT AUTO_INCREMENT NOT NULL ,
    `title` VARCHAR(255),
    `link` VARCHAR(255),
    PRIMARY KEY (`id`)
);
CREATE TABLE `whattobake`.`product`(
    `id` INT AUTO_INCREMENT NOT NULL ,
    `name` VARCHAR(255) UNIQUE ,
    PRIMARY KEY (`id`)
);
CREATE TABLE `whattobake`.`recipe_product`(
    `recipe_id` INT,
    `product_id` INT,
    PRIMARY KEY (`recipe_id`,`product_id`)
);
