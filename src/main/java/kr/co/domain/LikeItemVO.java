package kr.co.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class LikeItemVO implements Serializable{

	private static final long serialVersionUID = 1L;
	private int like_no;
	private int item_no;
	private String member_id;
	private String like_date;
	private String item_name;
	private String file_name;
	
	public LikeItemVO() { }
	
	public LikeItemVO(int like_no, int item_no, String member_id) {
		this.like_no = like_no;
		this.item_no = item_no;
		this.member_id = member_id;
	}

	public LikeItemVO(int like_no, int item_no, String member_id, String like_date) {
		this.like_no = like_no;
		this.item_no = item_no;
		this.member_id = member_id;
		this.like_date = like_date;
	}
	
	

	public LikeItemVO(int like_no, int item_no, String member_id, String like_date, String item_name, String file_name) {
		super();
		this.like_no = like_no;
		this.item_no = item_no;
		this.member_id = member_id;
		this.like_date = like_date;
		this.item_name = item_name;
		this.file_name = file_name;
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

	public int getLike_no() {
		return like_no;
	}

	public void setLike_no(int like_no) {
		this.like_no = like_no;
	}

	public int getItem_no() {
		return item_no;
	}

	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getLike_date() {
		return like_date;
	}

	public void setLike_date(String like_date) {
		this.like_date = like_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(item_no, like_no, member_id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		LikeItemVO other = (LikeItemVO) obj;
		return item_no == other.item_no && like_no == other.like_no && Objects.equals(member_id, other.member_id);
	}

	@Override
	public String toString() {
		return "{'like_no':" + like_no + ", 'item_no':" + item_no + ", 'member_id':'" + member_id + "', 'like_date':'"
				+ like_date + "', 'item_name':'" + item_name + "', 'file_name':'" + file_name + "'}";
	}


	
	
}
