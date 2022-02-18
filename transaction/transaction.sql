-- create transaction

START TRANSACTION; -- 먼저 실행
UPDATE SONG
SET title = 'test' , lyrics = 'test !!!!'
WHERE SONG.id =
(SELECT hit_song_id
FROM
	(SELECT gg.hit_song_id
	FROM GIRL_GROUP gg
	INNER JOIN SONG s
	ON gg.hit_song_id = s.id
	WHERE gg.name = '소녀시대') tmp);

-- use transaction
ROLLBACK;
-- or
COMMIT;