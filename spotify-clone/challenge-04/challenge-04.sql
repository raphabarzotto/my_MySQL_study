SELECT 
    DISTINCT (users.user) AS 'user',
    IF(MAX(history.data_play) > '2020-12-31', 'Active User', 'Inactive User') 
        AS 'user_condition'
FROM
    SpotifyClone.users_table AS users
        INNER JOIN
    SpotifyClone.history_table AS history
      ON users.id_user = history.id_user
GROUP BY history.id_user
ORDER BY users.user;