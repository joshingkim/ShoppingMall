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
	private Date cart_date;
	private int money;
	
	public CartVO() { }

	public CartVO(int cart_no, String member_id, int item_no, int cart_quantity, int cart_price, Date cart_date,
			int money) {
		this.cart_no = cart_no;
		this.member_id = member_id;
		this.item_no = item_no;
		this.cart_quantity = cart_quantity;
		this.cart_price = cart_price;
		this.cart_date = cart_date;
		this.money = money;
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

	public Date getCart_date() {
		return cart_date;
	}

	public void setCart_date(Date cart_date) {
		this.cart_date = cart_date;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cart_date, cart_no, cart_price, cart_quantity, item_no, member_id, money);
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
				&& cart_quantity == other.cart_quantity && item_no == other.item_no
				&& Objects.equals(member_id, other.member_id) && money == other.money;
	}
	
	@Override
	public String toString() {
	return " {'cart_no':" + cart_no + ", 'member_id':'" + member_id + "', 'item_no':" + item_no + ", 'cart_quantity':"
	+ cart_quantity + ", 'cart_price':" + cart_price + ", 'money':"+ money+"}";
	}
	
	
	

}
