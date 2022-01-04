교환/환불 테이블


CREATE TABLE exchange_refund (
   exchange_refund_no NUMBER,
   member_id VARCHAR2(15) NOT NULL,
   order_no NUMBER NOT NULL,
   exchange_refund_date DATE DEFAULT SYSDATE,
   exchange_refund_content VARCHAR2(300) NOT NULL,
   exchange_refund_code NUMBER NOT NULL,
   CONSTRAINT pk_exchange_refund_no PRIMARY KEY(exchange_refund_no),
   CONSTRAINT fk_exchange_refund_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE,
   CONSTRAINT fk_exchange_refund_order_no FOREIGN KEY(order_no) REFERENCES order(order_no) ON DELETE CASCADE
)

CREATE SEQUENCE seq_exchange_refund_no