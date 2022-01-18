package kr.co.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class OrderVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int order_item_no;
	private int order_no;
	private String member_id;
	private int item_no;
	private int cart_no;
	private int order_quantity;
	private int order_price;
	private Date order_date;
	private String order_email;
	private String order_name;
	private int order_phone_number;
	private String order_address;
	private String order_detail_address;
	
	public OrderVO() {}

	public OrderVO(int order_item_no, int order_no, String member_id, int item_no, int cart_no, int order_quantity,
			int order_price, Date order_date, String order_email, String order_name, int order_phone_number,
			String order_address, String order_detail_address) {
		super();
		this.order_item_no = order_item_no;
		this.order_no = order_no;
		this.member_id = member_id;
		this.item_no = item_no;
		this.cart_no = cart_no;
		this.order_quantity = order_quantity;
		this.order_price = order_price;
		this.order_date = order_date;
		this.order_email = order_email;
		this.order_name = order_name;
		this.order_phone_number = order_phone_number;
		this.order_address = order_address;
		this.order_detail_address = order_detail_address;
	}

	public int getOrder_item_no() {
		return order_item_no;
	}

	public void setOrder_item_no(int order_item_no) {
		this.order_item_no = order_item_no;
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

	public int getCart_no() {
		return cart_no;
	}

	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
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

	public String getOrder_email() {
		return order_email;
	}

	public void setOrder_email(String order_email) {
		this.order_email = order_email;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public int getOrder_phone_number() {
		return order_phone_number;
	}

	public void setOrder_phone_number(int order_phone_number) {
		this.order_phone_number = order_phone_number;
	}

	public String getOrder_address() {
		return order_address;
	}

	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}

	public String getOrder_detail_address() {
		return order_detail_address;
	}

	public void setOrder_detail_address(String order_detail_address) {
		this.order_detail_address = order_detail_address;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cart_no, member_id, order_no);
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
		return cart_no == other.cart_no && Objects.equals(member_id, other.member_id) && order_no == other.order_no;
	}

	@Override
	public String toString() {
		return "OrderVO [order_item_no=" + order_item_no + ", order_no=" + order_no + ", member_id=" + member_id
				+ ", item_no=" + item_no + ", cart_no=" + cart_no + ", order_quantity=" + order_quantity
				+ ", order_price=" + order_price + ", order_date=" + order_date + ", order_email=" + order_email
				+ ", order_name=" + order_name + ", order_phone_number=" + order_phone_number + ", order_address="
				+ order_address + ", order_detail_address=" + order_detail_address + "]";
	}
	
	
	
	
	
	
}
