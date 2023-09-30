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
    (1, 'Nacho', 'Fernández', '1990-01-18', 'CB', 'LB', '2023-07-09', NULL, 0, NULL, 82, 82);


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
-- Game Log 44: Start  2nd season Liga Portugal, season_id=4 away vs Pacos Ferreira
INSERT INTO games (fk_season_id, game_num, game_minutes, home_or_away, fk_opp_id,
                   opp_goals, opp_xg, opp_poss_pct, opp_shots, my_goals, my_xg, my_shots)
VALUES
	(4,1,16,'away',5,1,1,37,3,3,3.5,20);

INSERT INTO player_stats (fk_player_id, fk_game_id, rating, minutes, poss_won, poss_lost,
                          goals, non_pen_xg, shots, assists, key_passes, passes_att, passes_compl,
                           duels_att, duels_won)
VALUES
(19,44,6.1,16,0,0,0,0,0,0,0,3,3,1,1),  -- André Franco
(10,44,7.2,64,1,1,0,0,0,0,1,8,8,3,2),  -- João Mário
(32,44,6.1,28,1,0,0,0,0,0,0,3,2,2,2),  -- Jorge Sánchez
(27,44,5.9,16,0,2,0,0,0,0,0,4,3,2,1),  -- Nico González
(31,44,6.4,87,4,5,0,0,1,0,2,21,17,17,10),  -- Alan Varela
(18,44,7.3,92,3,2,0,0.4,5,0,1,15,11,8,3),  -- Pepê Gabriel Aquino Cossa
(20,44,8.2,76,0,3,1,0.5,3,0,3,12,10,7,3),  -- Wenderson Galeno
(15,44,7.9,92,7,1,1,0.2,1,0,3,26,23,14,9),  -- Stephen Eustaquio
(23,44,7.6,92,2,8,1,1.2,4,0,1,16,10,8,6),  -- Francisco Evanilson
(24,44,7.2,76,2,8,0,1.2,6,0,2,12,10,19,12),  -- Mehdi Taremi
(9,44,7.6,92,3,5,0,0,0,1,3,17,12,10,3),  -- Wendell Nascimento Borges
(4,44,5.8,28,1,0,0,0,0,0,0,1,1,2,1),  -- Carmo David
(35,44,7.2,92,5,0,0,0,0,0,0,12,10,11,7),  -- Nacho Fernández
(6,44,6.8,64,2,0,0,0,0,0,0,12,11,5,4),  -- Pepe Laveran Lima Ferreira
(14,44,6,5,0,0,0,0,0,0,0,0,0,0,0)  -- Marko Grujić