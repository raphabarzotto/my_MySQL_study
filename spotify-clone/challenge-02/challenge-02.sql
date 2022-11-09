SELECT 
    COUNT(DISTINCT songs.id_song) AS 'songs',
    COUNT(DISTINCT artists.id_artist) AS 'artists',
    COUNT(DISTINCT albuns.id_album) AS 'albuns'
FROM
    SpotifyClone.songs_table AS songs,
    SpotifyClone.artists_table AS artists,
    SpotifyClone.album_table AS albuns; 