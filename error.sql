CREATE TABLE error(
	error_no NUMBER PRIMARY KEY,
	regdate DATE DEFAULT SYSDATE,
	filename VARCHAR2(100),
	methodname VARCHAR2(100),
	linenum NUMBER,
	uri VARCHAR2(200),
	review VARCHAR2(300) DEFAULT '미해결'
)

CREATE SEQUENCE seq_error_no

select * from error