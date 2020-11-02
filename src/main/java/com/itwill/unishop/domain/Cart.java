package com.itwill.unishop.domain;

public class Cart {
	private int cart_no;
	private int cart_qty;
	private int cart_tot_price;
	private String cart_product_size;
	private String member_id;
	private String product_no;
	private String product_name;
	private String product_image_1;
	
	
	public Cart() {
		
	}
	public Cart(int cart_no, int cart_qty, int cart_tot_price, String cart_product_size, String member_id,
			    String product_no, String product_name, String product_image_1) {
		super();
		this.cart_no = cart_no;
		this.cart_qty = cart_qty;
		this.cart_tot_price = cart_tot_price;
		this.cart_product_size = cart_product_size;
		this.member_id = member_id;
		this.product_no = product_no;
		this.product_no = product_name;
		this.product_no = product_image_1;
	}
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_image_1() {
		return product_image_1;
	}
	public void setProduct_image_1(String product_image_1) {
		this.product_image_1 = product_image_1;
	}
	public int getCart_qty() {
		return cart_qty;
	}
	public void setCart_qty(int cart_qty) {
		this.cart_qty = cart_qty;
	}
	public int getCart_tot_price() {
		return cart_tot_price;
	}
	public void setCart_tot_price(int cart_tot_price) {
		this.cart_tot_price = cart_tot_price;
	}
	public String getCart_product_size() {
		return cart_product_size;
	}
	public void setCart_product_size(String cart_product_size) {
		this.cart_product_size = cart_product_size;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	@Override
	public String toString() {
		return "Cart [cart_no=" + cart_no + ", cart_qty=" + cart_qty + ", cart_tot_price=" + cart_tot_price
				+ ", cart_product_size=" + cart_product_size + ", cart_product_color=" 
				+ ", member_id=" + member_id + ", product_no=" + product_no + ", product_name=" + product_name + ","
						+ " product_image_1=" + product_image_1 + "]";
	}
	
}
