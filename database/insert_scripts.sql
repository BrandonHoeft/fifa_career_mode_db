--  query templates for loading tables
insert into leagues (name)
values
    ('Liga Portugal'),
    ('Taça de Portugal'),
    ('Supertaça'),
    ('Champions League'),
    ('Europa League'),
    ('Europa Conference League');

insert into teams (name)
values ('FC Porto'),
       ('Arouca'),
       ('Benfica'),
       ('Boavista'),
       ('Braga'),
       ('Casa Pia'),
       ('Chaves'),
       ('Estoril'),
       ('Famalicão'),
       ('Gil Vicente'),
       ('Marítimo'),
       ('Paços de Ferreira'),
       ('Portimonense'),
       ('Rio Ave'),
       ('Santa Clara'),
       ('Sporting CP'),
       ('Vitória de Guimarães'),
       ('Vizela'),
       ('Club Brugge'),
       ('Bayer Leverkusen'),
       ('Atlético Madrid')

insert into seasons (fk_league_id, fk_team_id, year)
values
    (1, 1, 2024), -- 2023-24 Liga Portugal
    (2, 1, 2024), -- 2023-24 Taca Portugal
    (5, 1, 2024); -- 2023-24 Europa League

insert into players (fk_team_id, first_name, last_name, birthday, primary_pos, second_pos)
values
    (1, 'Diogo', 'Costa', '1999-09-19', 'GK', NULL),
    (1, 'Cláudio', 'Ramos', '1991-11-16', 'GK', NULL),
    (1, 'Samuel', 'Portugal', '1994-03-29', 'GK', NULL),
    (1, 'Carmo', 'David', '1999-07-19', 'CB', NULL),
    (1, 'Fábio', 'Cardoso', '1994-04-19', 'CB', NULL),
    (1, 'Pepe', 'Laveran Lima Ferreira', '1983-02-26', 'CB', NULL),
    (1, 'Iván', 'Marcano', '1987-06-23', 'CB', NULL),
    (1, 'Zaidu', 'Sanusi', '1997-06-13', 'LB', NULL),
    (1, 'Wendell', 'Nascimento Borges', '1993-07-20', 'LB', NULL),
    (1, 'João', 'Mário', '2000-01-03', 'RB', NULL),
    (1, 'Wilson', 'Manafá', '1994-07-24', 'RB', 'RM'),
    (1, 'Rodrigo', 'Conceição', '2000-01-02', 'RB', 'RM'),
    (1, 'Mateus', 'Uribe', '1991-03-21', 'CM', 'CDM'),
    (1, 'Marko', 'Grujić', '1996-04-13', 'CM', 'CDM'),
    (1, 'Stephen', 'Eustaquio', '1996-12-21', 'CM', 'CDM'),
    (1, 'Bruno', 'Costa', '1997-04-19', 'CM', NULL),
    (1, 'Otávio', 'Edmilson da Silva Monteiro', '1995-02-09', 'RM', 'LM'),
    (1, 'Pepê', 'Gabriel Aquino Cossa', '1997-02-24', 'LM', 'RM'),
    (1, 'André', 'Franco', '1998-04-12', 'CAM', 'CM'),
    (1, 'Wenderson', 'Galeno', '1997-10-22', 'LM', NULL),
    (1, 'Gabriel', 'Veron', '2002-09-03', 'LM', 'RM'),
    (1, 'Gonçalo', 'Borges', '2001-03-29', 'RM', NULL),
    (1, 'Francisco', 'Evanilson', '1999-10-06', 'ST', NULL),
    (1, 'Mehdi', 'Taremi', '1992-07-18', 'ST', 'LW'),
    (1, 'Toni', 'Martínez', '1997-06-30', 'ST', NULL),
    (1, 'Daniel', 'Namaso Loader', '2000-08-28', 'ST', 'CAM'),
    (1, 'Nico', 'González', '2022-01-03', 'CM', 'CDM'),
    (1, 'Vasco', 'Sousa', '2003-04-03', 'CAM', 'CM'),
    (1, 'Bernardo', 'Folha', '2002-03-22', 'CM', NULL),
    (1, 'Romário', 'Baró', '2000-01-25', 'CM', 'RM'),
    (1, 'Alan', 'Varela', '2001-07-04', 'CM', 'CDM'),
    (1, 'Jorge', 'Sánchez', '1997-12-10', 'RB', 'LB');

insert into players (fk_team_id, first_name, last_name, birthday, primary_pos, second_pos,
                     start_date, end_date, cost, sale, acquired_rating, current_rating)
