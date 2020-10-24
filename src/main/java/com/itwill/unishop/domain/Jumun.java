package com.itwill.unishop.domain;

import java.util.Date;

public class Jumun {
	private int jumun_no;
	private Date jumun_date;
	private String jumun_status;
	private int jumun_tot_price;
	private String card_no;
	private String card_expire_date;
	private String card_cvc;
	private String card_member_name;
	private String member_id;
	private String delivery_no;
	
	
	public Jumun(int jumun_no, Date jumun_date, String jumun_status, int jumun_tot_price, String card_no,
			String card_expire_date, String card_cvc, String card_member_name, String member_id, String delivery_no) {
		super();
		this.jumun_no = jumun_no;
		this.jumun_date = jumun_date;
		this.jumun_status = jumun_status;
		this.jumun_tot_price = jumun_tot_price;
		this.card_no = card_no;
		this.card_expire_date = card_expire_date;
		this.card_cvc = card_cvc;
		this.card_member_name = card_member_name;
		this.member_id = member_id;
		this.delivery_no = delivery_no;
	}
	public Jumun() {
		// TODO Auto-generated constructor stub
	}
	public int getJumun_no() {
		return jumun_no;
	}
	public void setJumun_no(int jumun_no) {
		this.jumun_no = jumun_no;
	}
	public Date getJumun_date() {
		return jumun_date;
	}
	public void setJumun_date(Date jumun_date) {
		this.jumun_date = jumun_date;
	}
	public String getJumun_status() {
		return jumun_status;
	}
	public void setJumun_status(String jumun_status) {
		this.jumun_status = jumun_status;
	}
	public int getJumun_tot_price() {
		return jumun_tot_price;
	}
	public void setJumun_tot_price(int jumun_tot_price) {
		this.jumun_tot_price = jumun_tot_price;
	}
	public String getCard_no() {
		return card_no;
	}
	public void setCard_no(String card_no) {
		this.card_no = card_no;
	}
	public String getCard_expire_date() {
		return card_expire_date;
	}
	public void setCard_expire_date(String card_expire_date) {
		this.card_expire_date = card_expire_date;
	}
	public String getCard_cvc() {
		return card_cvc;
	}
	public void setCard_cvc(String card_cvc) {
		this.card_cvc = card_cvc;
	}
	public String getCard_member_name() {
		return card_member_name;
	}
	public void setCard_member_name(String card_member_name) {
		this.card_member_name = card_member_name;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getDelivery_no() {
		return delivery_no;
	}
	public void setDelivery_no(String delivery_no) {
		this.delivery_no = delivery_no;
	}
	@Override
	public String toString() {
		return "Jumun [jumun_no=" + jumun_no + ", jumun_date=" + jumun_date + ", jumun_status=" + jumun_status
				+ ", jumun_tot_price=" + jumun_tot_price + ", card_no=" + card_no + ", card_expire_date="
				+ card_expire_date + ", card_cvc=" + card_cvc + ", card_member_name=" + card_member_name
				+ ", member_id=" + member_id + ", delivery_no=" + delivery_no + "]";
	}
	
}
