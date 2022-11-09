SELECT
    artists.artist, albuns.album, COUNT(follows.id_artist) AS 'followers'
FROM
    SpotifyClone.artists_table AS artists
        INNER JOIN
    SpotifyClone.album_table AS albuns
      ON artists.id_artist = albuns.id_artist
        INNER JOIN
    SpotifyClone.follow_artists_table AS follows
      ON albuns.id_artist = follows.id_artist
GROUP BY artists.artist , albuns.album
ORDER BY followers DESC , artists.artist , albuns.album;