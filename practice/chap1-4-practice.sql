
-- 문제 1
SELECT 
  TO_CHAR(CREATION_DATE, 'YYYY"년" MM"월" DD"일" (DY)') AS "게시물 작성일"
FROM POSTS
WHERE POST_ID = 4
;

-- 문제 2
SELECT
  USERNAME
  , NVL(TO_CHAR(MANAGER_ID), '최상위 관리자') AS "매니저 정보"
FROM USERS
;

-- 문제 3
SELECT
  USERNAME
  , LAST_LOGIN_DATE
  , CASE 
    WHEN TO_CHAR(LAST_LOGIN_DATE, 'YYYY-MM-DD') >= '2024-01-01' THEN  '최근 활동 유저'
    ELSE '휴면 유저'
  END AS "활동 상태"
FROM USERS
;

-- 문제 4
SELECT
  COMMENT_ID
  , CASE MOD(COMMENT_ID, 2)
    WHEN 1 THEN '짝수 댓글'
    ELSE '홀수 댓글'
  END AS "댓글 유형"
FROM COMMENTS
;
