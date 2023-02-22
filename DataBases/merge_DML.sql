-- 회원 목록 채우기
INSERT INTO USER (USER_UID, PASSWORD, NAME, BIRTH, GENDER, PHONE, AUTHORITY)
VALUES ('ADMIN', '1250', '관리자', '1990-12-27', '남자', '010-5657-2123', 'ADMIN'),
('DOMI', '6588', '김도미', '1994-11-08', '여자', '010-5168-8781', 'USER'),
('PARK', '2341', '박지유', '1991-04-13', '여자', '010-1542-6551', 'USER'),
('Hiru', '2580', '한석현', '1996-06-15', '남자', '010-8465-4658', 'USER'),
('somsom', '8538', '이혜솜', '1999-12-02', '여자', '010-4589-2165', 'USER'),
('sky', '5252', '성하늘', '1988-09-21', '남자', '010-9878-7442', 'USER'),
('alwls', '7733', '유미진', '1987-07-07', '여자', '010-6879-5438', 'USER'),
('knog05', '0505', '백준혁', '1995-10-05', '남자', '010-8941-8235', 'USER'),
('iiooii', '4523', '허성택', '1997-03-18', '남자', '010-9751-4411', 'USER'),
('nnuunn', '3570', '김경태', '1993-08-11', '남자', '010-2562-3324', 'USER'),
('gd99', '5299', '이유정', '1992-07-22', '여자', '010-7986-5464', 'USER'),
('r8o8y', '8763', '강지한', '1998-12-16', '남자', '010-3645-1245', 'USER'),
('omgomg', '2565', '박유미', '1986-11-28', '여자', '010-8224-0660', 'USER'),
('kkkk', '4141', '이서진', '1985-02-25', '남자', '010-3368-9064', 'USER')
;
-- 회원 목록 한명 추가
INSERT INTO USER (USER_UID, PASSWORD, NAME, BIRTH, GENDER, PHONE, AUTHORITY)
VALUE ('Hiru', '2580', '한석현', '2000-06-15', '남자', '010-8465-4658', 'ROLE_USER')
;

DELETE FROM USER WHERE USER_UID='hoho';

UPDATE USER SET AUTHORITY='ADMIN'
WHERE AUTHORITY='ROLE_ADMIN'
;

SELECT *
FROM USER;

-- 와인 목록 채우기
INSERT INTO WINE (WINE_UID, WINE_NAME, WINE_NAME_EN, WINE_SCOPE, WINE_COMPANY, WINE_VARIETY, WINE_COUNTRY, WINE_REGION, WINE_TYPE, WINE_ALCOHOL_DEGREE, WINE_PRICE, WINE_IMAGE, WINE_FILE, WINE_INFO, WINE_FOOD_PAIRING)
VALUES ('ROSE01', '도제화이트스파클링', 'DOZE WHITE SPARKLING', '4.6', '도제', '모스카토100', '이탈리아', '피몬테', '화이트', '5.5', '26000', '이미지', '파일', '바디감 낮음, 산도 높음', '돼지, 닭'),
('DASPERED01', '다스페 레드 쥬아', 'DASPE RED JUA', '4.8', '다스페', '쥬셈50', '스위스', '보슈아', '레드', '5.0', '32000', '이미지', '파일', '바디감 낮음, 산도 낮음', '소, 치즈')
;
-- 와인 목록 한개 추가
INSERT INTO WINE (WINE_UID, WINE_NAME, WINE_NAME_EN, WINE_SCOPE, WINE_COMPANY, WINE_VARIETY, WINE_COUNTRY, WINE_REGION, WINE_TYPE, WINE_ALCOHOL_DEGREE, WINE_PRICE, WINE_IMAGE, WINE_FILE, WINE_INFO, WINE_FOOD_PAIRING)
VALUE ('ROSE01', '도제화이트스파클링', 'DOZE WHITE SPARKLING', '4.6', '도제', '모스카토100', '이탈리아', '피몬테', '화이트', '5.5', '26000', '이미지', '파일', '바디감 낮음, 산도 높음', '돼지, 닭')
;

DELETE FROM WINE WHERE WINE_UID='ROSE01';

UPDATE WINE SET WINE_NAME='도제 로제 스파클링'
WHERE WINE_UID='ROSE01'
;

SELECT *
FROM WINE;

-- QNA 목록 채우기
INSERT INTO QNA (QNA_UID, QNA_TITLE, QNA_CONTENT, QNA_DATE, QNA_ANSWER, QNA_ANSWER_DATE, ANSWER_STATUS, USER_UID, WINE_UID) 
VALUES ('Q01', '많이 달까요?', '연세가 좀 있으신데 많이 달까봐 걱정입니다.', '2023-01-25', '안녕하세요. 와인타임입니다. 해당 상품은 당도가 그리 높지 않은 제품입니다^^ 감사합니다.', '2023-01-26', '답변완료', 'DOMI', 'ROSE01'),
('Q02', '보관문의', '보관은 어떻게 해야죠?', '2023-01-26', '안녕하세요. 와인타임입니다. 적정온도는 14-16도로 보관해주시면 되겠습니다.', '2023-01-26', '답변완료', 'DOMI', 'ROSE01'),
('Q03', '선물용 추천', '선물용으로 괜찮은 제품 추천해주세요~!', '2023-01-26', NULL, NULL, '답변대기', 'Hiru', 'DASPERED01')
;

