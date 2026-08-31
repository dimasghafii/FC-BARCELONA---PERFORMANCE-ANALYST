SELECT
    COUNT(*) AS comeback_wins

FROM matches m

JOIN teams t
    ON t.name = 'FC Barcelona'

JOIN scores sc
    ON m.match_id = sc.match_id

WHERE
    (
        m.home_team_id = t.team_id
        AND sc.half_time_home < sc.half_time_away
        AND sc.full_time_home > sc.full_time_away
    )

    OR

    (
        m.away_team_id = t.team_id
        AND sc.half_time_away < sc.half_time_home
        AND sc.full_time_away > sc.full_time_home
    );