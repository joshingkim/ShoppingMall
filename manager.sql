CREATE TABLE manager(
	manager_id VARCHAR2(15),
	manager_pw VARCHAR2(15) NOT NULL,
	manager_name VARCHAR2(25) NOT NULL,
	manager_email VARCHAR2(30) NOT NULL,
	manager_phone NUMBER NOT NULL,
	manager_code NUMBER NOT NULL,
	CONSTRAINT pk_manager_id PRIMARY KEY(manager_id)
)


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

ALTER TABLE package ADD CONSTRAINT fk_order_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE

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

CREATE TABLE category(
	item_name VARCHAR2(60),
	item_category VARCHAR2(60) NOT NULL,
	CONSTRAINT pk_category_item_name PRIMARY KEY(item_name)
)

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

CREATE TABLE likeitem(
	like_no NUMBER primary key,
	item_no NUMBER,
	member_id VARCHAR2(15) NOT NULL,
	like_date DATE DEFAULT SYSDATE,
	CONSTRAINT fk_like_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE
)



INSERT INTO likeitem (like_no, item_no, member_id) VALUES (12, 6, 'moo1')

INSERT INTO item (item_no, item_name, item_category, item_size, item_color, item_price, discount_percentage, item_amount) 
VALUES(6,'옥수수김치','kimchi','small','red',15000, 15, 15)

INSERT INTO package (order_no, member_id, item_no, order_quantity, order_price) values
(25, 'lmao', 5, 35, 4500)




