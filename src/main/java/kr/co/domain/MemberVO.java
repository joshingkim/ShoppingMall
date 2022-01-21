package kr.co.domain;

import java.io.Serializable;
import java.util.Objects;

public class MemberVO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_birthday;
	private String member_email;
	private String member_address;
	private String member_detail_address;
	private String member_phone_number;
	private String member_regdate;
	private String member_updatedate;
	
	public MemberVO() {
	}
	
	public MemberVO(String member_id, String member_pw, String member_name, String member_birthday, String member_email,
			String member_address, String member_detail_address, String member_phone_number) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_birthday = member_birthday;
		this.member_email = member_email;
		this.member_address = member_address;
		this.member_detail_address = member_detail_address;
		this.member_phone_number = member_phone_number;
	}

	public MemberVO(String member_id, String member_pw, String member_name, String member_birthday, String member_email,
			String member_address, String member_detail_address, String member_phone_number, String member_regdate,
			String member_updatedate) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_birthday = member_birthday;
		this.member_email = member_email;
		this.member_address = member_address;
		this.member_detail_address = member_detail_address;
		this.member_phone_number = member_phone_number;
		this.member_regdate = member_regdate;
		this.member_updatedate = member_updatedate;
	}

	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	
	
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	
	
	public String getMember_birthday() {
		return member_birthday;
	}
	public void setMember_birthday(String member_birthday) {
		this.member_birthday = member_birthday;
	}
	
	
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	
	
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	
	
	public String getMember_detail_address() {
		return member_detail_address;
	}
	public void setMember_detail_address(String member_detail_address) {
		this.member_detail_address = member_detail_address;
	}

	
	public String getMember_phone_number() {
		return member_phone_number;
	}
	public void setMember_phone_number(String member_phone_number) {
		this.member_phone_number = member_phone_number;
	}

	
	public String getMember_regdate() {
		return member_regdate;
	}
	public void setMember_regdate(String member_regdate) {
		this.member_regdate = member_regdate;
	}

	
	public String getMember_updatedate() {
		return member_updatedate;
	}
	public void setMember_updatedate(String member_updatedate) {
		this.member_updatedate = member_updatedate;
	}
	
	@Override
	public String toString() {
		return "{'member_id' : '" + member_id + "', 'member_pw' : '" + member_pw + "', 'member_name' : '" + member_name + "', "
				+ "'member_birthday' : '" + member_birthday + "', 'member_email' : '" + member_email + "', "
				+ "'member_address' : '" + member_address + "', 'member_detail_address' : '" + member_detail_address + "', "
				+ "'member_phone_number' : '" + member_phone_number + "', 'member_regdate' : '" + member_regdate + "', "
				+ "'member_updatedate' : '"	+ member_updatedate + "'}";
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(member_id, member_pw);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberVO other = (MemberVO) obj;
		return Objects.equals(member_id, other.member_id) && Objects.equals(member_pw, other.member_pw);
	}
}
