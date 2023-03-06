use mango_final_projectDB;

INSERT INTO USER (USER_UID, PASSWORD, NAME, BIRTH, GENDER, PHONE, AUTHORITY, ADDRESS, ADDRESS_DETAIL, POST)
VALUES ('ADMIN', '$2a$10$Iz/YC0Wrcvi1Ee//cICBD.ThOM2woiwkYuxzdj/tT9zWs2di9G4ay', '관리자', '1990-12-27', '남자', '010-5657-2123', 'ADMIN', '서울특별시 송파구 가락로 232', '126-5 서울탑빌라트', '05644'),
('DOMI', '6588', '김도미', '1994-11-08', '여자', '010-5168-8781', 'USER', '서울특별시 송파구 백제고분로 214', '48-10 서울외과빌딩', '05582'),
('PARK', '2341', '박지유', '1991-04-13', '여자', '010-1542-6551', 'USER', '서울특별시 강남구 역삼로 556', '967-6 서울아카데미빌딩', '06187'),
('Hiru', '2580', '한석현', '1996-06-15', '남자', '010-8465-4658', 'USER', '인천광역시 부평구 부흥로 251', '70-91 경기빌딩', '21378'),
('somsom', '8538', '이혜솜', '1999-12-02', '여자', '010-4589-2165', 'USER', '경기도 평택시 고덕갈평8길 13', '1851-3', '18004'),
('sky', '5252', '성하늘', '1988-09-21', '남자', '010-9878-7442', 'USER', '서울특별시 동대문구 서울시립대로 5', '464-1', '02592'),
('alwls', '7733', '유미진', '1987-07-07', '여자', '010-6879-5438', 'USER', '경기도 수원시 권선구 구운로27번길 25', '514-7 2층', '16410'),
('knog05', '0505', '백준혁', '1995-10-05', '남자', '010-8941-8235', 'USER', '서울특별시 송파구 문정로 125', '프라자아파트', '05785'),
('iiooii', '4523', '허성택', '1997-03-18', '남자', '010-9751-4411', 'USER', '서울특별시 종로구 대학로14길 25-1', '윤서빌딩 301호', '03084'),
('nnuunn', '3570', '김경태', '1993-08-11', '남자', '010-2562-3324', 'USER', '경기도 의정부시 고산로 312', '217-2', '11801'),
('gd99', '5299', '이유정', '1992-07-22', '여자', '010-7986-5464', 'USER', '서울특별시 송파구 삼학사로 136', '47-1', '05608'),
('r8o8y', '8763', '강지한', '1998-12-16', '남자', '010-3645-1245', 'USER', '경기도 성남시 분당구 판교공원로1길 1', '612-4', '13477'),
('omgomg', '2565', '박유미', '1986-11-28', '여자', '010-8224-0660', 'USER', '경기도 성남시 중원구 갈마치로 215', '금강펜테리움IT타워 5층', '13217'),
('kkkk', '4141', '이서진', '1985-02-25', '남자', '010-3368-9064', 'USER', '서울특별시 동작구 대방동15나길 10', '대방빌리지', '06945')
;

INSERT INTO WINE (WINE_NAME, WINE_NAME_EN, WINE_SCOPE, WINE_COMPANY, WINE_VARIETY, WINE_COUNTRY, WINE_REGION, WINE_TYPE, WINE_ALCOHOL_DEGREE, WINE_PRICE, WINE_IMAGE, WINE_FILE, WINE_BODY, WINE_ACIDITY, WINE_SUGAR, WINE_TANNIN, WINE_FOOD_PAIRING)
VALUES ('14핸즈 카베르네 소비뇽', '14HANDS CABERNET SAUVIGNON', 3.7, '포틴핸즈', '카베르네 소비뇽', '미국', '워싱턴', '레드', 13.5, 27000, '이미지', '파일', '무거움', '높음', '중간', '약함', '치즈'),
('14핸즈 메를로', '14HANDS MERLOT', 3.7, '포틴핸즈', '메를로', '미국', '워싱턴', '레드', 14.5, 27000, '이미지', '파일', '무거움', '낮음', '중간', '약함', '소, 치즈'),
('SET)페데럴리스트 진판델 원통 패키지', 'SET)THE FEDERALIST ZINFANDEL', 3.8, '텔라토', '진판델', '미국', '워싱턴', '레드', 14.5, 50000, '이미지', '파일', '무거움', '낮음', '중간', '약함', '소, 양'),
('마틴 레이 소노마 나파 카운티 카베르네 소비뇽', 'MARTIN RAY SOMONA NAPA COUNTY CABERNET SAUVIGNON', 3.8, '마틴 레이', '카베르네 소비뇽', '미국', '캘리포니아', '레드', 14.4, 52000, '이미지', '파일', '무거움', '낮음', '중간', '약함', '소, 돼지'),
('도멘 디지오아 로이예 싸비니 르 본', 'DOMAINE DIGIOIA ROYER SAVIGNY LES BEAUNE', 4.0, '도멘', '피노누아', '프랑스', '부르고뉴', '레드', 15.0, 85000, '이미지', '파일', '무거움', '낮음', '낮음', '중간', '소')
;

