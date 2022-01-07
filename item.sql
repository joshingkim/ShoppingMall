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
INSERT INTO item (item_no, item_name, item_category, item_size, item_color, item_price, discount_percentage, item_amount) VALUES(1,'kimchi','kimchi','small','red',15000, 15, 15)
CREATE SEQUENCE seq_item_no

select * from item

CREATE TABLE item_file(
	file_no NUMBER,
	file_name VARCHAR2(60) NOT NULL,
	item_no NUMBER NOT NULL,
	file_regdate DATE DEFAULT SYSDATE,
	CONSTRAINT pk_file_no PRIMARY KEY(file_no),
	CONSTRAINT fk_file_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_file_no


CREATE TABLE category(
	item_name VARCHAR2(60),
	item_category VARCHAR2(60) NOT NULL,
	CONSTRAINT pk_category_item_name PRIMARY KEY(item_name)
)
INSERT INTO category (item_name, item_category) VALUES('kimchi','kimchi')
SELECT * FROM category

SELECT * FROM category WHERE item_name = '세이코 남성 오토 메탈 시계(SNKA05)'