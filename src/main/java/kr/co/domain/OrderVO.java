package kr.co.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class OrderVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int order_no;
	private String member_id;
	private int item_no;
	private int order_quantity;
	private int order_price;
	private Date order_date;
	
	public OrderVO() {}

	public OrderVO(int order_no, String member_id, int item_no, int order_quantity, int order_price, Date order_date) {
		this.order_no = order_no;
		this.member_id = member_id;
		this.item_no = item_no;
		this.order_quantity = order_quantity;
		this.order_price = order_price;
		this.order_date = order_date;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getItem_no() {
		return item_no;
	}

	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}

	public int getOrder_quantity() {
		return order_quantity;
	}

	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(item_no, member_id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderVO other = (OrderVO) obj;
		return item_no == other.item_no && Objects.equals(member_id, other.member_id);
	}

	@Override
	public String toString() {
		return "OrderVO [order_no=" + order_no + ", member_id=" + member_id + ", item_no=" + item_no
				+ ", order_quantity=" + order_quantity + ", order_price=" + order_price + ", order_date=" + order_date
				+ "]";
	}
	

}
