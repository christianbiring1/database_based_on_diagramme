CREATE DATABASE clinic;

CREATE TABLE patients(id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
date_of_birth DATE NOT NULL);

CREATE TABLE medical_histories(
  id SERIAL PRIMARY KEY,
  admitted_at TIMESTAMP NOT NULL,
  patient_id INTEGER NOT NULL,
  status VARCHAR(500) NOT NULL);

CREATE TABLE treatments(id SERIAL PRIMARY KEY,
type VARCHAR(100)NOT NULL,
name VARCHAR(100) NOT NULL);

CREATE TABLE invoices(
	id SERIAL PRIMARY KEY, 
	total_amount decimal, 
	generated_at TIMESTAMP, 
	payed_at TIMESTAMP, 
	medical_history_id INT
);

CREATE TABLE invoice_items(
	id SERIAL PRIMARY KEY, 
	unit_price decimal, 
	quantity INT, 
	total_price DECIMAL, 
	invoice_id INT, 
	treatment_id INT
);