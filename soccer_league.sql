DROP DATABASE soccer_leage;
CREATE DATABASE soccer_leage;

\c soccer_leage

CREATE TABLE "team" (
    "id" SERIAL PRIMARY KEY,
    "team_name" TEXT   NOT NULL,
    "standing" INTEGER   NOT NULL
);

CREATE TABLE "player" (
    "id" SERIAL PRIMARY KEY,
    "team_id" INTEGER   NOT NULL,
    "player_name" TEXT   NOT NULL,
    "position" TEXT NOT NULL
);

CREATE TABLE "goal" (
    "id" SERIAL PRIMARY KEY,
    "game_id" INTEGER   NOT NULL,
    "team_id" INTEGER   NOT NULL,
    "player_id" INTEGER   NOT NULL
);

CREATE TABLE "league" (
    "id" SERIAL PRIMARY KEY,
    "season" TEXT   NOT NULL,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL
);

CREATE TABLE "game" (
    "id" SERIAL PRIMARY KEY,
    "ref_name" TEXT   NOT NULL,
    "team1" TEXT   NOT NULL,
    "team2" TEXT   NOT NULL,
    "league_id" INTEGER   NOT NULL
);

INSERT INTO team (team_name, standing)
VALUES ('Liverpool', 1), ('Man City', 2), ('Man United', 3), 
('Chelsea', 4), ('Leicester City', 5), ('Tottenham', 6), ('Wolves', 7),
('Arsenal', 8), ('Sheffield United', 9), ('Burnley', 10);

INSERT INTO player(team_id, player_name, position)
VALUES (1, 'Nathaniel Phillips', 'defender'),
(1, 'Fabinho', 'midfielder'),
(2, 'Raheem Sterling', 'forward'),
(2, 'Zack Steffen', 'goalkeeper'),
(4, 'Marcos Alonso', 'defender'),
(4, 'Jorginho', 'midfielder'),
(3, 'David De Gea', 'goalkeeper'),
(3, 'Christiano Ronaldo', 'forward'),
(5, 'James Justin', 'defender'),
(5, 'Jamie Vardy', 'forward');

INSERT INTO goal (game_id, team_id, player_id)
VALUES (3, 2, 3), (2, 3, 7), (3, 2, 4);

INSERT INTO league (season, start_date, end_date)
VALUES ('26th', '2019-08-09', '2020-07-26'),
('27th', '2018-08-10', '2019-05-12');

INSERT INTO game (ref_name, team1, team2, league_id)
VALUES ('Anthony Taylor', 'Liverpool', 'Chelsea', 1),
('Craig Pawson', 'Man United', 'Leicester City', 1),
('Anthony Taylor', 'Man City', 'Liverpool', 1);