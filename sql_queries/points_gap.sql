SELECT
    barcelona.name AS team_name,
    barcelona_st.points AS barcelona_points,
    MAX(all_st.points) AS leader_points,

    MAX(all_st.points)
    - barcelona_st.points AS points_gap

FROM standings barcelona_st

JOIN teams barcelona
    ON barcelona_st.team_id = barcelona.team_id

JOIN standings all_st
    ON barcelona_st.league_id = all_st.league_id

WHERE barcelona.name = 'FC Barcelona'

GROUP BY
    barcelona.name,
    barcelona_st.points;