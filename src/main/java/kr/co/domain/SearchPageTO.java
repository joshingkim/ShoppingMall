package kr.co.domain;

import java.util.List;

public class SearchPageTO<T> extends PageTO<T> {
	private String item_category;
	private String keyword;
	private List<T> list;

	public SearchPageTO() {
	}

	public SearchPageTO(int curPage, String item_category, String keyword, List<T> list) {
		super.setCurPage(curPage);
		this.item_category = item_category;
		this.keyword = keyword;
		this.list = list;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public SearchPageTO(int curPage) {
		this.setCurPage(curPage);
	}

	public String getItem_category() {
		return item_category;
	}

	public void setItem_category(String item_category) {
		this.item_category = item_category;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "SearchPageTO [item_category=" + item_category + ", keyword=" + keyword + ", list=" + list + "]";
	}

}
