package kr.co.domain;

import java.io.Serializable;
import java.util.Objects;

public class ReviewVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int review_no;
	private int board_no;
	private String member_id;
	private String review_content;
	private String review_regdate;
	private String review_updatedate;
	private int review_grade;
	private int item_no;
	private String item_name;
	private String file_name;
	
	public ReviewVO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewVO(int board_no, String member_id, String review_content) {
		super();
		this.board_no = board_no;
		this.member_id = member_id;
		this.review_content = review_content;
	}

	public ReviewVO(int review_no, int board_no, String member_id, String review_content, String review_regdate,
			String review_updatedate, int review_grade) {
		super();
		this.review_no = review_no;
		this.board_no = board_no;
		this.member_id = member_id;
		this.review_content = review_content;
		this.review_regdate = review_regdate;
		this.review_updatedate = review_updatedate;
		this.review_grade = review_grade;
	}

	
	
	public ReviewVO(int review_no, int board_no, String member_id, String review_content, String review_regdate,
			String review_updatedate, int review_grade, int item_no, String item_name, String file_name) {
		super();
		this.review_no = review_no;
		this.board_no = board_no;
		this.member_id = member_id;
		this.review_content = review_content;
		this.review_regdate = review_regdate;
		this.review_updatedate = review_updatedate;
		this.review_grade = review_grade;
		this.item_no = item_no;
		this.item_name = item_name;
		this.file_name = file_name;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public String getReview_regdate() {
		return review_regdate;
	}

	public void setReview_regdate(String review_regdate) {
		this.review_regdate = review_regdate;
	}

	public String getReview_updatedate() {
		return review_updatedate;
	}

	public void setReview_updatedate(String review_updatedate) {
		this.review_updatedate = review_updatedate;
	}

	public int getReview_grade() {
		return review_grade;
	}

	public void setReview_grade(int review_grade) {
		this.review_grade = review_grade;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getItem_no() {
		return item_no;
	}

	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}
	
	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	@Override
	public int hashCode() {
		return Objects.hash(board_no, member_id);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ReviewVO other = (ReviewVO) obj;
		return board_no == other.board_no && Objects.equals(member_id, other.member_id);
	}

	@Override
	public String toString() {
		return "{'item_no':" + item_no + ", 'file_name':'" + file_name + "'}";
	}


//	@Override
//	public String toString() {
//		return "{\"review_no\":" + review_no + ", \"board_no\":" + board_no + ", \"member_id\":\"" + member_id
//				+ "\", \"review_content\":\"" + review_content + "\", \"review_regdate\":\"" + review_regdate + "\", \"review_updatedate\":\""
//				+ review_updatedate + "\", \"review_grade\":" + review_grade + ", \"item_no\"=" + item_no + ", \"item_name\":\""
//				+ item_name + "\", \"file_name\":\"" + file_name + "\"}";
//	}
	
	

	
}
