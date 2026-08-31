SELECT
    t.name AS team_name,

    COUNT(*) AS matches,

    SUM(
        CASE
            WHEN m.home_team_id = t.team_id
            THEN sc.full_time_away
            ELSE sc.full_time_home
        END
    ) AS goals_conceded,

    ROUND(
        AVG(
            CASE
                WHEN m.home_team_id = t.team_id
                THEN sc.full_time_away
                ELSE sc.full_time_home
            END
        ),
        2
    ) AS conceded_per_match

FROM matches m

JOIN teams t
    ON t.name = 'FC Barcelona'

JOIN scores sc
    ON m.match_id = sc.match_id

WHERE
    m.home_team_id = t.team_id
    OR m.away_team_id = t.team_id

GROUP BY t.team_id, t.name;