package kr.co.domain;

import java.util.List;

public class PageTO<T> {
	private int curPage = 1;
	private int perPage = 10;
	private int perLine = 10;
	private int amount;

	private int totalPage;
	private int startNum;
	private int endNum;
	private int beginPageNum;
	private int endPageNum;
	private List<T> list;
	
	private List<String> attachList;
	
	
	public PageTO() {
		calc();
	}

	public PageTO(int curPage) {
		this.curPage = curPage;
		calc();
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
		calc();
	}

	public int getPerPage() {
		return perPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
		calc();
	}

	public int getPerLine() {
		return perLine;
	}

	public void setPerLine(int perLine) {
		this.perLine = perLine;
		calc();
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
		calc();
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getBeginPageNum() {
		return beginPageNum;
	}

	public void setBeginPageNum(int beginPageNum) {
		this.beginPageNum = beginPageNum;
	}

	public int getEndPageNum() {
		return endPageNum;
	}

	public void setEndPageNum(int endPageNum) {
		this.endPageNum = endPageNum;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public List<String> getAttachList() {
		return attachList;
	}

	public void setAttachList(List<String> attachList) {
		this.attachList = attachList;
	}

	private void calc() {
		totalPage = (amount - 1) / perPage + 1;

		startNum = (curPage - 1) * perPage + 1;

		endNum = startNum + perPage - 1;
		if (endNum > amount) {
			endNum = amount;
		}

		beginPageNum = ((curPage - 1) / perLine) * perLine + 1;

		endPageNum = beginPageNum + perLine - 1;		
		
		if (endPageNum > totalPage) {
			endPageNum = totalPage;
		}

	}
}
