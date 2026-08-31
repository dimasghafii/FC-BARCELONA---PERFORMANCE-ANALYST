SELECT
    t.name AS team_name,
    st.position,
    st.points,
    st.won,
    st.draw,
    st.lost,
    st.goal_difference

FROM standings st

JOIN teams t
    ON st.team_id = t.team_id

WHERE st.league_id = (
    SELECT league_id
    FROM teams
    WHERE name = 'FC Barcelona'
)

ORDER BY st.position;