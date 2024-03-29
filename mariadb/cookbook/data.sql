-- Cookbook Database Data
-- Version 0.2

USE cookbook;

INSERT INTO chef (first_name,last_name,email,password) VALUES
	 ('Cristy','Halliburton','challiburton0@hotmail.com','VwovTxPsTgI'),
	 ('Barry','Sibbering','bsibbering1@gov.uk','R43mY7Qhh'),
	 ('Sheryl','Sangster','ssangster2@gmail.com','BUncSrQ'),
	 ('Yu','Chikito','Yuchikit01@yahoo.co.jp','DgCJDbs5Z4O'),
	 ('Juan','Diaz','j.diaz@outlook.com','Mi145zmip');

INSERT INTO recipe (name,description,img_url,chef_id) VALUES
  ('Praline meringue cake with strawberries','A caramel-flavoured praline meringue thats perfect for a summers day','http://example.com/113x100.png/cc0000/ffffff',1),
  ('Chocolate and raspberry zebra cake','Childhood favourite, the marble cake, gets an update where precision results in a uniformly stripy sponge','http://example.com/208x100.png/5fa2dd/ffffff',2),
  ('Garland sausage roll slice','This party recipe adds a touch of sophistication to traditional sausage rolls, and can be made one day ahead for minimum stress','http://example.com/180x100.png/5fa2dd/ffffff',2),
  ('Bean salad with yogurt avocado dressing','This rainbow salad makes a refreshing vegetarian main packed with cannellini beans, broad beans, carrots and radishes','http://example.com/116x100.png/ff4444/ffffff',3),
  ('Nicoise pasta','This quick and easy pasta and tuna dish brings summer flavours to your tastebuds all year round','http://example.com/177x100.png/5fa2dd/ffffff',1),
  ('Berry omelette','Glaze your Christmas root vegetables with honey and coriander seeds, then add apple quarters and roast for an extra-special side dish','http://example.com/193x100.png/cc0000/ffffff',4),
  ('Sticky roasted parsnips, Chantenay carrots and apples','A one-egg omelette makes a high protein breakfast. If the brain-boosting berries arent sweet enough, add 1 tsp honey','http://example.com/208x100.png/5fa2dd/ffffff',3),
  ('Best ever chunky guacamole','This is the best version of this classic dip. The ingredients are kept to a minimum, so its as fresh-tasting as possible','http://example.com/202x100.png/5fa2dd/ffffff',5);

INSERT INTO features (recipe_id,preparation_time,servings,type,difficulty) VALUES
  (1,5400,12,'Dessert','Easy'),
  (2,6300,1,'Dessert','Medium'),
  (3,4500,1,'Main course','Easy'),
  (4,1800,4,'Main course','Easy'),
  (5,1800,4,'Side dish','Easy'),
  (6,420,1,'Breakfast','Easy'),
  (7,3000,8,'Side dish','Easy'),
  (8,600,8,'Starter','Easy');

