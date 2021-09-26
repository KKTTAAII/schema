DROP DATABASE medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE "doctor" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "specialty" TEXT NOT NULL
);

CREATE TABLE "disease" (
    "id" SERIAL PRIMARY KEY,
    "disease" TEXT NOT NULL
);

CREATE TABLE "patient" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT  NOT NULL,
    "age" INTEGER   NOT NULL,
    "gender" TEXT
);

CREATE TABLE "doctor_patient_disease_record" (
    "id" SERIAL PRIMARY KEY,
    "doctor_id" INTEGER NOT NULL,
    "patient_id" INTEGER NOT NULL,
    "disease_id" INTEGER NOT NULL
);

INSERT INTO doctor (name, specialty) 
VALUES ('David Fisher', 'Oncologist'), ('Jeffrey LeMan', 'Allergy Doctor'), 
('Lee Hemsworth', 'Cardiologist'), ('Dan Galloway', 'Gastroenterologist');  

INSERT INTO patient (name, age, gender) 
VALUES ('Babara Scott', 53, 'Female'), ('Amy Clarke', 35, 'Female'), ('Bill Davidson', 27, 'Male'); 

INSERT INTO disease (disease) 
VALUES ('Heart disease'), ('Gastritis'), ('Lung cancer'), ('Allergy'), ('High blood pressure'); 

INSERT INTO doctor_patient_disease_record (doctor_id, patient_id, disease_id)
VALUES (1, 1, 1), (1, 2, 1), (3, 2, 5);

