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

CREATE SEQUENCE seq_cart_no
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
UPDATE item SET item_amount=item_amount-1 WHERE item_no = 85
CREATE TABLE manager(
   manager_id VARCHAR2(15),
   manager_pw VARCHAR2(15) NOT NULL,
   manager_name VARCHAR2(25) NOT NULL,
   manager_email VARCHAR2(30) NOT NULL,
   manager_phone NUMBER NOT NULL,
   manager_code INT NOT NULL,
   CONSTRAINT pk_manager_id PRIMARY KEY(manager_id)
)
insert into manager (manager_id,manager_pw,manager_name,manager_email,manager_phone,manager_code) values ()
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
SELECT item.item_no as item_no, 
      TO_CHAR(add_months(sysdate, -1)) as ORDERDATE,
      item.item_name as item_name
      FROM orders 
      FULL OUTER JOIN item ON orders.item_no = item.item_no
      GROUP BY item.item_no, 
      TO_CHAR(add_months(sysdate, -1)),
      item.item_name
      ORDER BY sum(orders.ea) desc NULLS LAST
SELECT sum(orders.ea) as ORDERQUNTITY, item.item_no, 
		TO_CHAR(add_months(sysdate, -1)) as ORDERDATE,
		item.item_name as ITEM_NAME
		FROM orders 
		FULL OUTER JOIN item ON orders.item_no = item.item_no
		GROUP BY item.item_no, 
		TO_CHAR(add_months(sysdate, -1)),
		item.item_name
		ORDER BY sum(orders.ea) desc NULLS LAST
select item_no, count from (select item_no, sum(ea) count from orders where order_date >= to_date(add_months(sysdate, -1)) group by item_no) order by count desc
select item_size from item where item_name = '세이코 솔라 다이버 시계(SSC675J1)' group by item_size ORDER BY LPAD(item_size, 21, '0') 
select * from user_tab_columns 
CREATE SEQUENCE seq_order_id
INSERT INTO item (item_no, item_name, item_category, item_size, item_color, item_price, discount_percentage, item_amount) VALUES(1,'kimchi','kimchi','small','red',15000, 15, 15)
CREATE SEQUENCE seq_item_no
ALTER TABLE item MODIFY item_name VARCHAR2(120)
ALTER TABLE category MODIFY item_name VARCHAR2(120)
SELECT item_no FROM item where item_name = '판도라 주얼리 노티드 하트 반지(198018)' AND item_size = '8호' AND item_color = 'SILVER'
drop table qna
drop table item
select * from cart
select * from board
select * from item
select * from review
select * from member
select * from search
SELECT * FROM like_item
insert into like_item (like_no ,item_no, member_id) values (1,72,'m001')
SELECT COUNT(*) FROM like_item WHERE item_no = '72' AND member_id = 'm001'
CREATE TABLE search(
   search_no NUMBER,
   member_id VARCHAR2(15),
   item_category VARCHAR2(60) NOT NULL,
   keyword VARCHAR2(60) NOT NULL,
   search_date DATE DEFAULT SYSDATE,
   CONSTRAINT pk_search_no PRIMARY KEY(search_no),
   CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)
SELECT COUNT(*) FROM like_item WHERE item_no = 72 AND member_id = 'm001'
CREATE SEQUENCE seq_search_no

select item_no from item_file 
select item_no from item where item_name in (select distinct item_name from (select item_name,item_no from item group by item_name,item_no))
select distinct item_name from (select item_name,max(item_no) as item_no from item group by item_name)
select item_size from item where item_name = '판도라 주얼리 노티드 하트 반지(198018)' ORDER BY item_size ASC
select item_name,max(item_no) as item_no from item group by item_name
select max(item_no) as item_no from item where item_name = '카시오 메탈밴드 손목시계(A158WA-1)' group by item_name 
select max(item_no) as item_no from item where item_name = '판도라 주얼리 노티드 하트 반지(198018)' //해당 아이템 넘버를 가진 것 중에 가장 큰 아이템 넘버를 추출
select file_no from item_file where item_no = (select max(item_no) as item_no from item where item_name = '판도라 주얼리 노티드 하트 반지(198018)') //해당 아이템 넘버를 가진 것 중에 가장 큰 아이템 넘버의 파일 넘버
select max(item_no) as item_no, item_name from item group by item_name // 아이템 네임을 기준으로 가장 높은 아이템 넘버와 아이템 네임을 조회 

select file_no from item_file where item_no in (select max(item_no) as item_no from item group by item_name)//아이템 네임을 기준으로 파일 정렬
select * from item where item_no in (select max(item_no) as item_no from item group by item_name) //아이템 네임을 기준으로 아이템 정렬
select * from (select * from item where item_no in (select max(item_no) as item_no from item group by item_name)) where item_category = '시계'//특정 아이템 카테고리에서 아이템 네임으로 아이템 정렬
select item_size from item where item_name = '판도라 주얼리 노티드 하트 반지(198018)'
select upper(item_color) from item where item_name = '판도라 주얼리 노티드 하트 반지(198018)' group by upper(item_color)
select * from item where item_no in (select max(item_no) as item_no from item group by item_name) ORDER BY item_no DESC
카시오 메탈밴드 손목시계(A158WA-1)
판도라 주얼리 노티드 하트 반지(198018)
SELECT COUNT(item_no) FROM (select * from item where item_no in (select max(item_no) as item_no from item group by item_name)) where item_category = '시계'
select * from (select * from item where item_no in (select max(item_no) as item_no from item group by item_name)) where item_category = '시계'
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
	item_name VARCHAR2(120),
	item_category VARCHAR2(60) NOT NULL,
	CONSTRAINT pk_category_item_name PRIMARY KEY(item_name)
)
INSERT INTO category (item_name, item_category) VALUES('제이에스티나 제이블랑(JJPJNQ9AF509SR420)','목걸이')
SELECT * FROM category

SELECT * FROM category WHERE item_name = '세이코 남성 오토 메탈 시계(SNKA05)'
UPDATE category SET item_name = '[MARK-4]PLAIN', item_category = '반지' WHERE item_name = '[MARK-4] PLAIN'
SELECT item_category FROM category group by item_category
 [MARK-4] PLAIN                 반지

CREATE TABLE search(
search_no NUMBER, 
member_id VARCHAR2(15), 
item_category VARCHAR2(30) NOT NULL, 
keyword VARCHAR2(60) NOT NULL, 
search_date DATE DEFAULT SYSDATE, 
CONSTRAINT pk_search_no PRIMARY KEY(search_no), 
CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)
select OBJECT_NAME, OBJECT_TYPE from user_objects
select * from search
drop table search
CREATE SEQUENCE seq_search_no