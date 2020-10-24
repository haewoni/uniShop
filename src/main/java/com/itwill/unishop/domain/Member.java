package com.itwill.unishop.domain;

public class Member {
	
	private String member_id;
	private String member_password;
	private String member_name;
	private String member_phone;
	private String member_email;
	private String member_address_name;
	private String member_address_zipcode;
	private String member_address_country;
	private String member_address_city;
	private String member_address1;
	private String member_address2;
	
	public Member() {

	}

	public Member(String member_id, String member_password, String member_name, String member_phone,
			String member_email, String member_address_name, String member_address_zipcode,
			String member_address_country, String member_address_city, String member_address1, String member_address2) {
		super();
		this.member_id = member_id;
		this.member_password = member_password;
		this.member_name = member_name;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_address_name = member_address_name;
		this.member_address_zipcode = member_address_zipcode;
		this.member_address_country = member_address_country;
		this.member_address_city = member_address_city;
		this.member_address1 = member_address1;
		this.member_address2 = member_address2;
	}
	
	public Member(String member_id, String member_password, String member_name, String member_phone,
			String member_email) {
		super();
		this.member_id = member_id;
		this.member_password = member_password;
		this.member_name = member_name;
		this.member_phone = member_phone;
		this.member_email = member_email;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_password() {
		return member_password;
	}

	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_address_name() {
		return member_address_name;
	}

	public void setMember_address_name(String member_address_name) {
		this.member_address_name = member_address_name;
	}

	public String getMember_address_zipcode() {
		return member_address_zipcode;
	}

	public void setMember_address_zipcode(String member_address_zipcode) {
		this.member_address_zipcode = member_address_zipcode;
	}

	public String getMember_address_country() {
		return member_address_country;
	}

	public void setMember_address_country(String member_address_country) {
		this.member_address_country = member_address_country;
	}

	public String getMember_address_city() {
		return member_address_city;
	}

	public void setMember_address_city(String member_address_city) {
		this.member_address_city = member_address_city;
	}

	public String getMember_address1() {
		return member_address1;
	}

	public void setMember_address1(String member_address1) {
		this.member_address1 = member_address1;
	}

	public String getMember_address2() {
		return member_address2;
	}

	public void setMember_address2(String member_address2) {
		this.member_address2 = member_address2;
	}

	@Override
	public String toString() {
		return "Member [member_id=" + member_id + ", member_password=" + member_password + ", member_name="
				+ member_name + ", member_phone=" + member_phone + ", member_email=" + member_email
				+ ", member_address_name=" + member_address_name + ", member_address_zipcode=" + member_address_zipcode
				+ ", member_address_country=" + member_address_country + ", member_address_city=" + member_address_city
				+ ", member_address1=" + member_address1 + ", member_address2=" + member_address2 + "]";
	}
	
}