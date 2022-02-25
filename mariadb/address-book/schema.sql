-- Address Book Database Schema
-- Version 0.3

DROP SCHEMA IF EXISTS address_book;
CREATE SCHEMA address_book;
USE address_book;

CREATE TABLE user (
  user_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(30) NOT NULL,
  password VARCHAR(100) NOT NULL,
  CONSTRAINT pk_user_user_id PRIMARY KEY (user_id),
  CONSTRAINT uk_user_email UNIQUE KEY (email)
);

CREATE TABLE contact (
  contact_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) DEFAULT NULL,
  birth_date DATE DEFAULT NULL,
  avatar_url VARCHAR(100) DEFAULT NULL,
  user_id SMALLINT UNSIGNED NOT NULL,
  CONSTRAINT pk_contact_contact_id PRIMARY KEY (contact_id),
  CONSTRAINT fk_contact_user_id FOREIGN KEY (user_id) REFERENCES user (user_id) ON DELETE CASCADE
);

CREATE TABLE address (
  contact_id SMALLINT UNSIGNED NOT NULL,
  address VARCHAR(40) NOT NULL,
  address2 VARCHAR(40) DEFAULT NULL,
  city VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL,
  postal_code VARCHAR(10) DEFAULT NULL,
  CONSTRAINT fk_address_contact_id FOREIGN KEY (contact_id) REFERENCES contact (contact_id) ON DELETE CASCADE,
  CONSTRAINT uk_address_contact_id UNIQUE KEY (contact_id)
);

CREATE TABLE phone (
  contact_id SMALLINT UNSIGNED NOT NULL,
  type  VARCHAR(30) NOT NULL,
  number VARCHAR(20) NOT NULL,
  CONSTRAINT fk_phone_contact_id FOREIGN KEY (contact_id) REFERENCES contact (contact_id) ON DELETE CASCADE
);

CREATE TABLE email (
  contact_id SMALLINT UNSIGNED NOT NULL,
  type  VARCHAR(30) NOT NULL,
  address VARCHAR(50) NOT NULL,
  CONSTRAINT fk_email_contact_id FOREIGN KEY (contact_id) REFERENCES contact (contact_id) ON DELETE CASCADE
);
