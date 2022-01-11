package kr.co.domain;

public class SearchPageTO<T> extends PageTO<T>{
	private String item_category;
	private String keyword;
	
	
	
	public SearchPageTO(int curPage, String item_category, String keyword) {
		super.setCurPage(curPage);
		this.item_category = item_category;
		this.keyword = keyword;
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
	
	
	
	
	
}
