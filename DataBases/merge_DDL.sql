
CREATE TABLE COUPON
(
  COUPON_UID      INT          NOT NULL COMMENT '쿠폰 UID',
  COUPON_FILE     VARCHAR(100) NULL     COMMENT '쿠폰첨부파일',
  COUPON_NAME     VARCHAR(100) NOT NULL COMMENT '쿠폰이름',
  COUPON_DATE     VARCHAR(100) NOT NULL COMMENT '쿠폰작성일',
  COUPON_DATETIME VARCHAR(100) NOT NULL COMMENT '쿠폰기한',
  USER_UID        VARCHAR(100) NOT NULL COMMENT '회원아이디',
  PRIMARY KEY (COUPON_UID)
) COMMENT '쿠폰';

CREATE TABLE EVENT
(
  EVENT_UID      INT          NOT NULL COMMENT '이벤트게시판UID',
  EVENT_DATETIME VARCHAR(100) NULL     COMMENT '이벤트기간',
  EVENT_FILE     VARCHAR(100) NULL     COMMENT '이벤트첨부파일',
  EVENT_TITLE    VARCHAR(100) NOT NULL COMMENT '이벤트제목',
  EVENT_DATE     VARCHAR(100) NOT NULL COMMENT '이벤트작성일',
  EVENT_CONTENT  VARCHAR(100) NOT NULL COMMENT '이벤트내용',
  USER_UID       VARCHAR(100) NOT NULL COMMENT '회원아이디',
  PRIMARY KEY (EVENT_UID)
) COMMENT '이벤트';

CREATE TABLE NOTICE
(
  NOTICE_UID     INT          NOT NULL COMMENT '공지게시판UID',
  NOTICE_DATE    VARCHAR(100) NOT NULL COMMENT '공지작성일',
  NOTICE_TITLE   VARCHAR(100) NOT NULL COMMENT '공지제목',
  NOTICE_CONTENT VARCHAR(100) NOT NULL COMMENT '공지내용',
  NOTICE_FILE    VARCHAR(100) NULL     COMMENT '공지첨부파일',
  USER_UID       VARCHAR(100) NOT NULL COMMENT '회원아이디',
  PRIMARY KEY (NOTICE_UID)
) COMMENT '공지사항';

CREATE TABLE QNA
(
  QNA_UID         INT          NOT NULL COMMENT '문의내역UID',
  QNA_NO          VARCHAR(100) NULL     COMMENT '문의내역 번호',
  QNA_TITLE       VARCHAR(100) NULL     COMMENT '문의내역 제목',
  QNA_CONTENT     VARCHAR(100) NULL     COMMENT '문의내역 내용',
  QNA_DATE        VARCHAR(100) NULL     COMMENT '문의내역 등록일',
  QNA_ANSWER      VARCHAR(100) NULL     COMMENT '문의내역 답변',
  QNA_ANSWER_DATE VARCHAR(100) NULL     COMMENT '문의내역처리일',
  ANSWER_STATUS   VARCHAR(100) NULL     COMMENT '답변상태',
  USER_UID        VARCHAR(100) NOT NULL COMMENT '회원아이디',
  WINE_UID        INT          NOT NULL COMMENT '와인UID',
  PRIMARY KEY (QNA_UID)
) COMMENT '문의내역';

CREATE TABLE REVIEW
(
  REVIEW_UID     INT          NOT NULL COMMENT '리뷰UID',
  REVIEW_TITLE   VARCHAR(100) NOT NULL COMMENT '리뷰제목',
  REVIEW_SCOPE   VARCHAR(100) NOT NULL COMMENT '리뷰별점',
  REVIEW_DATE    VARCHAR(100) NOT NULL COMMENT '리뷰작성일',
  REVIEW_CONTENT VARCHAR(100) NULL     COMMENT '리뷰내용',
  USER_UID       VARCHAR(100) NOT NULL COMMENT '회원아이디',
  WINE_UID       INT          NOT NULL COMMENT '와인UID',
  PRIMARY KEY (REVIEW_UID)
) COMMENT '리뷰';

CREATE TABLE STORE
(
  STORE_UID  INT          NOT NULL COMMENT '판매처UID',
  STORE_NAME VARCHAR(100) NOT NULL COMMENT '판매처이름',
  STORE_NO   VARCHAR(100) NOT NULL COMMENT '판매처사업자번호',
  STORE_CEO  VARCHAR(100) NOT NULL COMMENT '판매처대표자',
  STORE_URL  VARCHAR(100) NOT NULL COMMENT 'URL',
  USER_UID   VARCHAR(100) NOT NULL COMMENT '회원아이디',
  WINE_UID   INT          NOT NULL COMMENT '와인UID',
  PRIMARY KEY (STORE_UID)
) COMMENT '판매처';

