package kr.co.domain;

import java.io.Serializable;
import java.util.Objects;

public class CategoryVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String item_name;
	private String item_category;
	private String ori_item_name;
	
	public CategoryVO() {
		// TODO Auto-generated constructor stub
	}

	public CategoryVO(String item_name, String item_category) {
		super();
		this.item_name = item_name;
		this.item_category = item_category;
	}

	public CategoryVO(String item_name, String item_category, String ori_item_name) {
		super();
		this.item_name = item_name;
		this.item_category = item_category;
		this.ori_item_name = ori_item_name;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(item_category, item_name);
	}
	
	public String getOri_item_name() {
		return ori_item_name;
	}

	public void setOri_item_name(String ori_item_name) {
		this.ori_item_name = ori_item_name;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CategoryVO other = (CategoryVO) obj;
		return Objects.equals(item_category, other.item_category) && Objects.equals(item_name, other.item_name);
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
	
}
