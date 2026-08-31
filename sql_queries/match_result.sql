SELECT

    CASE

        WHEN
            (
                m.home_team_id = t.team_id
                AND sc.half_time_home > sc.half_time_away
            )
            OR
            (
                m.away_team_id = t.team_id
                AND sc.half_time_away > sc.half_time_home
            )
        THEN 'Leading HT'

        WHEN
            sc.half_time_home = sc.half_time_away
        THEN 'Draw HT'

        ELSE 'Losing HT'

    END AS halftime_status,

    COUNT(*) AS matches,

    SUM(
        CASE
            WHEN
                (
                    m.home_team_id = t.team_id
                    AND m.winner = 'HOME_TEAM'
                )
                OR
                (
                    m.away_team_id = t.team_id
                    AND m.winner = 'AWAY_TEAM'
                )
            THEN 1 ELSE 0
        END
    ) AS wins

FROM matches m

JOIN teams t
    ON t.name = 'FC Barcelona'

JOIN scores sc
    ON m.match_id = sc.match_id

WHERE
    m.home_team_id = t.team_id
    OR m.away_team_id = t.team_id

GROUP BY halftime_status;