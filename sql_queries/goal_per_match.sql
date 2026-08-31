SELECT
    t.name AS team_name,

    COUNT(*) AS matches,

    SUM(
        CASE
            WHEN m.home_team_id = t.team_id
            THEN sc.full_time_home
            ELSE sc.full_time_away
        END
    ) AS total_goals,

    ROUND(
        AVG(
            CASE
                WHEN m.home_team_id = t.team_id
                THEN sc.full_time_home
                ELSE sc.full_time_away
            END
        ),
        2
    ) AS goals_per_match

FROM matches m

JOIN teams t
    ON t.name = 'FC Barcelona'

JOIN scores sc
    ON m.match_id = sc.match_id

WHERE
    m.home_team_id = t.team_id
    OR m.away_team_id = t.team_id

GROUP BY t.team_id, t.name;