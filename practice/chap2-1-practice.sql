
-- 문제 1. 전체 활동 로그 만들기

SELECT follower_id AS user_id, creation_date, 'FOLLOW' AS activity_type 
FROM FOLLOWS
UNION ALL
SELECT user_id, creation_date, 'LIKE' AS activity_type 
FROM LIKES;


SELECT * FROM FOLLOWS;
SELECT * FROM LIKES;


-- 문제 2. 특정 게시물 관련 유저 찾기

SELECT USER_ID FROM LIKES WHERE POST_ID = 2
UNION
SELECT USER_ID FROM COMMENTS WHERE POST_ID = 2
;


SELECT * FROM COMMENTS;
SELECT * FROM LIKES;


-- 문제 3. 진정한 인싸 찾기

SELECT * FROM FOLLOWS;

-- 팔로우를 한 사용자 목록
SELECT FOLLOWER_ID FROM FOLLOWS
INTERSECT
-- 팔로우를 받은 사용자 목록
SELECT FOLLOWING_ID FROM FOLLOWS; 


-- 문제 4. 게시물만 올리는 작가님

SELECT * FROM POSTS;
SELECT * FROM COMMENTS;

-- 게시물을 작성한 사용자 목록
SELECT USER_ID FROM POSTS
MINUS
-- 댓글을 작성한 사용자 목록
SELECT USER_ID FROM COMMENTS
;


-- 문제 5. 인기 게시물의 조건

SELECT * FROM LIKES;
SELECT * FROM COMMENTS;

-- '좋아요'를 받은 게시물 목록
SELECT POST_ID FROM LIKES
INTERSECT
-- '댓글'이 달린 게시물 목록
SELECT POST_ID FROM COMMENTS
;

