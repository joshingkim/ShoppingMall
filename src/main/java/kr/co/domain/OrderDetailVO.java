package kr.co.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class OrderDetailVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int order_detail_no;
	private String member_id;
	private int order_no;
	private int order_item_no;
	private int order_detail_price;
	private int order_detail_code;
	private Date order_regdate;
	private Date order_update_date;
	
	public OrderDetailVO() {}

	

	public OrderDetailVO(int order_detail_no, String member_id, int order_no, int order_item_no, int order_detail_price,
			int order_detail_code, Date order_regdate, Date order_update_date) {
		super();
		this.order_detail_no = order_detail_no;
		this.member_id = member_id;
		this.order_no = order_no;
		this.order_item_no = order_item_no;
		this.order_detail_price = order_detail_price;
		this.order_detail_code = order_detail_code;
		this.order_regdate = order_regdate;
		this.order_update_date = order_update_date;
	}



	public int getOrder_detail_no() {
		return order_detail_no;
	}

	public void setOrder_detail_no(int order_detail_no) {
		this.order_detail_no = order_detail_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public int getOrder_detail_price() {
		return order_detail_price;
	}

	public void setOrder_detail_price(int order_detail_price) {
		this.order_detail_price = order_detail_price;
	}

	public int getOrder_detail_code() {
		return order_detail_code;
	}

	public void setOrder_detail_code(int order_detail_code) {
		this.order_detail_code = order_detail_code;
	}

	public Date getOrder_regdate() {
		return order_regdate;
	}

	public void setOrder_regdate(Date order_regdate) {
		this.order_regdate = order_regdate;
	}

	public Date getOrder_update_date() {
		return order_update_date;
	}

	public void setOrder_update_date(Date order_update_date) {
		this.order_update_date = order_update_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getOrder_item_no() {
		return order_item_no;
	}

	public void setOrder_item_no(int order_item_no) {
		this.order_item_no = order_item_no;
	}



	@Override
	public int hashCode() {
		return Objects.hash(member_id, order_detail_no, order_no);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderDetailVO other = (OrderDetailVO) obj;
		return Objects.equals(member_id, other.member_id) && order_detail_no == other.order_detail_no
				&& order_no == other.order_no;
	}



	@Override
	public String toString() {
		return "OrderDetailVO [order_detail_no=" + order_detail_no + ", member_id=" + member_id + ", order_no="
				+ order_no + ", order_item_no=" + order_item_no + ", order_detail_price=" + order_detail_price
				+ ", order_detail_code=" + order_detail_code + ", order_regdate=" + order_regdate
				+ ", order_update_date=" + order_update_date + "]";
	}

	

	
	
	
	
	
}
