qna 테이블


CREATE TABLE qna(
   qna_no NUMBER,
   board_no NUMBER NOT NULL,
   member_id VARCHAR2(15) NOT NULL,
   qna_title VARCHAR2(100) NOT NULL,
   qna_content VARCHAR2(300) NOT NULL,
   qna_regdate DATE DEFAULT SYSDATE,
   qna_updatedate DATE DEFAULT SYSDATE,
   qna_answer VARCHAR2(150),
   CONSTRAINT pk_board_qna_no PRIMARY KEY(qna_no),
   CONSTRAINT fk_board_qna_board_no FOREIGN KEY(board_no) REFERENCES board(board_no) ON DELETE CASCADE,
   CONSTRAINT fk_board_qna_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)
DROP TABLE qna
CREATE SEQUENCE seq_board_qna_no

ALTER TABLE qna ADD qna_answer VARCHAR2(150)

SELECT * FROM qna


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

리뷰테이블
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
	qna_replndent NUMBER,
	CONSTRAINT pk_board_qna_no PRIMARY KEY(qna_no),
	CONSTRAINT fk_board_qna_board_no FOREIGN KEY(board_no) REFERENCES board(board_no) ON DELETE CASCADE,
	CONSTRAINT fk_board_qna_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

CREATE SEQUENCE seq_board_qna_no

