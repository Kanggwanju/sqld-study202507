
-- 문제 1.
SELECT
  FULL_NAME
  , LENGTH(BIO) 소개글길이
FROM USER_PROFILES
ORDER BY 소개글길이 DESC
;


-- 문제 2.
SELECT 
    post_id
    , COUNT(*) AS "댓글 개수"
FROM COMMENTS
GROUP BY post_id
ORDER BY "댓글 개수" DESC
;


-- 문제 3.
SELECT *
FROM POSTS
ORDER BY
    CASE
        WHEN post_type = 'photo' then 1
        ELSE 2
    END ASC,
    CREATION_DATE DESC
;

