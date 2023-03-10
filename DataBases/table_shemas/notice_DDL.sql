
CREATE TABLE NOTICE
(
  NOTICE_UID     VARCHAR(100) NOT NULL COMMENT '공지게시판UID',
  NOTICE_DATE    VARCHAR(100) NOT NULL COMMENT '공지작성일',
  NOTICE_WRITER  VARCHAR(100) NOT NULL COMMENT '공지작성자',
  NOTICE_TITLE   VARCHAR(100) NOT NULL COMMENT '공지제목',
  NOTICE_CONTENT VARCHAR(100) NOT NULL COMMENT '공지내용',
  NOTICE_FILE    VARCHAR(100) NULL     COMMENT '공지첨부파일',
  PRIMARY KEY (NOTICE_UID)
) COMMENT '공지사항';
