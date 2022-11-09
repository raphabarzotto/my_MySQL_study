SELECT
    songs.song AS 'song',
    COUNT(history.id_song) AS 'views'
FROM
    SpotifyClone.plans_table AS plans
        INNER JOIN
    SpotifyClone.users_table AS users
      ON plans.id_plan = users.id_plan
        INNER JOIN
    SpotifyClone.history_table AS history
      ON users.id_user = history.id_user
        INNER JOIN
    SpotifyClone.songs_table AS songs
      ON history.id_song = songs.id_song
WHERE
    plans.id_plan IN (1 , 4)
GROUP BY songs.song
ORDER BY songs.song;