INSERT INTO WINE (WINE_NAME, WINE_NAME_EN, WINE_SCOPE, WINE_COMPANY, WINE_VARIETY, WINE_COUNTRY, WINE_REGION, WINE_TYPE, WINE_ALCOHOL_DEGREE, WINE_PRICE, WINE_IMAGE, WINE_FILE, WINE_BODY, WINE_ACIDITY, WINE_SUGAR, WINE_TANNIN, WINE_FOOD_PAIRING)
VALUES ('베니카 트레 비니스', 'VENICA TRE VIGNIS', 3.9, '베니카', '기타', '이탈리아', '콜리오', '화이트', 13.5, 55000, '이미지', '파일', '무거움', '낮음', '중간', '약함', '닭'),
('14핸즈 소비뇽블랑', '14Hands Sauvignon Blanc', 3.6, '포틴핸즈', '소비뇽블랑', '미국', '워싱턴', '화이트', 13.0, 27000, '이미지', '파일', '가벼움', '높음', '높음', '높음', '치즈'),
('14핸즈 샤르도네', '14Hands Chardonnay', 3.6, '포틴핸즈', '샤르도네', '미국', '워싱턴', '화이트', 13.5, 27000, '이미지', '파일', '무거움', '중간', '낮음', '중간', '돼지'),
('SET)페데럴리스트 샤르도네 원통 패키지', 'SET)THE FEDERALIST CHARDONNAY', 3.7, '텔라토', '샤르도네', '미국', '워싱턴', '화이트', 14.5, 50000, '이미지', '파일', '중간', '높음', '중간', '높음', '돼지'),
('파토리아 르 푸필레 포지오 아르젠타토', 'FATTORIA LE PUPILLE POGGIO ARGENTATO', 3.7, '파토리아', '소비뇽블랑', '이탈리아', '마렘마', '화이트', 15.0, 40000, '이미지', '파일', '중간', '중간', '낮음', '중간', '치즈')
;

INSERT INTO WINE (WINE_NAME, WINE_NAME_EN, WINE_SCOPE, WINE_COMPANY, WINE_VARIETY, WINE_COUNTRY, WINE_REGION, WINE_TYPE, WINE_ALCOHOL_DEGREE, WINE_PRICE, WINE_IMAGE, WINE_FILE, WINE_BODY, WINE_ACIDITY, WINE_SUGAR, WINE_TANNIN, WINE_FOOD_PAIRING)
VALUES ('메종 넘버나인 로제', 'MAISON NUMBER NINE ROSE', 4.1, '메종', '기타', '프랑스', '프로방스', '로제', 12.5, 69000, '이미지', '파일', '중간', '중간', '높음', '약함', '치즈'),
('웨일본 베이 소비뇽 로제', 'WHALEBONE BAY SAUVIGNON ROSE', 4.1, '웨일본', '피노누아', '뉴질랜드', '남섬', '로제', 12.5, 45000, '이미지', '파일', '중간', '중간', '중간', '중간', '돼지'),
('스칼라브로네 볼게리 로제', 'SCALABRONE BOLGHERI ROSE', 3.9, '스칼라브로네', '카베르네 소비뇽', '이탈리아', '볼게리', '로제', 12.0, 34000, '이미지', '파일', '중간', '높음', '높음', '약함', '닭'),
('라 샤펠 고르돈느 로제', 'LA CHAPELLE GORDONNE ROSE', 4.0, '라 샤펠', '쉬라즈', '프랑스', '프로방스', '로제', 13.5, 55000, '이미지', '파일', '중간', '중간', '낮음', '약함', '돼지'),
('엠 로제', 'M ROSE', 4.0, '엠', '모스카토', '이탈리아', '볼게리', '로제', 9.0, 12900, '이미지', '파일', '가벼움', '낮음', '중간', '중간', '치즈')
;

