package kr.co.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.Objects;

public class FnqVO implements Serializable{

	
	private static final long serialVersionUID = 1L;
	private int fnq_no;
	private String manager_id;
	private String fnq_title;
	private String fnq_content;
	private String fnq_regdate;
	private Date  fnq_updatedate;
	private String fnq_viewcnt;
	
	public FnqVO() {
		// TODO Auto-generated constructor stub
	}

	public FnqVO(int fnq_no, String manager_id, String fnq_title, String fnq_content, String fnq_regdate,
			Date fnq_updatedate, String fnq_viewcnt) {
		super();
		this.fnq_no = fnq_no;
		this.manager_id = manager_id;
		this.fnq_title = fnq_title;
		this.fnq_content = fnq_content;
		this.fnq_regdate = fnq_regdate;
		this.fnq_updatedate = fnq_updatedate;
		this.fnq_viewcnt = fnq_viewcnt;
	}

	public FnqVO(String fnq_title, String fnq_content) {
		super();
		this.fnq_title = fnq_title;
		this.fnq_content = fnq_content;
	}

	public int getFnq_no() {
		return fnq_no;
	}

	public void setFnq_no(int fnq_no) {
		this.fnq_no = fnq_no;
	}

	public String getManager_id() {
		return manager_id;
	}

	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}

	public String getFnq_title() {
		return fnq_title;
	}

	public void setFnq_title(String fnq_title) {
		this.fnq_title = fnq_title;
	}

	public String getFnq_content() {
		return fnq_content;
	}

	public void setFnq_content(String fnq_content) {
		this.fnq_content = fnq_content;
	}

	public String getFnq_regdate() {
		return fnq_regdate;
	}

	public void setFnq_regdate(String fnq_regdate) {
		this.fnq_regdate = fnq_regdate;
	}

	public Date getFnq_updatedate() {
		return fnq_updatedate;
	}

	public void setFnq_updatedate(Date fnq_updatedate) {
		this.fnq_updatedate = fnq_updatedate;
	}

	public String getFnq_viewcnt() {
		return fnq_viewcnt;
	}

	public void setFnq_viewcnt(String fnq_viewcnt) {
		this.fnq_viewcnt = fnq_viewcnt;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(fnq_no, manager_id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		FnqVO other = (FnqVO) obj;
		return fnq_no == other.fnq_no && Objects.equals(manager_id, other.manager_id);
	}

	@Override
	public String toString() {
		return "fnqVO [fnq_no:" + fnq_no + ", manager_id:" + manager_id + ", fnq_title:" + fnq_title + ", fnq_content:"
				+ fnq_content + ", fnq_regdate:" + fnq_regdate + ", fnq_updatedate:" + fnq_updatedate + ", fnq_viewcnt:"
				+ fnq_viewcnt + "]";
	}
	
	
	
	
	
	
	
	
}
