CREATE TABLE teams (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(255) NOT NULL, 
	city VARCHAR(255)
);

CREATE TABLE players (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL, 
	lastname VARCHAR(255) NOT NULL,
	height VARCHAR(255),
	weight VARCHAR(255),
	team_id INT REFERENCES teams ON DELETE SET NULL 
);


CREATE TABLE refeeres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);


CREATE TABLE season (
	id SERIAL PRIMARY KEY,
	star_date DATE NOT NULL, 
	end_date DATE NOT NULL
);

CREATE TABLE matches (
	id SERIAL PRIMARY KEY,
	team_1_id  INT REFERENCES teams,
	team_2_id INT REFERENCES teams,
	refeere_id INT REFERENCES refeeres,
	total_score INT,
	location VARCHAR(255)
);


CREATE TABLE goals (
	id SERIAL PRIMARY KEY,
	player_id INT REFERENCES players,
	mathc_id INT REFERENCES matches
);

CREATE TABLE lineup (
	id SERIAL PRIMARY KEY, 
	player_id INT REFERENCES players,
	team_id INT REFERENCES teams,
	match_id INT REFERENCES matches 
);