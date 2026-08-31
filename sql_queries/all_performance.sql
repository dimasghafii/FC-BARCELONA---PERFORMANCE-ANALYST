-- All Performance
-- Query untuk menampilkan performa tim FC Barcelona berdasarkan tabel standings

SELECT
    t.name AS team_name,
    st.position,
    st.played_games,
    st.won,
    st.draw,
    st.lost,
    st.points,
    st.goals_for,
    st.goals_against,
    st.goal_difference,
    st.form
FROM standings st
JOIN teams t
    ON st.team_id = t.team_id
WHERE t.name = 'FC Barcelona';
