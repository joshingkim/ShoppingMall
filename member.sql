회원 테이블
CREATE TABLE member(
   member_id VARCHAR2(15),
   member_pw VARCHAR2(15) NOT NULL,
   member_name VARCHAR2(25) NOT NULL,
   member_birthday DATE NOT NULL,
   member_email VARCHAR2(30) NOT NULL,
   member_address VARCHAR2(120) NOT NULL,
   member_detail_address VARCHAR2(50) NOT NULL,
   member_phone_number VARCHAR2(14) NOT NULL,
   member_regdate DATE DEFAULT SYSDATE,
   member_updatedate DATE DEFAULT SYSDATE,
   CONSTRAINT pk_member_id PRIMARY KEY(member_id)
)

ALTER TABLE member MODIFY member_phone_number VARCHAR2(14);

SELECT * FROM member
SELECT * FROM member WHERE member_id = 'm002'
SELECT member_id FROM member WHERE member_id = 'm002'

고객센터 테이블
CREATE TABLE cs_board(
   cs_board_no NUMBER,
   cs_category VARCHAR2(30) NOT NULL,
   cs_title VARCHAR2(150) NOT NULL,
   cs_content VARCHAR2(1200) NOT NULL,
   cs_regdate DATE DEFAULT SYSDATE,
   cs_updatedate DATE DEFAULT SYSDATE,
   CONSTRAINT pk_cs_board_no PRIMARY KEY(cs_board_no)
)

SELECT * FROM cs_board

INSERT INTO member (member_id, member_pw, member_name, member_birthday, member_email, member_address, member_detail_address, member_phone_number) 
  	VALUES 
  	('m001', '1111', '홍길동', '1994-09-09', '1@naver.com', '서울', '서울', 010-8888-8888)


CREATE SEQUENCE seq_error_no
