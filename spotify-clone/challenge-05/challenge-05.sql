SELECT
    songs.song AS 'song',
    COUNT(history.id_song) AS 'times_played'
FROM
    SpotifyClone.songs_table AS songs
        INNER JOIN
    SpotifyClone.history_table AS history
      ON songs.id_song = history.id_song
GROUP BY history.id_song
ORDER BY COUNT(history.id_song) DESC , songs.song
LIMIT 5;