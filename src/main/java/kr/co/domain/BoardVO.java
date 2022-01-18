package kr.co.domain;

import java.io.Serializable;
import java.util.Objects;

public class BoardVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int board_no;
	private int item_no;
	private String board_title;
	private String board_content;
	private String board_regdate;
	private String board_updatedate;
	private int board_viewcnt;
	
	public BoardVO() {
		// TODO Auto-generated constructor stub
	}

	public BoardVO(int board_no, int item_no, String board_title, String board_content, String board_regdate,
			String board_updatedate, int board_viewcnt) {
		super();
		this.board_no = board_no;
		this.item_no = item_no;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_regdate = board_regdate;
		this.board_updatedate = board_updatedate;
		this.board_viewcnt = board_viewcnt;
	}

	public BoardVO(int item_no, String board_title, String board_content) {
		super();
		this.item_no = item_no;
		this.board_title = board_title;
		this.board_content = board_content;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getItem_no() {
		return item_no;
	}

	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_regdate() {
		return board_regdate;
	}

	public void setBoard_regdate(String board_regdate) {
		this.board_regdate = board_regdate;
	}

	public String getBoard_updatedate() {
		return board_updatedate;
	}

	public void setBoard_updatedate(String board_updatedate) {
		this.board_updatedate = board_updatedate;
	}

	public int getBoard_viewcnt() {
		return board_viewcnt;
	}

	public void setBoard_viewcnt(int board_viewcnt) {
		this.board_viewcnt = board_viewcnt;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

	@Override
	public int hashCode() {
		return Objects.hash(board_no);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BoardVO other = (BoardVO) obj;
		return board_no == other.board_no;
	}

	@Override
	public String toString() {
		return "BoardVO [board_no=" + board_no + ", item_no=" + item_no + ", board_title=" + board_title
				+ ", board_content=" + board_content + ", board_regdate=" + board_regdate + ", board_updatedate="
				+ board_updatedate + ", board_viewcnt=" + board_viewcnt + "]";
	}
	
	

}
