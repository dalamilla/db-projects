-- Address Book Database Queries
-- Version 0.3

-- select user_id and password with email

SELECT user_id, password FROM user WHERE email = "";

-- select data except password with user_id

SELECT first_name, last_name, email FROM user WHERE user_id= "";

-- select basic information contacts with user_id

SELECT first_name, last_name, birth_date, avatar_url FROM contact WHERE user_id = "";

-- select name, lastname and address contacts information with user_id

SELECT c.first_name, c.last_name, a.address, a.address2, a.city, a.country, a.postal_code
  FROM address AS a
	RIGHT JOIN contact AS c
    ON a.contact_id = c.contact_id
	WHERE c.user_id = '';

-- select name, lastname and phone contacts information with user_id

SELECT c.first_name, c.last_name, p.`type`, p.`number`
  FROM phone AS p
	RIGHT JOIN contact AS c
    ON p.contact_id = c.contact_id
	WHERE c.user_id = '';

-- select name, lastname and email contacts information with user_id

SELECT c.first_name, c.last_name, e.`type`, e.address
  FROM email AS e
	RIGHT JOIN contact AS c
    ON e.contact_id = c.contact_id
	WHERE c.user_id = '';

-- remove work email from contact information with user_id

DELETE e
	FROM email AS e
	INNER JOIN contact AS c
		ON e.contact_id = c.contact_id
	WHERE c.user_id = '' AND  e.`type` = 'work';

-- remove contact information with the user_id  and contact_id

DELETE FROM contact  WHERE user_id = '' AND contact_id = ''

-- update first name from contact with the contact_id

UPDATE  contact
SET first_name = ''
WHERE contact_id = '';

-- update number from phone with the contact_id

UPDATE phone
SET number = ''
WHERE  contact_id = '';
