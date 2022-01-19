package kr.co.domain;

import java.io.Serializable;
import java.util.Objects;

public class ItemVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int item_no;
	private String item_name;
	private String item_category;
	private String item_size;
	private String item_color;
	private int item_price;
	private int discount_percentage;
	private int item_amount;
	private String item_regdate;
	private String[] insertfiles;
	private String[] deletefiles;
	private String file_name;
	private String ori_item_name;
	
	public ItemVO() {
		// TODO Auto-generated constructor stub
	}
	
	public ItemVO(int item_no, String item_name, String item_size, String item_color) {
		super();
		this.item_no = item_no;
		this.item_name = item_name;
		this.item_size = item_size;
		this.item_color = item_color;
	}

	public ItemVO(int item_no, String item_name, String item_category, String item_size, String item_color,
			int item_price, int discount_percentage, int item_amount, String item_regdate) {
		super();
		this.item_no = item_no;
		this.item_name = item_name;
		this.item_category = item_category;
		this.item_size = item_size;
		this.item_color = item_color;
		this.item_price = item_price;
		this.discount_percentage = discount_percentage;
		this.item_amount = item_amount;
		this.item_regdate = item_regdate;
	}
	
	public ItemVO(int item_no, String item_name, String item_category, String item_size, String item_color,
			int item_price, int discount_percentage, int item_amount, String item_regdate, String[] insertfiles,
			String[] deletefiles) {
		super();
		this.item_no = item_no;
		this.item_name = item_name;
		this.item_category = item_category;
		this.item_size = item_size;
		this.item_color = item_color;
		this.item_price = item_price;
		this.discount_percentage = discount_percentage;
		this.item_amount = item_amount;
		this.item_regdate = item_regdate;
		this.insertfiles = insertfiles;
		this.deletefiles = deletefiles;
	}

	public ItemVO(int item_no, String item_name, String file_name) {
		super();
		this.item_no = item_no;
		this.item_name = item_name;
		this.file_name = file_name;
	}
	
	public ItemVO(String item_name, String item_category, String ori_item_name) {
		super();
		this.item_name = item_name;
		this.item_category = item_category;
		this.ori_item_name = ori_item_name;
	}

	public ItemVO(int item_no, String item_name, String item_category, String item_size, String item_color,
			int item_price, int discount_percentage, int item_amount, String item_regdate, String[] insertfiles,
			String[] deletefiles, String file_name, String ori_item_name) {
		super();
		this.item_no = item_no;
		this.item_name = item_name;
		this.item_category = item_category;
		this.item_size = item_size;
		this.item_color = item_color;
		this.item_price = item_price;
		this.discount_percentage = discount_percentage;
		this.item_amount = item_amount;
		this.item_regdate = item_regdate;
		this.insertfiles = insertfiles;
		this.deletefiles = deletefiles;
		this.file_name = file_name;
		this.ori_item_name = ori_item_name;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public int getItem_no() {
		return item_no;
	}

	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getItem_category() {
		return item_category;
	}

	public void setItem_category(String item_category) {
		this.item_category = item_category;
	}

	public String getItem_size() {
		return item_size;
	}

	public void setItem_size(String item_size) {
		this.item_size = item_size;
	}

	public String getItem_color() {
		return item_color;
	}

	public void setItem_color(String item_color) {
		this.item_color = item_color;
	}

	public int getItem_price() {
		return item_price;
	}

	public void setItem_price(int item_price) {
		this.item_price = item_price;
	}

	public int getDiscount_percentage() {
		return discount_percentage;
	}

	public void setDiscount_percentage(int discount_percentage) {
		this.discount_percentage = discount_percentage;
	}

	public int getItem_amount() {
		return item_amount;
	}

	public void setItem_amount(int item_amount) {
		this.item_amount = item_amount;
	}

	public String getItem_regdate() {
		return item_regdate;
	}

	public void setItem_regdate(String item_regdate) {
		this.item_regdate = item_regdate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String[] getInsertfiles() {
		return insertfiles;
	}

	public void setInsertfiles(String[] insertfiles) {
		this.insertfiles = insertfiles;
	}

	public String[] getDeletefiles() {
		return deletefiles;
	}

	public void setDeletefiles(String[] deletefiles) {
		this.deletefiles = deletefiles;
	}

	public String getOri_item_name() {
		return ori_item_name;
	}

	public void setOri_item_name(String ori_item_name) {
		this.ori_item_name = ori_item_name;
	}

	@Override
	public int hashCode() {
		return Objects.hash(item_category, item_name, item_no);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ItemVO other = (ItemVO) obj;
		return Objects.equals(item_category, other.item_category) && Objects.equals(item_name, other.item_name)
				&& item_no == other.item_no;
	}

	@Override
	public String toString() {
		return "{'item_no':" + item_no + ", 'item_name':'" + item_name + "', 'file_name': '"+file_name+"', 'item_price':"+item_price+",'discount_percentage':"+discount_percentage+"}";
	}

}