INSERT INTO WINE (WINE_NAME, WINE_NAME_EN, WINE_SCOPE, WINE_COMPANY, WINE_VARIETY, WINE_COUNTRY, WINE_REGION, WINE_TYPE, WINE_ALCOHOL_DEGREE, WINE_PRICE, WINE_IMAGE, WINE_FILE, WINE_BODY, WINE_ACIDITY, WINE_SUGAR, WINE_TANNIN, WINE_FOOD_PAIRING)
VALUES ('쥬세페 베르디 람브루스코 미디엄 드라이', 'CECI GIUSEPPE VERDI LAMBRUSCO MEDIUM DRY', 3.7, '쎄씨', '기타', '이탈리아', '북부 이탈리아', '스파클링', 11.0, 13900, '이미지', '파일', '바디감 중간', '산도 중간', '당도 중간', '타닌 약함', '돼지'),
('쥬세페 베르디 말바시아 프리잔테 돌체', 'CECI GIUSEPPE VERDI MALVASIA FRIZZANTE DOLCE', 3.6, '쎄씨', '기타', '이탈리아', '북부 이탈리아', '스파클링', 11.0, 13900, '이미지', '파일', '중간', '중간', '높음', '약함', '돼지'),
('시모네 페브르 크레망 드 부르고뉴 브뤼', 'SIMONNET FEBVRE CREMANT DE BOURGOGNE BRUT', 3.7, '시모네', '샤르도네', '프랑스', '부르고뉴', '스파클링', 12.0, 36000, '이미지', '파일', '중간', '중간', '중간', '중간', '소'),
('디아블로 데블스 브뤼_New Label', 'DIABLO DEVIL`S BRUT_New Label', 3.6, '디아블로', '샤르도네', '칠레', '칠레', '스파클링', 10.0, 38000, '이미지', '파일', '낮음', '중간', '높음', '약함', '치즈'),
('엠피리카 이불리언트 스파클링', 'EMPIRICA EBULLIENT SPARKLING', 3.6, '카스텔리', '리슬링', '호주', '마운트 바커', '스파클링', 12.0, 35000, '이미지', '파일', '중간', '중간', '중간', '약함', '치즈, 돼지')
;

