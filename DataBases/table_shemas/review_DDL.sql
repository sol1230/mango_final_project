
CREATE TABLE REVIEW
(
  REVIEW_UID     VARCHAR(100) NOT NULL COMMENT '리뷰UID',
  REVIEW_TITLE   VARCHAR(100) NULL     COMMENT '리뷰제목',
  REVIEW_SCOPE   VARCHAR(100) NULL     COMMENT '리뷰별점',
  REVIEW_DATE    VARCHAR(100) NULL     COMMENT '리뷰작성일',
  REVIEW_CONTENT VARCHAR(100) NULL     COMMENT '리뷰내용'
) COMMENT '리뷰';
