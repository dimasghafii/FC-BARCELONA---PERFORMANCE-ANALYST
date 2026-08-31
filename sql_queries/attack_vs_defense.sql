SELECT
    t.name AS team_name,
    st.goals_for,
    st.goals_against,
    st.goal_difference,

    ROUND(
        1.0 * st.goals_for /
        NULLIF(st.played_games, 0),
        2
    ) AS goals_per_match,

    ROUND(
        1.0 * st.goals_against /
        NULLIF(st.played_games, 0),
        2
    ) AS conceded_per_match

FROM standings st

JOIN teams t
    ON st.team_id = t.team_id

WHERE t.name = 'FC Barcelona';