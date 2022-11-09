SELECT 
    users.user AS 'user',
    COUNT(history.id_song) AS 'how_many_songs_listened',
    ROUND(SUM(songs.duration_seconds) / 60, 2) AS 'total_minutes'
FROM
    SpotifyClone.users_table AS users
        INNER JOIN
    SpotifyClone.history_table AS history
      ON users.id_user = history.id_user
        INNER JOIN
    SpotifyClone.songs_table AS songs
      ON songs.id_song = history.id_song
GROUP BY users.id_user
ORDER BY users.user; 