INSERT INTO STORE(STORE_NAME, STORE_NO, STORE_CEO, STORE_URL, USER_UID, WINE_UID, STORE_PRICE, STORE_DELIVERY)
VALUES ('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 1, '27000', '3000'),
('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 2, '28000', '3000'),
('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 3, '50000', '3000'),
('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 4, '52000', '3000'),
('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 5, '85000', '3000'),
('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 6, '56000', '3000'),
('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 7, '27000', '3000'),
('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 8, '27000', '3000'),
('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 9, '50000', '3000'),
('신세계몰', '870-88-01143', '강희석', 'https://www.ssg.com/', 'ADMIN', 10, '41000', '3000')
;

INSERT INTO STORE(STORE_NAME, STORE_NO, STORE_CEO, STORE_URL, USER_UID, WINE_UID, STORE_PRICE, STORE_DELIVERY)
VALUES ('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 1, '28000', '2500'),
('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 2, '28000', '2500'),
('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 3, '50000', '2500'),
('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 4, '52000', '2500'),
('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 5, '85000', '2500'),
('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 6, '56000', '2500'),
('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 7, '27000', '2500'),
('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 8, '27000', '2500'),
('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 9, '50000', '2500'),
('옥션', '220-81-83676', '전항일', 'http://www.auction.co.kr/', 'ADMIN', 10, '40000', '2500')
;

INSERT INTO STORE(STORE_NAME, STORE_NO, STORE_CEO, STORE_URL, USER_UID, WINE_UID, STORE_PRICE, STORE_DELIVERY)
VALUES ('지마켓', '220-81-83676', '전항일', 'https://www.gmarket.co.kr/', 'ADMIN', 1, '28000', '2500'),
('지마켓', '220-81-83676', '전항일', 'http://www.gmarket.co.kr/', 'ADMIN', 2, '28000', '2500'),
('지마켓', '220-81-83676', '전항일', 'http://www.gmarket.co.kr/', 'ADMIN', 3, '50000', '2500'),
('지마켓', '220-81-83676', '전항일', 'http://www.gmarket.co.kr/', 'ADMIN', 4, '52000', '2500'),
('지마켓', '220-81-83676', '전항일', 'http://www.gmarket.co.kr/', 'ADMIN', 5, '86000', '2500'),
('지마켓', '220-81-83676', '전항일', 'http://www.gmarket.co.kr/', 'ADMIN', 6, '55000', '2500'),
('지마켓', '220-81-83676', '전항일', 'http://www.gmarket.co.kr/', 'ADMIN', 7, '27000', '2500'),
('지마켓', '220-81-83676', '전항일', 'http://www.gmarket.co.kr/', 'ADMIN', 8, '27000', '2500'),
('지마켓', '220-81-83676', '전항일', 'http://www.gmarket.co.kr/', 'ADMIN', 9, '51000', '2500'),
('지마켓', '220-81-83676', '전항일', 'http://www.gmarket.co.kr/', 'ADMIN', 10, '40000', '2500')
;

INSERT INTO STORE(STORE_NAME, STORE_NO, STORE_CEO, STORE_URL, USER_UID, WINE_UID, STORE_PRICE, STORE_DELIVERY)
VALUES ('11번가', '815-81-01244', '하형일', 'https://www.11st.co.kr/main', 'ADMIN', 1, '29000', '2000'),
('11번가', '815-81-01244', '하형일', 'http://www.11st.co.kr/main', 'ADMIN', 2, '29000', '2000'),
('11번가', '815-81-01244', '하형일', 'http://www.11st.co.kr/main', 'ADMIN', 3, '50000', '2000'),
('11번가', '815-81-01244', '하형일', 'http://www.11st.co.kr/main', 'ADMIN', 4, '52000', '2000'),
('11번가', '815-81-01244', '하형일', 'http://www.11st.co.kr/main', 'ADMIN', 5, '85000', '2000'),
('11번가', '815-81-01244', '하형일', 'http://www.11st.co.kr/main', 'ADMIN', 6, '55000', '2000'),
('11번가', '815-81-01244', '하형일', 'http://www.11st.co.kr/main', 'ADMIN', 7, '27500', '2000'),
('11번가', '815-81-01244', '하형일', 'http://www.11st.co.kr/main', 'ADMIN', 8, '27500', '2000'),
('11번가', '815-81-01244', '하형일', 'http://www.11st.co.kr/main', 'ADMIN', 9, '50000', '2000'),
('11번가', '815-81-01244', '하형일', 'http://www.11st.co.kr/main', 'ADMIN', 10, '40000', '2000')
;

INSERT INTO QNA (QNA_TITLE, QNA_CONTENT, QNA_DATE, QNA_ANSWER, QNA_ANSWER_DATE, ANSWER_STATUS, USER_UID, WINE_UID) 
VALUES ('많이 달까요?', '연세가 좀 있으신데 많이 달까봐 걱정입니다.', '2023-02-13', '안녕하세요. 와인타임입니다. 해당 상품은 당도가 그리 높지 않은 제품입니다^^ 감사합니다.', '2023-01-26', '답변완료', 'DOMI', '17'),
('보관문의', '보관은 어떻게 해야죠?', '2023-02-14', '안녕하세요. 와인타임입니다. 적정온도는 14-16도로 보관해주시면 되겠습니다.', '2023-01-26', '답변완료', 'DOMI', '6'),
('선물용 추천', '선물용으로 괜찮은 제품 추천해주세요~!', '2023-02-14', NULL, NULL, '답변대기', 'somsom', '3'),
('와인 처음인데', '처음으로 접하기 괜찮나요?', '2023-02-16', NULL, NULL, '답변대기', 'Hiru', '5'),
('파티용', '파티용으로 괜찮을까요??', '2023-02-17', NULL, NULL, '답변대기', 'knog05', '10'),
('고기궁합', '놀러가서 먹을건데 고기랑 잘 어울리나요?', '2023-02-20', NULL, NULL, '답변대기', 'kkkk', '11'),
('유통기한 문의', '와인 유통기한은 어떻게 될까요?', '2023-02-20', NULL, NULL, '답변대기', 'sky', '17'),
('냉장고 보관', '냉장고 보관도 가능한지 궁금합니다.', '2023-02-21', NULL, NULL, '답변대기', 'sky', '12'),
('기념일용 와인', '기념일용 와인으로 괜찮을까요? 추천 부탁드려요!', '2023-02-24', NULL, NULL, '답변대기', 'alwls', '15'),
('어울리는 음식', '치즈랑 먹을건데 치즈랑도 잘 어울리나요?', '2023-02-25', NULL, NULL, '답변대기', 'r8o8y', '6'),
('가족파티', '가족 파티에 먹을건데 너무 쓰지 않았으면 좋겠어요', '2023-02-25', NULL, NULL, '답변대기', 'iiooii', '11'),
('입문용 로제 와인', '입문용 로제 와인으로 괜찮나요~?', '2023-02-26', NULL, NULL, '답변대기', 'gd99', '7'),
('분리수거', '와인병 분리수거는 어떻게 하나요?', '2023-02-27', NULL, NULL, '답변대기', 'nnuunn', '5'),
('바디감', '바디감이 높다는게 무슨 뜻이죠?', '2023-03-01', NULL, NULL, '답변대기', 'PARK', '9')
;

INSERT INTO NOTICE (NOTICE_DATE, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_FILE, NOTICE_ATTACHFILE_SEQ, NOTICE_ORIGINALFILE_NAME, NOTICE_PHYSICALFILE_NAME, USER_UID) 
VALUES ('2023-02-05', '회원가입 주의사항', '회원가입에 필요한 필수 동의서 체크를 해주셔야만 회원가입이 정상적으로 처리됩니다. 내용 확인하시어 이용에 불편함이 없으시길 바랍니다.', NULL, NULL, NULL, NULL, 'ADMIN'),
('2023-02-09', '비밀번호 변경 안내', '비밀번호 변경은 마이페이지에서 회원 정보 수정을 통하여 변경하실 수 있습니다.', NULL, NULL, NULL, NULL, 'ADMIN'),
('2023-02-11', '서버 점검 안내', '안녕하세요. 와인타임 서버 점검이 2023년 02월 12일 13:00에 진행 예정으로 이용하시는데 참고하시길 바랍니다.', NULL, NULL, NULL, NULL, 'ADMIN'),
('2023-02-21', '비밀번호 설정', '회원가입 진행하실 때 비밀번호가 중복되는 숫자일 경우 보완에 취약하오니 주의하시어 작성 부탁드립니다.', NULL, NULL, NULL, NULL, 'ADMIN'),
('2023-02-23', '위시리스트 관련 안내', '안녕하세요. 위시리스트 내역은 마이페이지에서 확인이 가능합니다. 감사합니다.', NULL, NULL, NULL, NULL, 'ADMIN')
;

INSERT INTO EVENT (EVENT_START, EVENT_END, EVENT_FILE, EVENT_ATTACHFILE_SEQ, EVENT_ORIGINALFILE_NAME, EVENT_PHYSICALFILE_NAME, EVENT_TITLE, EVENT_DATE, EVENT_CONTENT, USER_UID) 
VALUES ('2023-02-21', '2023-02-24', NULL, NULL, NULL, NULL, '레드와인 시음회', '2023-02-20','레드와인 시음회를 종로에서 진행합니다. 여러가지 레드와인을 테스트 해보실 수 있으니 많은 참여와 관심 부탁드립니다.', 'ADMIN'),
('2023-02-25', '2023-02-30', NULL, NULL, NULL, NULL, '와인 강의', '2023-02-21','세계적으로 유명한 백종원 셰프와 진행하는 와인 강의! 와인에 대한 전반적인 지식과 이야기를 들으실 수 있습니다.', 'ADMIN'),
('2023-02-23', '2023-02-27', NULL, NULL, NULL, NULL, '와인 페스티벌', '2023-02-21','전주에서 진행하는 와인페스티벌! 많은 참여 부탁드립니다.', 'ADMIN')
;

INSERT INTO WISHLIST(USER_UID, WINE_UID)
VALUES('PARK', '3'),
('somsom', '5'),
('sky', '8'),
('Hiru', '9'),
('knog05', '11')
;

INSERT INTO REVIEW (REVIEW_TITLE, REVIEW_SCOPE, REVIEW_DATE, REVIEW_CONTENT, USER_UID, WINE_UID) 
VALUES ('좋아용', '4.5', '2023-02-11', '맛있어요 굳굳','sky', '6'),
('무난해요', '4.0', '2023-02-12', '그냥 평범해요','DOMI', '7'),
('쏘쏘', '4.0', '2023-02-15', '나쁘지 않아여', 'Hiru', '5'),
('괜찮아요!', '4.5', '2023-02-15', '기대 안했는데 맛있어요!!', 'alwls', '3')
;

INSERT INTO COUPON (COUPON_FILE, C_ATTACHFILE_SEQ, C_ORIGINALFILE_NAME, C_PHYSICALFILE_NAME, COUPON_NAME, COUPON_DATE, COUPON_DATETIME1, COUPON_DATETIME2, USER_UID)
VALUES (NULL, NULL, NULL, NULL, '배송쿠폰', DATE(NOW()), '2023.03.02', '2023.03.08', 'ADMIN'),
		(NULL, NULL, NULL, NULL, '할인쿠폰', DATE(NOW()), '2023.03.04', '2023.03.10', 'ADMIN'),
        (NULL, NULL, NULL, NULL, '봄 맞이 배송 할인쿠폰', DATE(NOW()), '2023.03.10', '2023.04.10', 'ADMIN')
;