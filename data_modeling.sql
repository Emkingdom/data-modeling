CREATE TABLE medical_center (
	id SERIAL PRIMARY KEY,
	medical_center_name VARCHAR(255)NOT NULL,
	location VARCHAR(255)
);

CREATE TABLE doctors (
	id SERIAL PRIMARY KEY,
	doctor_name VARCHAR(255)NOT NULL,
	doctor_lastname VARCHAR(255) NOT NULL,
	specialization VARCHAR(255)
);

CREATE TABLE patients (
	id SERIAL PRIMARY KEY,
	patient_name VARCHAR(255)NOT NULL,
	patien_lastname VARCHAR(255)NOT NULL
);

CREATE TABLE medical_center_doctors(
	id SERIAL PRIMARY KEY,
	medical_center_id INT REFERENCES medical_center ON DELETE CASCADE,
	doctor_id INT REFERENCES doctors ON DELETE CASCADE 
);

CREATE TABLE diseases (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL, 
	description VARCHAR NOT NULL
);

CREATE TABLE visit (
	id SERIAL PRIMARY KEY,
	patien_id INT REFERENCES patients ON DELETE CASCADE, 
	doctor_id INT REFERENCES doctors ON DELETE CASCADE,
	visit_date DATE NOT NULL DEFAULT CURRENT_DATE 
);

CREATE TABLE diagnose (
	id SERIAL PRIMARY KEY,
	visit_id INT REFERENCES visit ON DELETE SET NULL,
	disease_id INT REFERENCES diseases ON DELETE SET NULL,
	descriton  VARCHAR(255)
);