INSERT INTO ingredients (recipe_id,name,measure,measure_type) VALUES
  (1,'almond',100,'gr'),
  (1,'golden caster sugar',25,'gr'),
  (1,'egg white',5,'pieces'),
  (1,'cornflour',3,'cups'),
  (1,'strawberry',10,'pieces'),
  (1,'icing sugar',45,'gr'),
  (1,'double cream',150,'gr'),
  (2,'vegetable oil',5,'ml'),
  (2,'yogurt',250,'ml'),
  (2,'caster sugar',25,'gr'),
  (2,'cocoa powder',50,'gr'),
  (2,'large egg',4,'pieces'),
  (2,'raspberry jam',100,'gr'),
  (2,'dark chocolate',250,'gr'),
  (3,'quail egg',3,'pieces'),
  (3,'sausage',150,'ml'),
  (3,'apple',5,'pieces'),
  (3,'Tabasco sauce',50,'ml'),
  (3,'ham',250,'gr'),
  (3,'breadcrumb',100,'gr'),
  (3,'puff pastry',500,'gr'),
  (3,'egg',3,'pieces'),
  (3,'wholegrain mustard',100,'gr'),
  (4,'pitta bread',300,'gr'),
  (4,'frozen broad bean',150,'gr'),
  (4,'avocado',2,'pieces'),
  (4,'natural yogurt',250,'ml'),
  (4,'bean',250,'gr'),
  (4,'carrot',2,'pieces'),
  (4,'radish',5,'pieces'),
  (4,'cress',150,'gr'),
  (5,'basil leaf',50,'gr'),
  (5,'lemon',2,'pieces'),
  (5,'tuna',250,'gr'),
  (5,'cherry tomato',10,'pieces'),
  (5,'anchovy',250,'gr'),
  (5,'olive oil',15,'ml'),
  (5,'penne',300,'gr'),
  (5,'green bean',150,'gr'),
  (6,'skimmed milk',1,'liter'),
  (6,'cinnamon',10,'gr'),
  (6,'rapeseed oil',30,'ml'),
  (6,'cottage cheese',100,'gr'),
  (6,'strawberry',15,'pieces'),
  (7,'parsnip',2,'pieces'),
  (7,'carrot',10,'pieces'),
  (7,'olive oil',10,'ml'),
  (7,'clear honey',80,'ml'),
  (7,'coriander seed',30,'gr'),
  (7,'apple',5,'pieces'),
  (8,'tomato',1,'pieces'),
  (8,'avocado',3,'pieces'),
  (8,'lime',1,'pieces'),
  (8,'coriander',1,'pieces'),
  (8,'red onion',1,'pieces'),
  (8,'chilli',2,'pieces');

INSERT INTO method (recipe_id,step,description) VALUES
  (1,1,'Lorem ipsum dolor sit amet.'),
  (1,2,'Consectetur adipiscing elit.'),
  (1,3,'Quis nostrud exercitation ullamco laboris.'),
  (1,4,'Tempor incididunt ut labore et.'),
  (1,5,'Ut enim ad minim veniam.'),
  (2,1,'Tempus imperdiet nulla malesuada.'),
  (2,2,'Pellentesque elit eget gravida.'),
  (2,3,'Duis ut diam quam nulla porttitor massa.'),
  (2,4,'Elementum integer enim neque volutpat.'),
  (2,5,'Gravida in fermentum et sollicitudin ac orci.'),
  (3,1,'Feugiat in ante metus dictum at tempor commodo ullamcorper.'),
  (3,2,'Orci dapibus ultrices in iaculis nunc.'),
  (3,3,'Vulputate enim nulla aliquet porttitor lacus luctus.'),
  (3,4,'Massa massa ultricies mi quis hendrerit.'),
  (4,1,'Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu.'),
  (4,2,'Egestas integer eget aliquet nibh praesent tristique magna sit.'),
  (4,3,'Consequat semper viverra nam libero justo.'),
  (4,4,'Varius vel pharetra vel turpis.'),
  (5,1,'Dui vivamus arcu felis bibendum ut tristique et egestas quis.'),
  (5,2,'Amet nisl purus in mollis nunc.'),
  (5,3,'Vel fringilla est ullamcorper eget.'),
  (5,4,'A erat nam at lectus urna duis convallis convallis tellus.'),
  (5,5,' Quam adipiscing vitae proin sagittis nisl rhoncus.'),
  (5,6,'Feugiat in fermentum posuere urna nec tincidunt praesent.'),
  (6,1,'Diam quis enim lobortis scelerisque fermentum dui faucibus.'),
  (6,2,'Integer malesuada nunc vel risus.'),
  (6,3,'Quam id leo in vitae turpis massa sed.'),
  (6,4,'Suspendisse in est ante in nibh. '),
  (7,1,'Et leo duis ut diam.'),
  (7,2,'Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque.'),
  (7,3,'Purus gravida quis blandit turpis cursus in hac.'),
  (7,4,'Eu consequat ac felis donec et.'),
  (7,5,'Consequat interdum varius sit amet mattis vulputate enim nulla aliquet.'),
  (8,1,'Turpis egestas maecenas pharetra convallis posuere morbi leo.'),
  (8,2,'Vulputate eu scelerisque felis imperdiet proin fermentum.'),
  (8,3,'Consectetur adipiscing elit pellentesque habitant morbi tristique.');
