-- Cookbook Database Queries
-- Version 0.1

-- select chef_id and password of some email chef

SELECT chef_id, password FROM chef WHERE email = "";

-- select data except password with some chef_id

SELECT first_name, last_name, email FROM chef WHERE chef_id= "";

-- select basic information and features of recipe with chef_id

SELECT r.name, r.description, r.img_url, f.preparation_time, f.servings, f.type, f.difficulty
	FROM recipe AS r 
	RIGHT JOIN features AS f
		ON r.recipe_id = f.recipe_id 
	WHERE  r.chef_id = "";

-- select ingredients with recipe_id

SELECT  name, measure, measure_type from ingredients WHERE recipe_id = "";

-- select steps on order with repice_id

SELECT description from method  WHERE recipe_id = "" ORDER BY step;

-- update password of chef with chef_id

UPDATE chef 
	SET password = ""
	WHERE chef_id = ""

-- remove all recipes of some chef with the chef_id

DELETE FROM recipe WHERE chef_id = ""

-- remove specific recipe with chef_id and repice_id

DELETE FROM recipe WHERE chef_id = '' and recipe_id = ""
