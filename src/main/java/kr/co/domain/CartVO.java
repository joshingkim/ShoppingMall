package kr.co.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class CartVO implements Serializable{

	private static final long serialVersionUID = 1L;
	private int cart_no;
	private String member_id;
	private int item_no;
	private int cart_quantity;
	private int cart_price;
	private String cart_date;
	private int money;
	private String item_name;
	private int item_price;
	private int discount_percentage;
	private String file_name;
	
	public CartVO() { }

	public CartVO(int cart_no, String member_id, int item_no, int cart_quantity, int cart_price, String cart_date,
			int money) {
		this.cart_no = cart_no;
		this.member_id = member_id;
		this.item_no = item_no;
		this.cart_quantity = cart_quantity;
		this.cart_price = cart_price;
		this.cart_date = cart_date;
	}
	
	public CartVO(int cart_no, String member_id, int item_no, int cart_quantity, int cart_price, String cart_date,
			String item_name, int item_price, int discount_percentage) {
		super();
		this.cart_no = cart_no;
		this.member_id = member_id;
		this.item_no = item_no;
		this.cart_quantity = cart_quantity;
		this.cart_price = cart_price;
		this.cart_date = cart_date;
		this.item_name = item_name;
		this.item_price = item_price;
		this.discount_percentage = discount_percentage;
	}

	public CartVO(int cart_no, String member_id, int item_no, int cart_quantity, int cart_price, String cart_date,
			int money, String item_name, int item_price, int discount_percentage, String file_name) {
		super();
		this.cart_no = cart_no;
		this.member_id = member_id;
		this.item_no = item_no;
		this.cart_quantity = cart_quantity;
		this.cart_price = cart_price;
		this.cart_date = cart_date;
		this.money = money;
		this.item_name = item_name;
		this.item_price = item_price;
		this.discount_percentage = discount_percentage;
		this.file_name = file_name;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public int getCart_no() {
		return cart_no;
	}

	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
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

	public int getCart_quantity() {
		return cart_quantity;
	}

	public void setCart_quantity(int cart_quantity) {
		this.cart_quantity = cart_quantity;
	}

	public int getCart_price() {
		return cart_price;
	}

	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}

	public String getCart_date() {
		return cart_date;
	}

	public void setCart_date(String cart_date) {
		this.cart_date = cart_date;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getDiscount_percentage() {
		return discount_percentage;
	}

	public void setDiscount_percentage(int discount_percentage) {
		this.discount_percentage = discount_percentage;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public int getItem_price() {
		return item_price;
	}

	public void setItem_price(int item_price) {
		this.item_price = item_price;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cart_date, cart_no, cart_price, cart_quantity, discount_percentage, item_name, item_no,
				item_price, member_id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartVO other = (CartVO) obj;
		return Objects.equals(cart_date, other.cart_date) && cart_no == other.cart_no && cart_price == other.cart_price
				&& cart_quantity == other.cart_quantity && discount_percentage == other.discount_percentage
				&& Objects.equals(item_name, other.item_name) && item_no == other.item_no
				&& item_price == other.item_price && Objects.equals(member_id, other.member_id);
	}

	@Override
	public String toString() {
		return "{'file_name':'"+file_name+"','cart_no':" + cart_no + ", 'member_id':'" + member_id + "', 'item_no':" + item_no + ", 'cart_quantity':"
				+ cart_quantity + ", 'cart_price':" + cart_price + ", 'cart_date':'" + cart_date + "', 'money':" + money
				+ ", 'item_name':'" + item_name + "', 'item_price':" + item_price + ", 'discount_percentage':"+ discount_percentage+"}";
	}
	
	
	

}
