package kr.co.domain;

import java.io.Serializable;
import java.util.Objects;

public class ManagerVO implements Serializable{

	
	private static final long serialVersionUID = 1L;
	private String manager_id;
	private String manager_pw;
	private String manager_name;
	private String manager_email;
	private int manager_phone;
	private int manager_code;
	
	
	public ManagerVO() {
		// TODO Auto-generated constructor stub
	}


	public ManagerVO(String manager_id, String manager_pw, String manager_name, String manager_email, int manager_phone,
			int manager_code) {
		super();
		this.manager_id = manager_id;
		this.manager_pw = manager_pw;
		this.manager_name = manager_name;
		this.manager_email = manager_email;
		this.manager_phone = manager_phone;
		this.manager_code = manager_code;
	}


	public String getManager_id() {
		return manager_id;
	}


	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}


	public String getManager_pw() {
		return manager_pw;
	}


	public void setManager_pw(String manager_pw) {
		this.manager_pw = manager_pw;
	}


	public String getManager_name() {
		return manager_name;
	}


	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}


	public String getManager_email() {
		return manager_email;
	}


	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}


	public int getManager_phone() {
		return manager_phone;
	}


	public void setManager_phone(int manager_phone) {
		this.manager_phone = manager_phone;
	}


	public int getManager_code() {
		return manager_code;
	}


	public void setManager_code(int manager_code) {
		this.manager_code = manager_code;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public int hashCode() {
		return Objects.hash(manager_id, manager_pw);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ManagerVO other = (ManagerVO) obj;
		return Objects.equals(manager_id, other.manager_id) && Objects.equals(manager_pw, other.manager_pw);
	}


	@Override
	public String toString() {
		return "ManagerVO [manager_id=" + manager_id + ", manager_name=" + manager_name + ", manager_code="
				+ manager_code + "]";
	}
	
	
	
	

}
