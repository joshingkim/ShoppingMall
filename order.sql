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
	order_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_orders_order_id PRIMARY KEY(order_id),
	CONSTRAINT fk_orders_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE,
	CONSTRAINT fk_orders_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)
	CREATE SEQUENCE seq_order_id
	
select * from orders where order_date = 2022-01-19
INSERT INTO orders(order_id,item_no,member_id,ea,price,address,dAddress,phone,status,receiver) VALUES (seq_order_id.NEXTVAL, 83, 'm001', 1, 150000, '서울시','서울','010101010','상품 준비중','홍길동')

alter table orders add order_date DATE DEFAULT SYSDATE

select*from cart
select*from item
select*from orders

update cart set member_id = 'm003' where cart_no = 4
delete from orders where item_no = 3


insert into CART (cart_no, member_id, item_no, cart_quantity, cart_price)
values
(seq_cart_no.NEXTVAL, 'm003', 22, 1, 1000)

update CART set item_no = 22 where member_id = 'm003'