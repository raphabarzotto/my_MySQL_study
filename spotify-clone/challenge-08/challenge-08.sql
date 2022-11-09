SELECT
    artists.artist, albuns.album
FROM
    SpotifyClone.artists_table AS artists
        INNER JOIN
    SpotifyClone.album_table AS albuns
      ON artists.id_artist = albuns.id_artist
WHERE
    artists.artist = 'Walter Phoenix';