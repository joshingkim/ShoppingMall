주문 테이블
CREATE TABLE package(
	order_item_no NUMBER NOT NULL,
	order_no NUMBER NOT NULL,
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
	CONSTRAINT pk_package_order_item_no PRIMARY KEY(order_item_no),
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
	order_item_no NOT NULL,
	order_detail_price NUMBER NOT NULL,
	order_detail_code NUMBER DEFAULT 0, 
	order_regdate DATE DEFAULT SYSDATE,
	order_update_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_order_detail_no PRIMARY KEY(order_detail_no),
	CONSTRAINT fk_order_detail_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
	CONSTRAINT fk_order_item_no FOREIGN KEY (order_item_no) REFERENCES package (order_item_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_order_detail_no

===========================================================================================================

주문 테이블 우선 foreign 키 제거하고 테이블 생성
CREATE TABLE package(
	order_item_no NUMBER NOT NULL, 
	order_no NUMBER NOT NULL,
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
	CONSTRAINT pk_order_item_no PRIMARY KEY(order_item_no)
)
CREATE SEQUENCE seq_order_item_no

select * from PACKAGE

------------------------------------------------------------------------------------------------------

주문배송조회 테이블 우선 foreign 키 제거하고 테이블 생성
CREATE TABLE order_detail (
	order_detail_no NUMBER NOT NULL, 
	member_id VARCHAR2(15) NOT NULL,
	order_no NUMBER NOT NULL,
	order_item_no NUMBER NOT NULL,
	order_detail_price NUMBER NOT NULL,
	order_detail_code NUMBER DEFAULT 0,
	order_regdate DATE DEFAULT SYSDATE,
	order_update_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_order_detail_no PRIMARY KEY(order_detail_no),
	CONSTRAINT fk_order_item_no FOREIGN KEY (order_item_no) REFERENCES package (order_item_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_order_detail_no

SELECT * FROM ORDER_DETAIL