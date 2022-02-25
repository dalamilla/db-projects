-- Cookbook Database Schema
-- Version 0.2

DROP SCHEMA IF EXISTS cookbook;
CREATE SCHEMA cookbook;
USE cookbook;

CREATE TABLE chef (
  chef_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(30) NOT NULL,
  password VARCHAR(100) NOT NULL,
  CONSTRAINT pk_chef_chef_id PRIMARY KEY (chef_id),
  CONSTRAINT uk_chef_email UNIQUE KEY (email)
);

CREATE TABLE recipe (
  recipe_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(200) NOT NULL,
  description VARCHAR(300) NOT NULL,
  img_url VARCHAR(100) DEFAULT NULL,
  chef_id SMALLINT UNSIGNED NOT NULL,
  CONSTRAINT pk_recipe_recipe_id PRIMARY KEY (recipe_id),
  CONSTRAINT fk_recipe_chef_id FOREIGN KEY (chef_id) REFERENCES chef (chef_id) ON DELETE CASCADE
);

CREATE TABLE features (
  recipe_id SMALLINT UNSIGNED NOT NULL,
  preparation_time SMALLINT UNSIGNED NOT NULL,
  servings SMALLINT UNSIGNED NOT NULL,
  type VARCHAR(30) NOT NULL,
  difficulty VARCHAR(20) NOT NULL,
  CONSTRAINT fk_features_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipe (recipe_id) ON DELETE CASCADE
);


CREATE TABLE ingredients (
  recipe_id SMALLINT UNSIGNED NOT NULL,
  name VARCHAR(30) NOT NULL,
  measure SMALLINT UNSIGNED NOT NULL,
  measure_type VARCHAR(30) NOT NULL,
  CONSTRAINT fk_ingredients_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipe (recipe_id) ON DELETE CASCADE
);

CREATE TABLE method (
  recipe_id SMALLINT UNSIGNED NOT NULL,
  step SMALLINT UNSIGNED NOT NULL,
  description VARCHAR(400) NOT NULL,
  CONSTRAINT fk_method_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipe (recipe_id) ON DELETE CASCADE
);
