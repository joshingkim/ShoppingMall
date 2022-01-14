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

drop table qna
select * from item
select * from review

delete from item where item_no = 34
CREATE TABLE item_file(
	file_no NUMBER,
	file_name VARCHAR2(200) NOT NULL,
	item_no NUMBER NOT NULL,
	file_regdate DATE DEFAULT SYSDATE,
	CONSTRAINT pk_file_no PRIMARY KEY(file_no),
	CONSTRAINT fk_file_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_file_no

select file_name FROM item_file WHERE item_no = 27 ORDER BY file_regdate
select * from item_file
ALTER TABLE item_file MODIFY file_name VARCHAR2(200)

CREATE TABLE category(
	item_name VARCHAR2(60),
	item_category VARCHAR2(60) NOT NULL,
	CONSTRAINT pk_category_item_name PRIMARY KEY(item_name)
)
INSERT INTO category (item_name, item_category) VALUES('제이에스티나 제이블랑(JJPJNQ9AF509SR420)','목걸이')
SELECT * FROM category

SELECT * FROM category WHERE item_name = '세이코 남성 오토 메탈 시계(SNKA05)'

SELECT item_category FROM category group by item_category

CREATE TABLE search(
search_no NUMBER, 
member_id VARCHAR2(15), 
item_category VARCHAR2(30) NOT NULL, 
keyword VARCHAR2(60) NOT NULL, 
search_date DATE DEFAULT SYSDATE, 
CONSTRAINT pk_search_no PRIMARY KEY(search_no), 
CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

select * from search
CREATE SEQUENCE seq_search_no