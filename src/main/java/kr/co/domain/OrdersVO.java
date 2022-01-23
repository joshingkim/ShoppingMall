package kr.co.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;


public class OrdersVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int order_id;
	private int item_no;
	private String member_id;
	private int ea;
	private int price;
	private String address;
	private String dAddress;
	private String phone;
	private String status;
	private String receiver;
	private Date order_date;
	private String item_name;
	private String file_name;
	private String ORDERDATE;
	
	public OrdersVO() {}


	public OrdersVO(int order_id, int item_no, String member_id, int ea, int price, String address, String dAddress,
			String phone, String status, String receiver, Date order_date) {
		super();
		this.order_id = order_id;
		this.item_no = item_no;
		this.member_id = member_id;
		this.ea = ea;
		this.price = price;
		this.address = address;
		this.dAddress = dAddress;
		this.phone = phone;
		this.status = status;
		this.receiver = receiver;
		this.order_date = order_date;
	}

	

	public OrdersVO(int order_id, int item_no, String member_id, int ea, int price, String address, String dAddress,
			String phone, String status, String receiver, Date order_date, String item_name, String file_name) {
		super();
		this.order_id = order_id;
		this.item_no = item_no;
		this.member_id = member_id;
		this.ea = ea;
		this.price = price;
		this.address = address;
		this.dAddress = dAddress;
		this.phone = phone;
		this.status = status;
		this.receiver = receiver;
		this.order_date = order_date;
		this.item_name = item_name;
		this.file_name = file_name;
	}


	public OrdersVO(int order_id, int item_no, String member_id, int ea, int price, String address, String dAddress,
			String phone, String status, String receiver, Date order_date, String item_name, String file_name,
			String oRDERDATE) {
		super();
		this.order_id = order_id;
		this.item_no = item_no;
		this.member_id = member_id;
		this.ea = ea;
		this.price = price;
		this.address = address;
		this.dAddress = dAddress;
		this.phone = phone;
		this.status = status;
		this.receiver = receiver;
		this.order_date = order_date;
		this.item_name = item_name;
		this.file_name = file_name;
		ORDERDATE = oRDERDATE;
	}


	public Date getOrder_date() {
		return order_date;
	}


	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}


	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
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

	public int getEa() {
		return ea;
	}

	public void setEa(int ea) {
		this.ea = ea;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getdAddress() {
		return dAddress;
	}

	public void setdAddress(String dAddress) {
		this.dAddress = dAddress;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
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


	public String getORDERDATE() {
		return ORDERDATE;
	}


	public void setORDERDATE(String oRDERDATE) {
		ORDERDATE = oRDERDATE;
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
		OrdersVO other = (OrdersVO) obj;
		return item_no == other.item_no && Objects.equals(member_id, other.member_id);
	}


	@Override
	public String toString() {
		return "{'order_id':" + order_id + ", 'item_no':" + item_no + ", 'member_id':'" + member_id + "', 'item_name':'"
				+ item_name + "', 'file_name':'" + file_name + "'}";
	}


	
}
