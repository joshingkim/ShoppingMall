교환/환불 테이블



create table exchange_refund (
   exchange_refund_no NUMBER,
   member_id VARCHAR2(15) NOT NULL,
   order_id NUMBER NOT NULL,
   exchange_refund_date DATE DEFAULT SYSDATE,
   exchange_refund_content VARCHAR2(300) NOT NULL,
   exchange_refund_code NUMBER NOT NULL,
   CONSTRAINT pk_exchange_refund_no PRIMARY KEY(exchange_refund_no),
   CONSTRAINT fk_exchange_refund_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
   CONSTRAINT fk_exchange_refund_order_id FOREIGN KEY(order_id) REFERENCES orders(order_id) ON DELETE CASCADE
)

CREATE SEQUENCE seq_exchange_refund_no
ALTER TABLE exchange_refund modify order_no order_id

select * from exchange_refund
DROP table exchange_refund