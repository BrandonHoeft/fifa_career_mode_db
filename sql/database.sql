-----------------------------------
-- This database is to track game-level advanced stats for players from my Fifa23 career mode saves.

-- Database Design: Nearly 3NF design to eliminate data redundancy and create data consistency
-- Ultimately, a CRUD webapp will be built on top to handle write ops, so 3NF is a good approach

-- keys: I thought some tables like leagues and teams should use natural keys (e.g. name) as the PK,
-- while others were auto-incrementing/surrogate keys (id). mix was confusing, so conformed to surrogates

-- Database name: (fifa23) is created in projects ./docker-compose.yaml
-- schema: will use public default
-----------------------------------

create table if not exists leagues (

    league_id int primary key generated by default as identity, -- auto-generating, no need specify on INSERT
    name text not null

);

comment on table leagues is 'leagues/tournament names such as La Liga, Copa Del Rey, Champions League, ...';

create table if not exists teams (

    team_id int primary key generated by default as identity,
    name text not null

);

comment on table teams is 'team names';

create table if not exists seasons (

    season_id int primary key generated by default as identity,
    fk_league_id int references leagues (league_id) not null,
    fk_team_id int references teams (team_id) not null,
    year smallint not null

);

comment on table seasons is 'identifies a unique season by league, team, and year';


create table if not exists players (

    player_id int primary key generated by default as identity,
    fk_team_id int references teams (team_id) not null,
    first_name text not null,
    last_name text not null,
    full_name text generated always as (first_name || ' ' || last_name) stored, --generated on write of inputs
    birthday date not null,
    primary_pos text,
    second_pos text

);

comment on table players is 'identifies player names on a team';

create table if not exists games (

    game_id int primary key generated by default as identity,
    fk_season_id int references seasons(season_id) not null,
    game_num int not null check (game_num between 1 and 38), -- no single league/tournament has more than this
    home_or_away text not null check (home_or_away in ('home','away')),
    fk_opp_id int references teams (team_id) not null,
    opp_goals int not null,
    opp_xg numeric(3,2) not null, -- 0.09
    opp_poss_pct numeric(4,2) not null, -- 45.8 or 45.80 or 46
    opp_shots int not null,
    opp_shots_on_targ int,
    my_goals int not null,
    my_xg numeric(3,2) not null,
    my_poss_pct numeric(4,2) generated always as (100 - opp_poss_pct) stored,
    my_shots int not null,
    my_shots_on_targ int

);

comment on table games is 'each record represents a team summary of a game I played in fifa career mode';

create table if not exists player_stats_overall (

    ovr_id int primary key generated by default as identity,
    fk_player_id int references players (player_id) not null,
    fk_game_id int references games (game_id) not null,
    rating numeric(3,1) not null, -- 10.0 or 5.7
    minutes int not null,
    total_dist numeric(3,1) not null,
    sprint_dist numeric(3,1) not null

);

comment on table player_stats_overall is 'each record represents a players overall stats (rating, minutes, running) in a single league game';

create table if not exists player_stats_off (

    off_id int primary key generated by default as identity,
    fk_player_id int references players (player_id) not null,
    fk_game_id int references games (game_id) not null,
    -- possesion related
    possession_pct int, -- 5% or 13% or 0%,
    dribble_att int,
    dribble_compl int,
    dribble_dist numeric(3,1),
    dribble_beat int,
    dribble_knock_on int,
    -- shooting related
    goals int,
    non_pen_xg numeric(3,1),
    shots int,
    shots_on_targ int,
    -- passing related
    assists int,
    xa numeric(3,1),
    second_assists int,
    key_passes int,
    players_beat_by_passes int, -- # of oppo players cut out by your pass
    passes_att int,
    passes_compl int,
    lobs_compl int,
    through_balls_compl int, -- through ball + lobbed through ball
    crosses_att int,
    crosses_compl int

);

comment on table player_stats_off is 'each record represents a players possession/offensive stats (dribbling, passing, shooting) in a single league game';

create table if not exists player_stats_def (

    def_id int primary key generated by default as identity,
    fk_player_id int references players (player_id) not null,
    fk_game_id int references games (game_id) not null,
    stand_tkl_att int,
    stand_tkl_won int,
    slide_tkl_att int,
    slide_tkl_won int,
    interceptions int,
    blocks int,
    clearances int,
    off_duels_att int,
    off_duels_won int,
    def_duels_att int,
    def_duels_won int,
    air_duels_att int,
    air_duels_won int,
    beaten_by_opp int,
    fouls_committed int,
    saves int -- goalie only stat

);

comment on table player_stats_def is 'each record represents a players defensive stats in a single league game';





