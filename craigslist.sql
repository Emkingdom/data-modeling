CREATE TABLE regions (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE categories (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	password varchar(255),
	region_id INT REFERENCES regions 
);

CREATE TABLE post (
	id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	text VARCHAR(255),
	location  VARCHAR(255),
	user_id iNT REFERENCES users ON DELETE SET NULL, 
	region_id INT REFERENCES regions ON DELETE SET NULL,
	category_id INT REFERENCES categories ON DELETE SET NULL 
);