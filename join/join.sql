-- 테이블 2개 생성
-- GIRL_GROUP
CREATE TABLE `GIRL_GROUP` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `debut` date NOT NULL,
  `hit_song_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
)

-- SONG
CREATE TABLE `SONG` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `lyrics` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
)

-- 값을 채워 넣는다.


-- INNER JOIN
-- 교집합을 뜻한다
-- GIRL_GROUP 테이블과 SONG 테이블 모두 hit_song_id를 컬럼으로 가진다.
-- 이 두 테이블의 교집합 ( 즉, hit_song_id를 가지고 있는 girl_group)을 출력하자
SELECT  gg.debut , gg.name , s.title FROM girl_group gg
JOIN SONG s
on gg.hit_song_id  = s.id;

-- LEFT OUTER , RIGHT OUTER JOIN
-- 왼쪽에 있는 차집합 + 교집합 : LEFT OUTER
-- 오른쪽에 있는 차집합 + 교집합 : RIGHT OUTER
SELECT gg.debut , gg.name  , s.title from GIRL_GROUP gg
LEFT JOIN SONG s
on gg.hit_song_id  = s.id;

SELECT gg.debut , gg.name  , s.title from SONG s
RIGHT JOIN GIRL_GROUP gg
on gg.hit_song_id  = s.id;

-- CROSS JOIN
-- 모든 경우의 수를 다 출력 하는 거임 ( a x b )
select gg.name , s.title
from GIRL_GROUP gg, SONG s;

-- SELF JOIN
SELECT E.EMPNAME, M.EMPNAME
FROM EMPLOYEE E, EMPLOYEE M
WHERE E.MANAGER = M.EMPNO;


