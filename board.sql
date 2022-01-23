보드테이블
CREATE TABLE board(
	board_no NUMBER,
	item_no NUMBER NOT NULL,
	board_title VARCHAR2(300) NOT NULL,
	board_content VARCHAR2(1200) NOT NULL,
	board_regdate DATE DEFAULT SYSDATE,
	board_updatedate DATE DEFAULT SYSDATE,
	board_viewcnt NUMBER DEFAULT 0,
	CONSTRAINT pk_item_board_no PRIMARY KEY(board_no),
	CONSTRAINT fk_item_board_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_board_no

CREATE TABLE review(
	review_no NUMBER,
	board_no NUMBER NOT NULL,
	member_id VARCHAR2(15) NOT NULL,
	review_content VARCHAR2(100) NOT NULL,
	review_regdate DATE DEFAULT SYSDATE,
	review_updatedate DATE DEFAULT SYSDATE,
	review_grade NUMBER DEFAULT 5,
	CONSTRAINT pk_board_review_no PRIMARY KEY(review_no),
	CONSTRAINT fk_board_review_board_no FOREIGN KEY(board_no) REFERENCES board(board_no) ON DELETE CASCADE,
	CONSTRAINT fk_board_review_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)


CREATE SEQUENCE seq_board_review_no

qna 테이블
CREATE TABLE qna(
	qna_no NUMBER,
	board_no NUMBER NOT NULL,
	member_id VARCHAR2(15) NOT NULL,
	qna_title VARCHAR2(100) NOT NULL,
	qna_content VARCHAR2(300) NOT NULL,
	qna_regdate DATE DEFAULT SYSDATE,
	qna_updatedate DATE DEFAULT SYSDATE,
	qna_repRoot NUMBER,
	qna_repStep NUMBER,
	qna_repIndent NUMBER,
	qna_answer VARCHAR2(150),
	CONSTRAINT pk_board_qna_no PRIMARY KEY(qna_no),
	CONSTRAINT fk_board_qna_board_no FOREIGN KEY(board_no) REFERENCES board(board_no) ON DELETE CASCADE,
	CONSTRAINT fk_board_qna_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

CREATE SEQUENCE seq_board_qna_no


select * from BOARD

select * from qna

DROP TABLE qna


SELECT * FROM board WHERE board_no = 1
UPDATE board SET board_viewcnt = board_viewcnt+1 WHERE board_no = 5

INSERT INTO board (board_no,item_no,board_title, board_content) VALUES(1,1,'a','a')


SELECT * FROM board WHERE board_no = 103

select * from member

select * from review

INSERT INTO review (review_no, board_no, member_id, review_content,review_grade) 
		VALUES
		(seq_board_review_no.NEXTVAL, '105', 'm001', '123','2')
		
		

		

CREATE TABLE member(
	member_id VARCHAR2(15),
	CONSTRAINT pk_member_id PRIMARY KEY(member_id)
)

		
	INSERT INTO member (member_id) VALUES ('m001')
	
	
			SELECT COUNT(review_no) FROM review WHERE board_no = 4

			
			SELECT * FROM review WHERE board_no = 113 ORDER BY review_no DESC
			
																									
			
INSERT INTO qna (qna_no, board_no, member_id, qna_title, qna_content, qna_repRoot, qna_repStep, qna_repIndent)
		VALUES(seq_board_qna_no.NEXTVAL, '109', 'm001', '1234', '12345', seq_board_qna_no.CURRVAL, '0', '0')
			
			
ALTER TABLE qna ADD qna_answer VARCHAR2(150)
			
			
	SELECT * FROM review		
			
			
SELECT * FROM qna WHERE board_no = 109	

	SELECT
		COUNT(review_no) FROM review WHERE member_id = 'm001'

		SELECT * FROM review
		WHERE member_id = 'm001' ORDER BY review_no DESC

		
		UPDATE review SET review_content = '123455',
		review_regdate = SYSDATE ,review_grade = '5'
		WHERE
		member_id = 'm001'
		
		SELECT * FROM review
		
		UPDATE review SET review_content = '5464',
		review_regdate = SYSDATE ,review_grade = '5'
		WHERE
		review_no = '161'
