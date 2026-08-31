SELECT
    se.year AS season,
    st.position,
    st.played_games,
    st.won,
    st.draw,
    st.lost,
    st.points,
    st.goals_for,
    st.goals_against,
    st.goal_difference

FROM standings st

JOIN teams t
    ON st.team_id = t.team_id

JOIN seasons se
    ON st.season_id = se.season_id

WHERE t.name = 'FC Barcelona'

ORDER BY se.year;