아이템 테이블
CREATE TABLE item(
	item_no NUMBER,
	item_name VARCHAR2(60) NOT NULL,
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

INSERT INTO item (item_no,item_name,item_category,item_size, item_color, item_price,discount_percentage,item_amount)VALUES (seq_item_no.NEXTVAL, 'watch_casio_no1','watches','big','silver',150000,15,5)
INSERT INTO item (item_no,item_name,item_category,item_size, item_color, item_price,discount_percentage,item_amount)VALUES (seq_item_no.NEXTVAL, 'watch_casio_no2','watches','big','silver',150000,15,5)
INSERT INTO item (item_no,item_name,item_category,item_size, item_color, item_price,discount_percentage,item_amount)VALUES (seq_item_no.NEXTVAL, 'watch_casio_no3','watches','big','silver',150000,15,5)
INSERT INTO item (item_no,item_name,item_category,item_size, item_color, item_price,discount_percentage,item_amount)VALUES (seq_item_no.NEXTVAL, 'watch_casio_no4','watches','big','silver',150000,15,5)
INSERT INTO item (item_no,item_name,item_category,item_size, item_color, item_price,discount_percentage,item_amount)VALUES (seq_item_no.NEXTVAL, 'watch_casio_no5','watches','big','silver',150000,15,5)


CREATE SEQUENCE seq_item_no

파일 테이블
CREATE TABLE item_file(
	file_no NUMBER,
	file_name VARCHAR2(120) NOT NULL,
	item_no NUMBER NOT NULL,
	file_regdate DATE DEFAULT SYSDATE,
	CONSTRAINT pk_file_no PRIMARY KEY(file_no),
	CONSTRAINT fk_file_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_file_no

카테고리 테이블
CREATE TABLE category(
	item_name VARCHAR2(60),
	item_category VARCHAR2(60) NOT NULL,
	CONSTRAINT pk_category_item_name PRIMARY KEY(item_name)
)

INSERT INTO category (item_name, item_category) VALUES ('watch_casio_no1','watches')
INSERT INTO category (item_name, item_category) VALUES ('watch_casio_no2','watches')
INSERT INTO category (item_name, item_category) VALUES ('watch_casio_no3','watches')
INSERT INTO category (item_name, item_category) VALUES ('watch_casio_no4','watches')
INSERT INTO category (item_name, item_category) VALUES ('watch_casio_no5','watches')
INSERT INTO category (item_name, item_category) VALUES ('watch_casio_no6','watches')
INSERT INTO category (item_name, item_category) VALUES ('watch_casio_no7','watches')
INSERT INTO category (item_name, item_category) VALUES ('watch_casio_no8','watches')
INSERT INTO category (item_name, item_category) VALUES ('watch_casio_no9','watches')

매니저 테이블
CREATE TABLE manager(
	manager_id VARCHAR2(15),
	manager_pw VARCHAR2(15) NOT NULL,
	manager_name VARCHAR2(25) NOT NULL,
	manager_email VARCHAR2(30) NOT NULL,
	manager_phone NUMBER NOT NULL,
	manager_code NUMBER NOT NULL,
	CONSTRAINT pk_manager_id PRIMARY KEY(manager_id)
)

회원 테이블
CREATE TABLE member(
	member_id VARCHAR2(15),
	member_pw VARCHAR2(15) NOT NULL,
	member_name VARCHAR2(25) NOT NULL,
	member_birthday DATE NOT NULL,
	member_email VARCHAR2(30) NOT NULL,
	member_address VARCHAR2(120) NOT NULL,
	member_detail_address VARCHAR2(50) NOT NULL,
	member_phone_number NUMBER NOT NULL,
	member_regdate DATE DEFAULT SYSDATE,
	member_updatedate DATE DEFAULT SYSDATE,
	CONSTRAINT pk_member_id PRIMARY KEY(member_id)
)


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

CREATE SEQUENCE seq_cs_board_no

주문 테이블
CREATE TABLE package(
   order_no NUMBER,
   member_id VARCHAR2(15) NOT NULL,
   item_no NUMBER,
   cart_no NUMBER,
   order_quantity NUMBER NOT NULL,
   order_price NUMBER NOT NULL,
   order_date DATE DEFAULT SYSDATE,
   order_email VARCHAR2(30) NOT NULL,
   order_name VARCHAR2(25) NOT NULL,
   order_phone_number NUMBER NOT NULL,
   order_address VARCHAR2(120) NOT NULL,
   order_detail_address VARCHAR2(50) NOT NULL,
   CONSTRAINT pk_package_order_no PRIMARY KEY(order_no),
   CONSTRAINT fk_package_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
   CONSTRAINT fk_package_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE,
   CONSTRAINT fk_package_cart_no FOREIGN KEY(cart_no) REFERENCES cart(cart_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_order_no

장바구니 테이블
CREATE TABLE cart(
	cart_no NUMBER,
	member_id VARCHAR2(15),
	item_no NUMBER NOT NULL,
	cart_quantity NUMBER NOT NULL,
	cart_price NUMBER NOT NULL,
	cart_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_cart_cart_no PRIMARY KEY(cart_no),
	CONSTRAINT fk_cart_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
	CONSTRAINT fk_cart_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_cart_no

교환/환불 테이블
CREATE TABLE exchange_refund (
	exchange_refund_no NUMBER,
	member_id VARCHAR2(15) NOT NULL,
	order_no NUMBER NOT NULL,
	exchange_refund_date DATE DEFAULT SYSDATE,
	exchange_refund_code NUMBER NOT NULL,
	CONSTRAINT pk_exchange_refund_no PRIMARY KEY(exchange_refund_no),
	CONSTRAINT fk_exchange_refund_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
	CONSTRAINT fk_exchange_refund_order_no FOREIGN KEY(order_no) REFERENCES order(order_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_exchange_refund_no

찜 테이블
CREATE TABLE like(
	like_no NUMBER,
	item_no NUMBER NOT NULL,
	member_id VARCHAR2(15) NOT NULL,
	like_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_like_no PRIMARY KEY(like_no),
	CONSTRAINT fk_like_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE,
	CONSTRAINT fk_like_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

CREATE SEQUENCE seq_like_no 

주문배송조회 테이블
CREATE TABLE order_detail (
	order_detail_no NUMBER,
	member_id VARCHAR2(15) NOT NULL,
	order_no NUMBER NOT NULL,
	order_detail_price NUMBER NOT NULL,
	order_detail_code NUMBER DEFAULT 0, 
	CONSTRAINT pk_order_detail_no PRIMARY KEY(order_detail_no),
	CONSTRAINT fk_order_detail_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
	CONSTRAINT fk_order_detail_order_no FOREIGN KEY(order_no) REFERENCES order(order_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_order_detail_no

검색 테이블
CREATE TABLE search(
	search_no NUMBER,
	member_id VARCHAR2(15),
	item_category VARCHAR2(30) NOT NULL,
	keyword VARCHAR2(60) NOT NULL,
	search_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_search_no PRIMARY KEY(search_no),
	CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)
SELECT * FROM search
ALTER TABLE search DROP CONSTRAINT SYS_C007549 CASCADE
SELECT * FROM ALL_CONSTRAINTS WHERE TABLE_NAME = 'SEARCH'

insert into search (search_no, member_id, item_category, keyword) VALUES (seq_search_no.NEXTVAL,null,'watches','랭킹3위')
SELECT COUNT(*), keyword FROM search GROUP BY keyword 
SELECT DENSE_RANK() OVER(ORDER BY COUNT(*)) 검색랭킹, keyword FROM search GROUP BY keyword
SELECT * FROM item WHERE item_category = 'kimchi' AND UPPER(item_name) LIKE '%' || UPPER('kimchi') || '%'
SELECT * FROM item WHERE item_category = #{item_category} AND UPPER(item_name) LIKE '%' || UPPER(#{item_name}) || '%'
CREATE SEQUENCE seq_search_no