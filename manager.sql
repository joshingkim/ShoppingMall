CREATE TABLE manager(
	manager_id VARCHAR2(15),
	manager_pw VARCHAR2(15) NOT NULL,
	manager_name VARCHAR2(25) NOT NULL,
	manager_email VARCHAR2(30) NOT NULL,
	manager_phone NUMBER NOT NULL,
	manager_code INT NOT NULL,
	CONSTRAINT pk_manager_id PRIMARY KEY(manager_id)
)
DROP TABLE manager
SELECT * FROM manager

CREATE TABLE package(
   order_no NUMBER,
   member_id VARCHAR2(15) NOT NULL,
   item_no NUMBER,
   cart_no NUMBER,
   order_quantity NUMBER NOT NULL,
   order_price NUMBER NOT NULL,
   order_date DATE DEFAULT SYSDATE,
   order_email VARCHAR2(30) ,
   order_name VARCHAR2(25) ,
   order_phone_number NUMBER ,
   order_address VARCHAR2(120) ,
   order_detail_address VARCHAR2(50) ,
   CONSTRAINT pk_package_order_no PRIMARY KEY(order_no)
)
CREATE TABLE category(
	item_name VARCHAR2(60),
	item_category VARCHAR2(60) NOT NULL,
	CONSTRAINT pk_category_item_name PRIMARY KEY(item_name)
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
	item_name VARCHAR2(60) PRIMARY KEY,
	item_category VARCHAR2(60) NOT NULL
)

DROP TABLE category

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

CREATE TABLE search(
	search_no NUMBER,
	member_id VARCHAR2(15) NOT NULL,
	item_category VARCHAR2(30) NOT NULL,
	keyword VARCHAR2(60) NOT NULL,
	search_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_search_no PRIMARY KEY(search_no),
	CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

INSERT INTO category VALUES ('해파리', '수산물')

INSERT INTO manager VALUES ('employee', 1111, '경영자', 'employee', 39309305, 2)

INSERT INTO search (search_no, member_id, item_category, keyword) 
values (23, 'm006', '고기', '고기')

INSERT INTO member (member_id, member_pw, member_name, member_birthday, member_email, member_address, member_detail_address, member_phone_number)
VALUES ('m010', '1111', '구매자', '1954-07-08', 'qwerty@naver.com', 'asd', 'asd', 12341234)


INSERT INTO likeitem (like_no, item_no, member_id) VALUES (12, 6, 'moo1')

INSERT INTO item (item_no, item_name, item_category, item_size, item_color, item_price, discount_percentage, item_amount) 
VALUES(15,'채소1','채소','small','red',15000, 15, 15)

INSERT INTO package (order_no, member_id, item_no, order_quantity, order_price) values
(26, 'm001', 15, 2, 6300)






SELECT * FROM ( 
SELECT ROW_NUMBER() OVER(PARTITION BY CATEGORY ORDER BY COUNTSELL DESC) AS RNUM, COUNTSELL, ITEMNAME, CATEGORY
FROM
(SELECT count(package.item_no) AS COUNTSELL,
item.item_category AS CATEGORY, item.item_name AS ITEMNAME
FROM package FULL OUTER JOIN item ON package.item_no = item.item_no
GROUP BY item.item_category, item.item_name
ORDER BY CATEGORY ASC, COUNTSELL DESC)
WHERE COUNTSELL != 0) A WHERE A.RNUM = 1

