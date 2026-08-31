SELECT

    CASE
        WHEN home.name = 'FC Barcelona'
        THEN away.name
        ELSE home.name
    END AS opponent,

    COUNT(*) AS matches,

    SUM(
        CASE
            WHEN
                (home.name = 'FC Barcelona'
                 AND m.winner = 'HOME_TEAM')
                OR
                (away.name = 'FC Barcelona'
                 AND m.winner = 'AWAY_TEAM')
            THEN 1 ELSE 0
        END
    ) AS wins,

    SUM(
        CASE
            WHEN m.winner = 'DRAW'
            THEN 1 ELSE 0
        END
    ) AS draws,

    SUM(
        CASE
            WHEN
                (home.name = 'FC Barcelona'
                 AND m.winner = 'AWAY_TEAM')
                OR
                (away.name = 'FC Barcelona'
                 AND m.winner = 'HOME_TEAM')
            THEN 1 ELSE 0
        END
    ) AS losses

FROM matches m

JOIN teams home
    ON m.home_team_id = home.team_id

JOIN teams away
    ON m.away_team_id = away.team_id

WHERE
    home.name = 'FC Barcelona'
    OR away.name = 'FC Barcelona'

GROUP BY opponent

ORDER BY losses DESC;