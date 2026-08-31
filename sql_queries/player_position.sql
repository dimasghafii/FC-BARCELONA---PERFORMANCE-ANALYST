SELECT
    p.position,
    COUNT(*) AS player_count

FROM players p

JOIN teams t
    ON p.team_id = t.team_id

WHERE t.name = 'FC Barcelona'

GROUP BY p.position

ORDER BY player_count DESC;