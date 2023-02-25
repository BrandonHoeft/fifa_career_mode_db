with raw_stats as (
    select full_name,
           primary_pos,
           fk_game_id,
           rating,
           minutes,
           poss_won,
           poss_lost,
           goals,
           non_pen_xg,
           shots,
           assists,
           xa,
           second_assists,
           players_beat_passes,
           passes_att,
           passes_compl,
           interceptions,
           duels_att,
           duels_won
    from player_stats
             inner join players p on player_stats.fk_player_id = p.player_id
    order by full_name, fk_game_id
)

, cum_stats as (

    select
        full_name,
        primary_pos,
        sum(minutes) as total_minutes,
        round(sum(minutes * rating) / sum(minutes), 2) as weighted_rating,
        round(sum(minutes::numeric) / 90, 2) as _90s, -- # of 90 minutes completed
        sum(poss_won) as poss_won_tot,
        sum(poss_lost) as poss_lost_tot,
        sum(shots) as shots_tot,
        sum(passes_att) as pass_att_tot, -- new
        sum(passes_compl) as pass_compl_tot, -- new
        sum(goals) as goals_tot,
        sum(non_pen_xg) as npxg_tot,
        sum(assists) as assist_tot,
        sum(xa) as xa_tot,
        sum(second_assists) as second_assist_tot, -- new
        sum(players_beat_passes) as pbp_tot,
    -- defensive cumulative stats
        sum(interceptions) as interceptions_tot,
        sum(duels_att) as duels_att_tot,
        sum(duels_won) as duels_won_tot
    from raw_stats
    group by full_name, primary_pos

)

select
    full_name,
    primary_pos,
    total_minutes,
    _90s,
    weighted_rating,
    -- possession
    round(poss_won_tot / _90s, 2) as poss_won_per_90,
    round(poss_lost_tot / _90s, 2) as poss_lost_per_90,
    case
        when poss_lost_tot = 0
            then null
        else round(poss_won_tot::numeric / poss_lost_tot, 2)
    end as poss_won_ratio,
    --shooting
    shots_tot,
    round(shots_tot / _90s, 2) as shots_per90,
    goals_tot,
    round(goals_tot / _90s, 2) as goals_per90,
    npxg_tot,
    round(npxg_tot / _90s, 2) as npxg_per90,
    round(npxg_tot / nullif(shots_tot,0), 2) as npxg_per_shot, -- indicator of avg shot quality
    round(goals_tot - npxg_tot, 2) as goals_minus_npxg,
    --passing
    round(pass_compl_tot * 4.5 / _90s, 2) as pass_compl_per90, --4.5 is extrapolating 20 minutes of real game time
    round(pass_compl_tot::numeric / nullif(pass_att_tot,0),2) as pass_compl_pct,
    assist_tot,
    xa_tot,
    round(xa_tot / _90s, 2) as xa_per90,
    round((xa_tot + npxg_tot) / _90s, 2) as npxg_plus_xa_per90,
    second_assist_tot,
    pbp_tot,
    round (pbp_tot / _90s, 2) as pbp_per90, -- players beat by passes
    -- defensive
    round(interceptions_tot / _90s, 2) as intercepts_per90,
    duels_won_tot,
    round(duels_won_tot::numeric / nullif(duels_att_tot, 0), 2) as duel_win_pct
from cum_stats
--where primary_pos like any (array['%B', 'C%M'])