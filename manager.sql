fnq테이블
CREATE TABLE fnq(
   fnq_no NUMBER,
   manager_id VARCHAR2(15) NOT NULL,
   fnq_title VARCHAR2(300) NOT NULL,
   fnq_content VARCHAR2(1200) NOT NULL,
   fnq_regdate DATE DEFAULT SYSDATE,
   fnq_updatedate DATE DEFAULT SYSDATE,
   fnq_viewcnt NUMBER DEFAULT 0,
   CONSTRAINT pk_fnq_no PRIMARY KEY(fnq_no),
   CONSTRAINT fk_fnq_manager_id FOREIGN KEY(manager_id) REFERENCES manager(manager_id) ON DELETE CASCADE
)

INSERT INTO fnq VALUES (8, 'm003', '질문7', '답변7', sysdate, sysdate, 0 )


매니저 테이블
CREATE TABLE manager(
   manager_id VARCHAR2(15),
   manager_pw VARCHAR2(15) NOT NULL,
   manager_name VARCHAR2(25) NOT NULL,
   manager_email VARCHAR2(30) NOT NULL,
   manager_phone NUMBER NOT NULL,
   manager_code INT NOT NULL,
   CONSTRAINT pk_manager_id PRIMARY KEY(manager_id)
)

INSERT INTO manager VALUES ('a001', 1111, '관리자', 'a001@naver.com', 12341234, 1)


아이템 테이블
CREATE TABLE item(
   item_no NUMBER,
   item_name VARCHAR2(120) NOT NULL,
   item_category VARCHAR2(60) NOT NULL,
   item_size VARCHAR2(21) NOT NULL,
   item_color VARCHAR2(30) NOT NULL,
   item_price NUMBER NOT NULL,
   discount_percentage NUMBER NOT NULL,
   item_amount NUMBER NOT NULL,
   item_regdate DATE DEFAULT SYSDATE,
   CONSTRAINT pk_item_no PRIMARY KEY(item_no),
   CONSTRAINT fk_item_name FOREIGN KEY(item_name) REFERENCES category(item_name) ON DELETE CASCADE
)

INSERT INTO item VALUES (6, '금반지', '반지', '사이즈', '색깔', 550000, 10, 10, sysdate)

CREATE SEQUENCE seq_item_no

파일 테이블
CREATE TABLE item_file(
   file_no NUMBER,
   file_name VARCHAR2(200) NOT NULL,
   item_no NUMBER NOT NULL,
   file_regdate DATE DEFAULT SYSDATE,
   CONSTRAINT pk_file_no PRIMARY KEY(file_no),
   CONSTRAINT fk_file_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE
)

INSERT INTO item_file VALUES (1, '파일이름', 1, sysdate)

CREATE SEQUENCE seq_file_no

카테고리 테이블
CREATE TABLE category(
   item_name VARCHAR2(120),
   item_category VARCHAR2(60) NOT NULL,
   CONSTRAINT pk_category_item_name PRIMARY KEY(item_name)
)

INSERT INTO category VALUES ('향수는조말론', '향수')

검색 테이블
CREATE TABLE search(
   search_no NUMBER,
   member_id VARCHAR2(15),
   item_category VARCHAR2(60) NOT NULL,
   keyword VARCHAR2(60) NOT NULL,
   search_date DATE DEFAULT SYSDATE,
   CONSTRAINT pk_search_no PRIMARY KEY(search_no),
   CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

INSERT INTO search VALUES (9, 'm001', '목걸이', '다이아목걸이', sysdate)


CREATE SEQUENCE seq_search_no

교환/환불 테이블
CREATE TABLE exchange_refund (
   exchange_refund_no NUMBER,
   member_id VARCHAR2(15) NOT NULL,
   order_id NUMBER NOT NULL,
   exchange_refund_date DATE DEFAULT SYSDATE,
   exchange_refund_code NUMBER NOT NULL,
   CONSTRAINT pk_exchange_refund_no PRIMARY KEY(exchange_refund_no),
   CONSTRAINT fk_exchange_refund_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
   CONSTRAINT fk_exchange_refund_order_id FOREIGN KEY(order_id) REFERENCES orders(order_id) ON DELETE CASCADE
)

INSERT INTO exchange_refund VALUES (1, 'm001', 1, sysdate, 1)

CREATE SEQUENCE seq_exchange_refund_no

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

INSERT INTO member VALUES ('m007', 1111, '멤버이름', '2000-01-01', 'm001@naver.com', '주소', '세부주소', '01012345678', sysdate, sysdate)

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
   qna_answer VARCHAR2(150),
   CONSTRAINT pk_board_qna_no PRIMARY KEY(qna_no),
   CONSTRAINT fk_board_qna_board_no FOREIGN KEY(board_no) REFERENCES board(board_no) ON DELETE CASCADE,
   CONSTRAINT fk_board_qna_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

CREATE SEQUENCE seq_board_qna_no

INSERT INTO qna (qna_no, board_no, member_id, qna_title, qna_content, qna_regdate, qna_updatedate) VALUES (1, 1, 'm001', 'qna제목', 'qna내용', sysdate, sysdate )

주문테이블
create table orders(
   order_id NUMBER NOT NULL,
   item_no NUMBER,
   member_id VARCHAR2(15) NOT NULL,
   ea NUMBER,
   price NUMBER,
   address VARCHAR2(120) NOT NULL,
   dAddress VARCHAR2(50) NOT NULL,
   order_date DATE DEFAULT SYSDATE,
   phone VARCHAR2(15) NOT NULL,
   status VARCHAR2(30) default '상품 준비 중',
   receiver VARCHAR2(15) NOT NULL,
   CONSTRAINT pk_orderr_order_id PRIMARY KEY(order_id),
   CONSTRAINT fk_orderr_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE,
   CONSTRAINT fk_orderr_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)
 
INSERT INTO orders VALUES (9, 2, 'm001', 5, 450000, '주소', '디테일주소', sysdate, '01012345678', '상품 준비 중', '받는사람')


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

INSERT INTO board VALUES (1, 1, '제목', '내용', sysdate, sysdate, 0)

장바구니 테이블
CREATE TABLE cart(
cart_no NUMBER,
member_id VARCHAR2(15),
item_no NUMBER NOT NULL,
cart_quantity NUMBER NOT NULL,
cart_price NUMBER NOT NULL,
cart_date DATE DEFAULT SYSDATE,
CONSTRAINT pk_cart_no PRIMARY KEY(cart_no),
CONSTRAINT fk_cart_member_id FOREIGN KEY(member_id)  REFERENCES member(member_id) ON DELETE CASCADE,
CONSTRAINT fk_cart_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE 
)

INSERT INTO cart VALUES (1, 'm001', 1, 1, 550000, sysdate)

CREATE SEQUENCE seq_cart_no

찜 테이블
CREATE TABLE like_item(
   like_no NUMBER,
   item_no NUMBER NOT NULL,
   member_id VARCHAR2(15) NOT NULL,
   like_date DATE DEFAULT SYSDATE,
   CONSTRAINT pk_like_no PRIMARY KEY(like_no),
   CONSTRAINT fk_like_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE,
   CONSTRAINT fk_like_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

INSERT INTO like_item VALUES (12, 6, 'm001', sysdate)

CREATE SEQUENCE seq_like_no




	
		
		
		
		
		