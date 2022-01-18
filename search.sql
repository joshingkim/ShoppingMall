검색 테이블
CREATE TABLE search(
	search_no NUMBER,
	member_id VARCHAR2(15),
	item_category VARCHAR2(30) NOT NULL,
	keyword VARCHAR2(60) NOT NULL,
	search_date DATE DEFAULT SYSDATE,
	CONSTRAINT pk_search_no PRIMARY KEY(search_no),
	CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)
SELECT * FROM search
ALTER TABLE search DROP CONSTRAINT SYS_C007549 CASCADE
SELECT * FROM ALL_CONSTRAINTS WHERE TABLE_NAME = 'SEARCH'

insert into search (search_no, member_id, item_category, keyword) VALUES (seq_search_no.NEXTVAL,null,'watches','랭킹32위')
SELECT COUNT(*), keyword FROM search GROUP BY keyword 
SELECT DENSE_RANK() OVER(ORDER BY COUNT(*)) 검색랭킹, keyword FROM search GROUP BY keyword
SELECT * FROM item WHERE item_category = 'kimchi' AND UPPER(item_name) LIKE '%' || UPPER('kimchi') || '%'
SELECT * FROM item WHERE item_category = #{item_category} AND UPPER(item_name) LIKE '%' || UPPER(#{item_name}) || '%'
CREATE SEQUENCE seq_search_no

SELECT
    OBJECT_NAME
    ,OBJECT_TYPE
FROM
    USER_OBJECTS
WHERE OBJECT_NAME LIKE '%search%';

CREATE TABLE search(
   search_no NUMBER,
   member_id VARCHAR2(15),
   item_category VARCHAR2(30) NOT NULL,
   keyword VARCHAR2(60) NOT NULL,
   search_date DATE DEFAULT SYSDATE,
   CONSTRAINT pk_search_no PRIMARY KEY(search_no),
   CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES member(member_id) ON DELETE CASCADE
)