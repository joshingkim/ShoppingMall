주문 테이블에 이메일, 수령인, 핸드폰번호, 주소, 상세주소 추가
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
------------------------------------------------------------------------------------------------------
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

===========================================================================================================

우선 foreign 키 제거하고 테이블 생성
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
	CONSTRAINT pk_order_no PRIMARY KEY(order_no)
)

CREATE SEQUENCE seq_order_no
select * from user_sequences
drop sequence seq_order_no

INSERT INTO package (order_no, member_id, item_no, order_quantity, order_price, order_email, order_name, order_phone_number, order_address, order_detail_address)
VALUES
(seq_order_no.NEXTVAL, 2, 3, 4, 5, 6, 7, 8, 9, 10)

select * from PACKAGE

SELECT sum(order_price), TO_CHAR(order_date, 'YYYYMMDD') FROM package group by TO_CHAR(order_date, 'YYYYMMDD')
------------------------------------------------------------------------------------------------------

주문배송조회 테이블 우선 foreign 키 제거하고 테이블 생성
CREATE TABLE order_detail (
	order_detail_no NUMBER,
	member_id VARCHAR2(15) NOT NULL,
	order_no NUMBER NOT NULL,
	order_detail_price NUMBER NOT NULL,
	order_detail_code NUMBER DEFAULT 0, 
	CONSTRAINT pk_order_detail_no PRIMARY KEY(order_detail_no),
	CONSTRAINT fk_order_detail_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
	CONSTRAINT fk_order_detail_order_no FOREIGN KEY(order_no) REFERENCES package(order_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_order_detail_no