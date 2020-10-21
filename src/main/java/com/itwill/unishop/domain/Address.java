package com.itwill.unishop.domain;

public class Address {
	private int address_no;
	private String address_zipcode;
	private String address_name;
	private String address_country;
	private String address_city;
	private String address_address1;
	private String address_address2;
	private String member_id;
	
	public Address() {

	}
	public Address(int address_no, String address_zipcode, String address_name, String address_country,
			String address_city, String address_address1, String address_address2, String member_id) {
		super();
		this.address_no = address_no;
		this.address_zipcode = address_zipcode;
		this.address_name = address_name;
		this.address_country = address_country;
		this.address_city = address_city;
		this.address_address1 = address_address1;
		this.address_address2 = address_address2;
		this.member_id = member_id;
	}
	public int getAddress_no() {
		return address_no;
	}
	public void setAddress_no(int address_no) {
		this.address_no = address_no;
	}
	public String getAddress_zipcode() {
		return address_zipcode;
	}
	public void setAddress_zipcode(String address_zipcode) {
		this.address_zipcode = address_zipcode;
	}
	public String getAddress_name() {
		return address_name;
	}
	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}
	public String getAddress_country() {
		return address_country;
	}
	public void setAddress_country(String address_country) {
		this.address_country = address_country;
	}
	public String getAddress_city() {
		return address_city;
	}
	public void setAddress_city(String address_city) {
		this.address_city = address_city;
	}
	public String getAddress_address1() {
		return address_address1;
	}
	public void setAddress_address1(String address_address1) {
		this.address_address1 = address_address1;
	}
	public String getAddress_address2() {
		return address_address2;
	}
	public void setAddress_address2(String address_address2) {
		this.address_address2 = address_address2;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "Address [address_no=" + address_no + ", address_zipcode=" + address_zipcode + ", address_name="
				+ address_name + ", address_country=" + address_country + ", address_city=" + address_city
				+ ", address_address1=" + address_address1 + ", address_address2=" + address_address2 + ", member_id="
				+ member_id + "]";
	}
	
}
