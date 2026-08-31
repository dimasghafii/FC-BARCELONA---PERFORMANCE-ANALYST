SELECT
    COUNT(*) AS clean_sheet_matches

FROM matches m

JOIN teams t
    ON t.name = 'FC Barcelona'

JOIN scores sc
    ON m.match_id = sc.match_id

WHERE
    (
        m.home_team_id = t.team_id
        AND sc.full_time_away = 0
    )
    OR
    (
        m.away_team_id = t.team_id
        AND sc.full_time_home = 0
    );