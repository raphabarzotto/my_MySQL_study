SELECT
    COUNT(history.id_user) AS 'how_many_musics'
FROM
    SpotifyClone.users_table AS users
        INNER JOIN
    SpotifyClone.history_table AS history
      ON users.id_user = history.id_user
WHERE
    users.user = 'Bill';