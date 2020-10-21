package com.itwill.unishop.domain;

public class Delivery {
	private String delivery_no;
	private String delivery_name;
	private String delivery_time;
	private int delivery_fee;
	
	public Delivery() {
		
	}
	public Delivery(String delivery_no, String delivery_name, String delivery_time, int delivery_fee) {
		super();
		this.delivery_no = delivery_no;
		this.delivery_name = delivery_name;
		this.delivery_time = delivery_time;
		this.delivery_fee = delivery_fee;
	}
	public String getDelivery_no() {
		return delivery_no;
	}
	public void setDelivery_no(String delivery_no) {
		this.delivery_no = delivery_no;
	}
	public String getDelivery_name() {
		return delivery_name;
	}
	public void setDelivery_name(String delivery_name) {
		this.delivery_name = delivery_name;
	}
	public String getDelivery_time() {
		return delivery_time;
	}
	public void setDelivery_time(String delivery_time) {
		this.delivery_time = delivery_time;
	}
	public int getDelivery_fee() {
		return delivery_fee;
	}
	public void setDelivery_fee(int delivery_fee) {
		this.delivery_fee = delivery_fee;
	}
	@Override
	public String toString() {
		return "Delivery [delivery_no=" + delivery_no + ", delivery_name=" + delivery_name + ", delivery_time="
				+ delivery_time + ", delivery_fee=" + delivery_fee + "]";
	}
	
}
