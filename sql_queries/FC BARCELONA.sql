SELECT
    t.name AS team,
    s.played_games,
    s.won,
    s.draw,
    s.lost,
    s.points,
    s.goals_for,
    s.goals_against,
    s.goal_difference
FROM standings s
JOIN teams t
    ON s.team_id = t.team_id
WHERE t.name = 'FC Barcelona';