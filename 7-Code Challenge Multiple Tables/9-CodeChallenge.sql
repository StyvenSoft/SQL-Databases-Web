
/*
Use una WITHdeclaración para alias este código como play_count.

Unirse play_countcon songsy seleccionar (en este orden):

    songstitlecolumna de la mesa
    songsartistcolumna de la mesa
    play_count's times_playedcolumna

*/

WITH play_count AS (
   SELECT song_id,
      COUNT(*) AS 'times_played'
   FROM plays
   GROUP BY song_id)
SELECT songs.title,
  songs.artist,
  play_count.times_played
FROM play_count
JOIN songs
  ON play_count.song_id = songs.id;