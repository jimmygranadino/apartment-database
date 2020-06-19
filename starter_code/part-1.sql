-- Create tables

cd apartment-database

psql

CREATE DATABASE apartments;

\c apartments;

CREATE TABLE owners (
id SERIAL PRIMARY KEY,
name TEXT,
age INTEGER);

CREATE TABLE properties (
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
owner_id INTEGER REFERENCES owners(id));