package com.itwill.unishop.domain;

public class Jumun_Detail {
	private int jumun_d_no;
	private String jumun_d_product_name;
	private String jumun_d_product_size;
	private String jumun_d_product_color;
	private int jumun_d_product_price;
	private String jumun_d_product_qty;
	private int jumun_no;
	private String product_no;
	
	public Jumun_Detail() {

	}
	public Jumun_Detail(int jumun_d_no, String jumun_d_product_name, String jumun_d_product_size,
			String jumun_d_product_color, int jumun_d_product_price, String jumun_d_product_qty, int jumun_no,
			String product_no) {
		super();
		this.jumun_d_no = jumun_d_no;
		this.jumun_d_product_name = jumun_d_product_name;
		this.jumun_d_product_size = jumun_d_product_size;
		this.jumun_d_product_color = jumun_d_product_color;
		this.jumun_d_product_price = jumun_d_product_price;
		this.jumun_d_product_qty = jumun_d_product_qty;
		this.jumun_no = jumun_no;
		this.product_no = product_no;
	}
	public int getJumun_d_no() {
		return jumun_d_no;
	}
	public void setJumun_d_no(int jumun_d_no) {
		this.jumun_d_no = jumun_d_no;
	}
	public String getJumun_d_product_name() {
		return jumun_d_product_name;
	}
	public void setJumun_d_product_name(String jumun_d_product_name) {
		this.jumun_d_product_name = jumun_d_product_name;
	}
	public String getJumun_d_product_size() {
		return jumun_d_product_size;
	}
	public void setJumun_d_product_size(String jumun_d_product_size) {
		this.jumun_d_product_size = jumun_d_product_size;
	}
	public String getJumun_d_product_color() {
		return jumun_d_product_color;
	}
	public void setJumun_d_product_color(String jumun_d_product_color) {
		this.jumun_d_product_color = jumun_d_product_color;
	}
	public int getJumun_d_product_price() {
		return jumun_d_product_price;
	}
	public void setJumun_d_product_price(int jumun_d_product_price) {
		this.jumun_d_product_price = jumun_d_product_price;
	}
	public String getJumun_d_product_qty() {
		return jumun_d_product_qty;
	}
	public void setJumun_d_product_qty(String jumun_d_product_qty) {
		this.jumun_d_product_qty = jumun_d_product_qty;
	}
	public int getJumun_no() {
		return jumun_no;
	}
	public void setJumun_no(int jumun_no) {
		this.jumun_no = jumun_no;
	}
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	@Override
	public String toString() {
		return "Jumun_Detail [jumun_d_no=" + jumun_d_no + ", jumun_d_product_name=" + jumun_d_product_name
				+ ", jumun_d_product_size=" + jumun_d_product_size + ", jumun_d_product_color=" + jumun_d_product_color
				+ ", jumun_d_product_price=" + jumun_d_product_price + ", jumun_d_product_qty=" + jumun_d_product_qty
				+ ", jumun_no=" + jumun_no + ", product_no=" + product_no + "]";
	}
	
}
