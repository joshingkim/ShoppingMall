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