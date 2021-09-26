DROP DATABASE craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE "region" (
    "id" SERIAL PRIMARY KEY,
    "city" TEXT   NOT NULL,
    "state" TEXT,
    "country" TEXT   NOT NULL
);

CREATE TABLE "cl_user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR   NOT NULL,
    "password" TEXT   NOT NULL,
    "email" TEXT   NOT NULL,
    "phone" INTEGER   NOT NULL,
    "num_of_posts" INTEGER   NOT NULL
);

CREATE TABLE "post" (
    "id" SERIAL PRIMARY KEY,
    "user_id" INTEGER   NOT NULL,
    "title" TEXT   NOT NULL,
    "description" TEXT   NOT NULL,
    "region_id" INTEGER   NOT NULL,
    "category_id" INTEGER   NOT NULL,
    "show_phone_num" BOOLEAN   DEFAULT FALSE,
    "ok_to_contact" BOOLEAN   DEFAULT FALSE
);

CREATE TABLE "categories" (
    "id" SERIAL PRIMARY KEY,
    "category" TEXT   NOT NULL
);

CREATE TABLE "user_post" (
    "id" SERIAL PRIMARY KEY,
    "post_id" INTEGER   NOT NULL,
    "user_id" INTEGER   NOT NULL
);

INSERT INTO region (city, state, country)
VALUES ('Breckenridge', 'CO', 'USA'),
('Moab', 'UT', 'USA'),
('Estes Park', 'CO', 'USA'),
('Louiseville', 'KY', 'USA');

INSERT INTO categories (category)
VALUES ('Community'),
('Services'),
('Housing'),
('Jobs'),
('For sale');

INSERT INTO cl_user (username, password, email, phone, num_of_posts)
VALUES ('EvieRascal', '12456', 'evie@dog.com', 095423678, 5),
('kookie', 'njfkhn', 'kookie@kook.com', 985032467, 3),
('Joeyyy', 'vd12gs', 'joey@friends.com', 857129643, 10);

INSERT INTO post (user_id, title, description, region_id, category_id)
VALUES (2, 'French Baker', 'I am looking for a job as a pastry chef', 1, 4),
(1, 'Looking for petsitter', 'I am a nice dog looking for a petsitter on weekends', 2, 2);

INSERT INTO post (user_id, title, description, region_id, category_id, show_phone_num, ok_to_contact)
VALUES (2, 'Looking for 1bd', 'New here. Looking for a pet-friendly 1-bd apt ', 1, 3, true, true);

INSERT INTO user_post(post_id, user_id)
VALUES (1, 2), (2, 2), (3, 1);