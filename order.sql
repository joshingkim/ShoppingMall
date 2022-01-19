create table orders(
	order_id NUMBER NOT NULL,
	item_no NUMBER,
	member_id VARCHAR2(15) NOT NULL,
	ea NUMBER,
	price NUMBER,
	address VARCHAR2(120) NOT NULL,
	dAddress VARCHAR2(50) NOT NULL,
	phone VARCHAR2(15) NOT NULL,
	status VARCHAR2(30) default '상품 준비 중',
	receiver VARCHAR2(15) NOT NULL,
	CONSTRAINT pk_orders_order_id PRIMARY KEY(order_id),
	CONSTRAINT fk_orders_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE,
	CONSTRAINT fk_orders_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)
	CREATE SEQUENCE seq_order_id
	
select * from orders

select*from member
select*from cart
select*from item

update cart set member_id = 'm003' where cart_no = 4

