-- Winrate
-- Query untuk menghitung persentase kemenangan FC Barcelona

SELECT
    t.name AS team_name,
    st.played_games AS matches,
    st.won AS wins,
    st.draw AS draws,
    st.lost AS losses,
    ROUND(
        100.0 * st.won / NULLIF(st.played_games, 0),
        2
    ) AS win_rate
FROM standings st
JOIN teams t
    ON st.team_id = t.team_id
WHERE t.name = 'FC Barcelona';
