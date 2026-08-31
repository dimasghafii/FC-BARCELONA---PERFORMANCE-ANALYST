SELECT
    'Home' AS venue,
    COUNT(*) AS matches,

    SUM(
        CASE
            WHEN m.winner = 'HOME_TEAM'
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
            WHEN m.winner = 'AWAY_TEAM'
            THEN 1 ELSE 0
        END
    ) AS losses

FROM matches m

JOIN teams t
    ON m.home_team_id = t.team_id

WHERE t.name = 'FC Barcelona'

UNION ALL

SELECT
    'Away',
    COUNT(*),

    SUM(
        CASE
            WHEN m.winner = 'AWAY_TEAM'
            THEN 1 ELSE 0
        END
    ),

    SUM(
        CASE
            WHEN m.winner = 'DRAW'
            THEN 1 ELSE 0
        END
    ),

    SUM(
        CASE
            WHEN m.winner = 'HOME_TEAM'
            THEN 1 ELSE 0
        END
    )

FROM matches m

JOIN teams t
    ON m.away_team_id = t.team_id

WHERE t.name = 'FC Barcelona';