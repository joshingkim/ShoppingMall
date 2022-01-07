package kr.co.domain;

import java.io.Serializable;
import java.util.Objects;

public class ErrorVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int error_no;
	private String regdate;
	private String filename;
	private String methodname;
	private int linenum;
	private String uri;
	private String review;
	
	public ErrorVO() {
		// TODO Auto-generated constructor stub
	}

	public ErrorVO(int error_no, String regdate, String filename, String methodname, int linenum, String uri,
			String review) {
		super();
		this.error_no = error_no;
		this.regdate = regdate;
		this.filename = filename;
		this.methodname = methodname;
		this.linenum = linenum;
		this.uri = uri;
		this.review = review;
	}

	public int getError_no() {
		return error_no;
	}

	public void setError_no(int error_no) {
		this.error_no = error_no;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getMethodname() {
		return methodname;
	}

	public void setMethodname(String methodname) {
		this.methodname = methodname;
	}

	public int getLinenum() {
		return linenum;
	}

	public void setLinenum(int linenum) {
		this.linenum = linenum;
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(error_no, filename, linenum, methodname, uri);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ErrorVO other = (ErrorVO) obj;
		return error_no == other.error_no && Objects.equals(filename, other.filename) && linenum == other.linenum
				&& Objects.equals(methodname, other.methodname) && Objects.equals(uri, other.uri);
	}

	@Override
	public String toString() {
		return "ErrorVO [error_no=" + error_no + ", regdate=" + regdate + ", filename=" + filename + ", methodname="
				+ methodname + ", linenum=" + linenum + ", uri=" + uri + ", review=" + review + "]";
	}
	
	
	
}
