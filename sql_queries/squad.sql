SELECT
    p.name AS player_name,
    p.position,
    p.nationality,
    p.date_of_birth

FROM players p

JOIN teams t
    ON p.team_id = t.team_id

WHERE t.name = 'FC Barcelona'

ORDER BY p.position, p.name;