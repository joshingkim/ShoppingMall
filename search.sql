검색 테이블



CREATE TABE search(
   search_no NUMBER,
   member_id VARCHAR2(15) NOT NULL,
   item_category VARHCHAR2(30) NOT NULL,
   keyword VARCHAR2(60) NOT NULL,
   search_date DEFAULT SYSDATE,
   CONSTRAINT pk_search_no PRIMARY KEY(search_no),
   CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)

CREATE SEQUENCE seq_search_no