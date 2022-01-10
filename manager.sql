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
	item_no NUMBER NOT NULL,
	order_quantity NUMBER NOT NULL,
	order_price NUMBER NOT NULL,
	order_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_order_no PRIMARY KEY(order_no),
		CONSTRAINT fk_order_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
	CONSTRAINT fk_order_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE
)
select * from package

INSERT INTO package (order_no, member_id, item_no, order_quantity, order_price) values
(25, 'lmao', 5, 35, 4500)



SELECT item_no from package group by item_no ORDER BY (count(item_no)) DESC

SELECT sum(order_price), TO_CHAR(order_date, 'DD')  
FROM package group by TO_CHAR(order_date, 'DD')

SELECT (sum(order_quantity)), TO_CHAR(order_date, 'MM') 
from package group by (item_no)
ORDER BY TO_CHAR(order_date, 'MM')  ASC

SELECT sum(order_quantity), TO_CHAR(order_date, 'YYYY-MM-DD')
FROM package group by item_no


SELECT sum(order_price), TO_CHAR(order_date, 'YYYY-MM-DD')  
FROM package group by TO_CHAR(order_date, 'YYYY-MM-DD')
ORDER BY TO_CHAR(order_date, 'YYYY-MM-DD')  ASC

SELECT sum(order_price),
	TO_CHAR(order_date, 'YYYY-MM-DD') 
FROM package group by TO_CHAR(order_date, 'YYYY-MM-DD')
ORDER BY TO_CHAR(order_date, 'YYYY-MM-DD')  ASC

SELECT sum(order_quantity), item_no FROM package GROUP BY item_no
ORDER BY sum(order_quantity) DESC

SELECT sum(order_quantity) as ORDERQUNTITY, item_no, TO_CHAR(order_date, 'MM') as ORDERDATE 
FROM package GROUP BY item_no, TO_CHAR(order_date, 'MM')  ORDER BY sum(order_quantity) DESC