values
    (1, 'Francisco', 'Conceição', '2002-12-02', 'RM', 'RW', '2023-01-01', NULL, 12000000, NULL, 75, 75),
    (1, 'Fran', 'Navarro', '1998-02-03', 'ST', NULL, '2023-07-06', NULL, 20000000, NULL, 78, 78),
    (1, 'Nacho', 'Fernández', '1990-01-18', 'CB', 'LB', '2023-07-09', NULL, 0, NULL, 82, 82),
    (1, 'Zé Luís', 'Andrede', '1991-01-24', 'ST', NULL, '2023-08-08', NULL, 4800000, NULL, 75, 75),
    (1, 'Malang', 'Sarr', '1999-01-23', 'CB', NULL, '2023-08-31', NULL, 0, NULL, 76, 76),
    (1, 'Iván', 'Jaime', '2000-09-26', 'CAM', 'CM', '2023-08-28', NULL, 18000000, NULL, 76, 76);


-- Season 2  Liga Portugal (season_id=4)
insert into standings_snapshot (fk_season_id, fk_team_id, standings_as_of, points, goal_diff)
values
    (4, 1, '2023-08-01', 0, 0), -- FC Porto
    (4, 2, '2023-08-01', 0, 0), -- Arouca
    (4, 3, '2023-08-01', 0, 0), -- Benfica
    (4, 4, '2023-08-01', 0, 0), -- Boavista
    (4, 5, '2023-08-01', 0, 0), -- Braga
    (4, 6, '2023-08-01', 0, 0), -- Casa Pia
    (4, 7, '2023-08-01', 0, 0), -- Chaves
    (4, 8, '2023-08-01', 0, 0), -- Estoril
    (4, 9, '2023-08-01', 0, 0), -- Famalicão
    (4, 10, '2023-08-01', 0, 0), -- Gi Vicente
    (4, 11, '2023-08-01', 0, 0), -- Marítimo
    (4, 12, '2023-08-01', 0, 0), -- Paços de Ferreira
    (4, 13, '2023-08-01', 0, 0), -- Portimonense
    (4, 14, '2023-08-01', 0, 0), -- Rio Ave
    (4, 15, '2023-08-01', 0, 0), -- Santa Clara
    (4, 16, '2023-08-01', 0, 0), -- Sporting CP
    (4, 17, '2023-08-01', 0, 0), -- Vitória de Guimarães
    (4, 18, '2023-08-01', 0, 0); -- Vizela




--------------------------------------------------------------------------------
-- Game Log 47: home vs Maritimo
INSERT INTO games (fk_season_id, game_num, game_minutes, home_or_away, fk_opp_id,
                   opp_goals, opp_xg, opp_poss_pct, opp_shots, my_goals, my_xg, my_shots)
VALUES
	(4,4,12,'home',14,1,2.4,39,8,3,2.5,11)


INSERT INTO player_stats (fk_player_id, fk_game_id, rating, minutes, poss_won, poss_lost,
                          goals, non_pen_xg, shots, assists, key_passes, passes_att, passes_compl, duels_att, duels_won)
VALUES
(22,47,7,32,0,3,0,0.3,1,1,2,7,5,7,6),  -- Gonçalo Borges
(30,47,8,93,7,1,0,0,1,0,2,22,20,15,8),  -- Romário Baró
(10,47,6.9,61,1,2,0,0,0,0,1,7,5,4,3),  -- João Mário
(32,47,5.9,19,0,0,0,0,0,0,0,0,0,0,0),  -- Jorge Sánchez
(18,47,7,93,0,5,0,0.2,2,1,1,7,4,5,2),  -- Pepê Gabriel Aquino Cossa
(20,47,6.8,93,0,2,0,0.1,1,1,1,6,5,10,5),  -- Wenderson Galeno
(15,47,6,3,1,1,0,0,0,0,0,0,0,2,2),  -- Stephen Eustaquio
(23,47,6.6,61,0,2,0,0,0,0,1,13,12,6,2),  -- Francisco Evanilson
(24,47,7.5,32,0,1,1,0.3,1,0,0,3,1,2,1),  -- Mehdi Taremi
(9,47,6.8,74,3,4,0,0,1,0,0,8,3,5,3),  -- Wendell Nascimento Borges
(4,47,8.1,93,7,0,0,0,0,0,0,10,10,7,6),  -- Carmo David
(34,47,8.6,93,0,3,2,1.6,4,0,2,9,8,11,7),  -- Fran Navarro
(6,47,6.2,93,2,0,0,0,0,0,0,3,2,6,2),  -- Pepe Laveran Lima Ferreira
(14,47,7.6,90,8,2,0,0,0,0,1,18,16,13,9)  -- Marko Grujić