CREATE TABLE USER
(
  USER_UID  VARCHAR(100) NOT NULL COMMENT '회원아이디',
  PASSWORD  VARCHAR(100) NOT NULL COMMENT '비밀번호',
  NAME      VARCHAR(100) NOT NULL COMMENT '이름',
  BIRTH     VARCHAR(100) NOT NULL COMMENT '생년월일',
  GENDER    VARCHAR(100) NOT NULL COMMENT '성별',
  PHONE     VARCHAR(100) NOT NULL COMMENT '전화번호',
  AUTHORITY VARCHAR(100) NOT NULL COMMENT '권한',
  PRIMARY KEY (USER_UID)
) COMMENT '회원';

CREATE TABLE WINE
(
  WINE_UID            INT          NOT NULL COMMENT '와인UID',
  WINE_NAME           VARCHAR(100) NOT NULL COMMENT '와인명',
  WINE_NAME_EN        VARCHAR(100) NOT NULL COMMENT '와인명_영문',
  WINE_SCOPE          VARCHAR(100) NOT NULL COMMENT '와인별점',
  WINE_COMPANY        VARCHAR(100) NOT NULL COMMENT '와인회사',
  WINE_VARIETY        VARCHAR(100) NOT NULL COMMENT '와인품종',
  WINE_COUNTRY        VARCHAR(100) NOT NULL COMMENT '와인나라',
  WINE_REGION         VARCHAR(100) NOT NULL COMMENT '와인생산지역',
  WINE_TYPE           VARCHAR(100) NOT NULL COMMENT '와인종류',
  WINE_ALCOHOL_DEGREE VARCHAR(100) NOT NULL COMMENT '와인도수',
  WINE_PRICE          VARCHAR(100) NOT NULL COMMENT '와인가격',
  WINE_IMAGE          VARCHAR(100) NOT NULL COMMENT '와인이미지',
  WINE_FILE           VARCHAR(100) NOT NULL COMMENT '와인상세파일',
  WINE_INFO           VARCHAR(100) NOT NULL COMMENT '와인상세정보',
  WINE_FOOD_PAIRING   VARCHAR(100) NOT NULL COMMENT '와인음식페어링',
  PRIMARY KEY (WINE_UID)
) COMMENT '와인';

CREATE TABLE WISHLIST
(
  USER_UID VARCHAR(100) NOT NULL COMMENT '회원아이디',
  WINE_UID INT          NOT NULL COMMENT '와인UID'
) COMMENT '위시리스트';

ALTER TABLE QNA
  ADD CONSTRAINT FK_USER_TO_QNA
    FOREIGN KEY (USER_UID)
    REFERENCES USER (USER_UID);

ALTER TABLE COUPON
  ADD CONSTRAINT FK_USER_TO_COUPON
    FOREIGN KEY (USER_UID)
    REFERENCES USER (USER_UID);

ALTER TABLE QNA
  ADD CONSTRAINT FK_WINE_TO_QNA
    FOREIGN KEY (WINE_UID)
    REFERENCES WINE (WINE_UID);

ALTER TABLE REVIEW
  ADD CONSTRAINT FK_USER_TO_REVIEW
    FOREIGN KEY (USER_UID)
    REFERENCES USER (USER_UID);

ALTER TABLE EVENT
  ADD CONSTRAINT FK_USER_TO_EVENT
    FOREIGN KEY (USER_UID)
    REFERENCES USER (USER_UID);

ALTER TABLE NOTICE
  ADD CONSTRAINT FK_USER_TO_NOTICE
    FOREIGN KEY (USER_UID)
    REFERENCES USER (USER_UID);

ALTER TABLE STORE
  ADD CONSTRAINT FK_USER_TO_STORE
    FOREIGN KEY (USER_UID)
    REFERENCES USER (USER_UID);

ALTER TABLE REVIEW
  ADD CONSTRAINT FK_WINE_TO_REVIEW
    FOREIGN KEY (WINE_UID)
    REFERENCES WINE (WINE_UID);

ALTER TABLE STORE
  ADD CONSTRAINT FK_WINE_TO_STORE
    FOREIGN KEY (WINE_UID)
    REFERENCES WINE (WINE_UID);

ALTER TABLE WISHLIST
  ADD CONSTRAINT FK_USER_TO_WISHLIST
    FOREIGN KEY (USER_UID)
    REFERENCES USER (USER_UID);

ALTER TABLE WISHLIST
  ADD CONSTRAINT FK_WINE_TO_WISHLIST
    FOREIGN KEY (WINE_UID)
    REFERENCES WINE (WINE_UID);
