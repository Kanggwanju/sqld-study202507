
-- 문제 1
SELECT 
    post_type
    , COUNT(*) AS "게시물 종류별 개수"
FROM POSTS
GROUP BY post_type
;

-- 문제 2
SELECT 
    post_id
    , COUNT(*) AS "댓글 개수"
FROM COMMENTS
GROUP BY post_id
;

-- 문제 3
SELECT
    following_id
    , COUNT(*) AS "팔로워 수"
FROM FOLLOWS
GROUP BY following_id
;

-- 문제 4
SELECT 
    post_id
    , COUNT(*) AS "댓글 수"
FROM COMMENTS
GROUP BY post_id
HAVING COUNT(*) >= 5
;

-- 문제 5
SELECT
    user_id
    , COUNT(*) AS "게시물 수"
FROM POSTS
WHERE user_id BETWEEN 1 AND 8
GROUP BY user_id
;




