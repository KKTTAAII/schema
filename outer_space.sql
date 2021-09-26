-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  moon_name TEXT
);

CREATE TABLE galaxy (
  id SERIAL PRIMARY KEY,
  galaxy_name TEXT
);

CREATE TABLE orbits_aroud_planet (
  id SERIAL PRIMARY KEY,
  orbits_aroud_planet_name TEXT
);

CREATE TABLE planets_info
(
  id SERIAL PRIMARY KEY,
  planet_id INT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around_planet_id INT NOT NULL,
  galaxy_id INT NOT NULL,
  moons_id INT DEFAULT NULL
);

CREATE TABLE planets (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO planets (name)
VALUES ('Earth'), ('Mars'), ('Neptune'), ('Venus'), 
('Proxima Centauri b'), ('Gliese 876 b');

INSERT INTO planets_info
  (planet_id, orbital_period_in_years, orbits_around_planet_id, galaxy_id, moons_id)
VALUES
  (1, 1.00, 1, 1, 1),
  (2, 1.88, 1, 1, 2),
  (2, 1.88, 1, 1, 3),
  (3, 164.8, 1, 1, 4),
  (3, 164.8, 1, 1, 5),
  (3, 164.8, 1, 1, 6),
  (3, 164.8, 1, 1, 7),
  (3, 164.8, 1, 1, 8),
  (3, 164.8, 1, 1, 9),
  (3, 164.8, 1, 1, 10),
  (3, 164.8, 1, 1, 11),
  (3, 164.8, 1, 1, 12),
  (3, 164.8, 1, 1, 13),
  (3, 164.8, 1, 1, 14),
  (3, 164.8, 1, 1, 15),
  (3, 164.8, 1, 1, 16),
  (3, 164.8, 1, 1, 17);
  
  INSERT INTO planets_info
  (planet_id, orbital_period_in_years, orbits_around_planet_id, galaxy_id)
  VALUES (4, 0.62, 1, 1), (5, 0.03, 2, 1), (6, 0.23, 3, 1); 

  INSERT INTO moons (moon_name)
  VALUES ('The Moon'), ('Phobos'), ('Deimos'), ('Naiad'), ('Thalassa'), ('Despina'), ('Galatea'), 
  ('Larissa'), ('S/2004 N 1'), ('Proteus'), ('Triton'), ('Nereid'), ('Halimede'),
  ('Sao'), ('Laomedeia'), ('Psamathe'), ('Neso');

  INSERT INTO galaxy (galaxy_name)
  VALUES ('Milky Way');

  INSERT INTO orbits_aroud_planet(orbits_aroud_planet_name)
  VALUES ('The Sun'), ('Proxima Centauri'), ('Gliese 876');