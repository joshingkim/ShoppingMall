package kr.co.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class LikeItemVO implements Serializable{

	private static final long serialVersionUID = 1L;
	private int like_no;
	private int item_no;
	private String member_id;
	private Date like_date;
	
	public LikeItemVO() { }
	
	public LikeItemVO(int like_no, int item_no, String member_id) {
		this.like_no = like_no;
		this.item_no = item_no;
		this.member_id = member_id;
	}

	public LikeItemVO(int like_no, int item_no, String member_id, Date like_date) {
		this.like_no = like_no;
		this.item_no = item_no;
		this.member_id = member_id;
		this.like_date = like_date;
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

	public Date getLike_date() {
		return like_date;
	}

	public void setLike_date(Date like_date) {
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
		return "LikeItemDAO {'like_no':" + like_no + ", 'item_no':" + item_no + ", 'member_id':'" + member_id + "', 'like_date':"
				+ like_date + "}";
	}
	
	
	
}
