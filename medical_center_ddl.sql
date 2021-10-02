-- from the terminal run:
-- psql < medical_center_ddl.sql

DROP DATABASE medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE "doctor" (
    "id" SERIAL PRIMARY KEY  NOT NULL,
    "name" TEXT   NOT NULL,
    "specialty" TEXT   NOT NULL
);

CREATE TABLE "patient" (
    "id" SERIAL PRIMARY KEY  NOT NULL,
    "name" TEXT   NOT NULL,
    "birthday" DATE   NOT NULL,
    "address" TEXT   NOT NULL,
    "age" INT   NOT NULL,
    "gender" TEXT   NOT NULL
);

CREATE TABLE "disease" (
    "id" SERIAL PRIMARY KEY  NOT NULL,
    "name" TEXT   NOT NULL,
    "description" TEXT   NOT NULL
);

CREATE TABLE "visit" (
    "id" SERIAL PRIMARY KEY  NOT NULL,
    "patient_id" INT   NOT NULL,
    "doctor_id" INT   NOT NULL,
    "date" DATE   NOT NULL
);

CREATE TABLE "diagnoses" (
    "id" SERIAL PRIMARY KEY  NOT NULL,
    "visit_id" INT   NOT NULL,
    "disease_id" INT   NOT NULL
);

INSERT INTO doctor (name, specialty) 
VALUES ('David Fisher', 'Oncologist'), ('Jeffrey LeMan', 'Allergy Doctor'), 
('Lee Hemsworth', 'Cardiologist'), ('Dan Galloway', 'Gastroenterologist');  

INSERT INTO patient (name, birthday, address, age, gender) 
VALUES ('Babara Scott', '06-20-1995', '503 overlook dr', 53, 'Female')
,('Amy Clarke', '02-27-1857', '2578 pearl St.', 35, 'Female'), 
('Bill Davidson', '08-02-1979', '3553 lincoln rd', 27, 'Male'); 

INSERT INTO disease (name, description) 
VALUES ('Heart disease', 'heartache'), ('Gastritis', 'gassy stomach'), ('Lung cancer', 'dry deep cough')
, ('Allergy', 'red rashes'), ('High blood pressure', 'easyily exhausted'); 

INSERT INTO visit (patient_id, doctor_id, date)
VALUES (1, 1, '07-04-2015'), (1, 2, '04-25-2017'), (3, 2, '08-14-2020');

INSERT INTO diagnoses (visit_id, disease_id)
VALUES (2, 3), (1, 3), (3, 4)