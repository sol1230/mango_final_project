
CREATE TABLE COUPON
(
  COUPON_UID      VARCHAR(100) NOT NULL COMMENT '쿠폰UID',
  COUPON_FILE     VARCHAR(100) NULL     COMMENT '쿠폰첨부파일',
  COUPON_NAME     VARCHAR(100) NOT NULL COMMENT '쿠폰이름',
  COUPON_DATE     VARCHAR(100) NOT NULL COMMENT '쿠폰작성일',
  COUPON_DATATIME VARCHAR(100) NOT NULL COMMENT '쿠폰기한',
  PRIMARY KEY (COUPON_UID)
) COMMENT '쿠폰';
