package kr.co.domain;

import java.io.Serializable;
import java.util.Objects;

public class SearchVO implements Serializable {

	private static final long serialVersionUID = 1L;
	private int search_no;
	private String member_id;
	private String item_category;
	private String keyword;
	private String search_date;

	public SearchVO() {
	}

	public SearchVO(int search_no, String member_id, String item_category, String keyword, String search_date) {
		super();
		this.search_no = search_no;
		this.member_id = member_id;
		this.item_category = item_category;
		this.keyword = keyword;
		this.search_date = search_date;
	}

	int getSearch_no() {
		return search_no;
	}

	void setSearch_no(int search_no) {
		this.search_no = search_no;
	}

	String getMember_id() {
		return member_id;
	}

	void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	String getItem_category() {
		return item_category;
	}

	void setItem_category(String item_category) {
		this.item_category = item_category;
	}

	String getKeyword() {
		return keyword;
	}

	void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	String getSearch_date() {
		return search_date;
	}

	void setSearch_date(String search_date) {
		this.search_date = search_date;
	}

	static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(item_category, keyword, member_id, search_date, search_no);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SearchVO other = (SearchVO) obj;
		return Objects.equals(item_category, other.item_category) && Objects.equals(keyword, other.keyword)
				&& Objects.equals(member_id, other.member_id) && Objects.equals(search_date, other.search_date)
				&& search_no == other.search_no;
	}

	@Override
	public String toString() {
		return "SearchVO [search_no=" + search_no + ", member_id=" + member_id + ", item_category=" + item_category
				+ ", keyword=" + keyword + ", search_date=" + search_date + "]";
	}

}
