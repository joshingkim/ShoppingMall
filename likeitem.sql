CREATE TABLE like_item(
	like_no NUMBER,
	item_no NUMBER NOT NULL,
	member_id VARCHAR2(15) NOT NULL,
	like_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_like_no PRIMARY KEY(like_no),
	CONSTRAINT fk_like_item_no FOREIGN KEY(item_no) REFERENCES item(item_no) ON DELETE CASCADE,
	CONSTRAINT fk_like_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

CREATE SEQUENCE seq_like_no 
