
-- 문제 1. USERS 테이블에서 username이 'pikachu'인 사용자의 모든 정보를 조회
SELECT *
FROM USERS
WHERE USERNAME = 'pikachu'
;

-- 문제 2. POSTS 테이블에서 2023년 1월 1일부터 2023년 12월 31일 사이에 작성된 모든 게시물 조회
SELECT *
FROM POSTS
WHERE CREATION_DATE BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD')
                        AND TO_DATE('2023-12-31', 'YYYY-MM-DD')
;

-- 문제 3. USERS 테이블에서 카카오프렌즈 소속인 사용자들
-- username과 email만 조회
SELECT USERNAME, EMAIL
FROM USERS
WHERE USER_ID IN (1, 2, 3, 4, 5, 6, 7, 8)
;

-- 문제 4. POSTS 테이블에서 내용(content)에 '#먹스타그램' 이라는 글자가 포함된 모든 게시물
-- post_id와 content를 조회
SELECT post_id, content
FROM POSTS
WHERE content LIKE '%#먹스타그램%'
;

-- 문제 5. POSTS 테이블에서 작성자 ID(user_id)가 1번인 '라이언'이 올린 게시물
-- 종류(post_type)가 'photo'인 것만 모두 조회
SELECT *
FROM POSTS
WHERE USER_ID = 1 AND POST_TYPE = 'photo'
;

-- 문제 6. USERS 테이블에서 산리오 소속 사용자들(user_id 9번부터 20번까지)을 제외한 나머지 모든 사용자
-- username을 조회
SELECT USERNAME
FROM USERS
WHERE USER_ID NOT BETWEEN 9 AND 20
;

