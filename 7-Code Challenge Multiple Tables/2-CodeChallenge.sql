
-- La columna song_iden playsdebe coincidir con la columna iden songs.

/*
Unirse playsa songsy seleccione:

user_id desde plays
play_date desde plays
title desde songs
*/

SELECT plays.user_id,
   plays.play_date,
   songs.title
FROM plays
JOIN songs
  ON plays.song_id = songs.id;