-- QNA 목록 한개 추가
INSERT INTO QNA (QNA_UID, QNA_TITLE, QNA_CONTENT, QNA_DATE, QNA_ANSWER, QNA_ANSWER_DATE, ANSWER_STATUS, USER_UID, WINE_UID) 
VALUE ('Q03', '어르신들 좋아하실까요?', '생일잔치에 사가려고 합니다!', '2023-02-20', NULL, NULL, '답변대기', 'PARK', 'ROSE01')
;

DELETE FROM QNA WHERE QNA_UID='Q02';

UPDATE QNA SET QNA_TITLE='보관문의', QNA_CONTENT='보관은 어떻게 해야죠?', QNA_ANSWER='안녕하세요. 와인타임입니다. 적정온도는 14-16도로 보관해주시면 되겠습니다.'
WHERE QNA_UID='Q02'
;

SELECT QNA_TITLE, QNA_CONTENT
FROM QNA
WHERE QNA_UID='Q03';

-- 공지 목록 채우기
INSERT INTO NOTICE (NOTICE_UID, NOTICE_DATE, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_FILE, USER_UID) 
VALUES ('N01', '2023-01-27', '회원가입 주의사항', '회원가입에 필요한 필수 동의서 체크를 해주셔야만 회원가입이 정상적으로 처리됩니다. 내용 확인하시어 이용에 불편함이 없으시길 바랍니다.', NULL, 'ADMIN'),
('N02', '2023-02-02', '비밀번호 변경 안내', '비밀번호 변경은 마이페이지에서 회원 정보 수정을 통하여 변경하실 수 있습니다.', NULL, 'ADMIN'),
('N03', '2023-02-10', '서버 점검 안내', '안녕하세요. 와인타임 서버 점검이 2023년 02월 12일 13:00에 진행 예정으로 이용하시는데 참고하시길 바랍니다.', NULL, 'ADMIN')
;

DELETE FROM NOTICE WHERE NOTICE_UID='N02';

UPDATE NOTICE SET NOTICE_TITLE='회원가입 관련 공지'
WHERE NOTICE_UID='N01'
;

SELECT NOTICE_TITLE, NOTICE_CONTENT
FROM NOTICE
WHERE NOTICE_UID='N02';

-- 이벤트 목록 채우기
INSERT INTO EVENT (EVENT_UID, EVENT_DATETIME, EVENT_FILE, EVENT_TITLE, EVENT_DATE, EVENT_CONTENT, USER_UID) 
VALUES ('E01', '2023-02-21 ~ 2023-02-24', NULL, '레드와인 시음회', '2023-02-20','레드와인 시음회를 종로에서 진행합니다. 여러가지 레드와인을 테스트 해보실 수 있으니 많은 참여와 관심 부탁드립니다.', 'ADMIN'),
('E02', '2023-02-25 ~ 2023-02-30', NULL, '와인 강의', '2023-02-21','세계적으로 유명한 백종원 셰프와 진행하는 와인 강의! 와인에 대한 전반적인 지식과 이야기를 들으실 수 있습니다.', 'ADMIN')
;
INSERT INTO EVENT (EVENT_UID, EVENT_DATETIME, EVENT_FILE, EVENT_TITLE, EVENT_DATE, EVENT_CONTENT, USER_UID) 
VALUE ('E03', '2023-02-23 ~ 2023-02-27', NULL, '와인 페스티벌', '2023-02-21','전주에서 진행하는 와인페스티벌! 많은 참여 부탁드립니다.', 'ADMIN')
;

DELETE FROM EVENT WHERE EVENT_UID='E02';

UPDATE EVENT SET EVENT_FILE='유명 셰프 와인 강의'
WHERE EVENT_UID='E02'
;

SELECT *
FROM EVENT
WHERE EVENT_UID='E01';

-- 리뷰 목록 채우기
INSERT INTO REVIEW (REVIEW_UID, REVIEW_TITLE, REVIEW_SCOPE, REVIEW_DATE, REVIEW_CONTENT, USER_UID, WINE_UID) 
VALUES ('R01', '좋아용', '4.5', '2023-02-11', '맛있어요 굳굳','sky', 'ROSE01'),
('R02', '무난해요', '4.0', '2023-02-12', '그냥 평범해요','DOMI', 'DASPERED01')
;
INSERT INTO REVIEW (REVIEW_UID, REVIEW_TITLE, REVIEW_SCOPE, REVIEW_DATE, REVIEW_CONTENT, USER_UID, WINE_UID) 
VALUE ('R03', '쏘쏘', '4.0', '2023-02-15', '나쁘지 않아여', 'Hiru', 'ROSE01')
;

DELETE FROM REVIEW WHERE REVIEW_UID='R02';

UPDATE REVIEW SET REVIEW_TITLE='아주 추천!'
WHERE REVIEW_UID='R01'
;

SELECT REVIEW_TITLE, REVIEW_SCOPE, REVIEW_CONTENT
FROM REVIEW
WHERE REVIEW_UID='R03';

