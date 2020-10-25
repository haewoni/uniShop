package com.itwill.unishop.domain;

public class Product {
	private String product_no;
	private String product_name;
	private String product_desc;
	private int product_price;
	private String product_L_div;
	private String product_M_div;
	private String product_S_div;
	private String product_image_1;
	private String product_image_2;
	private String product_image_3;
	private String product_image_4;
	private String product_image_5;
	
	public Product() {
	}

	public Product(String product_no, String product_name, String product_desc, int product_price, String product_L_div,
			String product_M_div, String product_S_div, String product_image_1, String product_image_2,
			String product_image_3, String product_image_4, String product_image_5) {
		super();
		this.product_no = product_no;
		this.product_name = product_name;
		this.product_desc = product_desc;
		this.product_price = product_price;
		this.product_L_div = product_L_div;
		this.product_M_div = product_M_div;
		this.product_S_div = product_S_div;
		this.product_image_1 = product_image_1;
		this.product_image_2 = product_image_2;
		this.product_image_3 = product_image_3;
		this.product_image_4 = product_image_4;
		this.product_image_5 = product_image_5;
	}

	public String getProduct_no() {
		return product_no;
	}

	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_desc() {
		return product_desc;
	}

	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getProduct_L_div() {
		return product_L_div;
	}

	public void setProduct_L_div(String product_L_div) {
		this.product_L_div = product_L_div;
	}

	public String getProduct_M_div() {
		return product_M_div;
	}

	public void setProduct_M_div(String product_M_div) {
		this.product_M_div = product_M_div;
	}

	public String getProduct_S_div() {
		return product_S_div;
	}

	public void setProduct_S_div(String product_S_div) {
		this.product_S_div = product_S_div;
	}

	public String getProduct_image_1() {
		return product_image_1;
	}

	public void setProduct_image_1(String product_image_1) {
		this.product_image_1 = product_image_1;
	}

	public String getProduct_image_2() {
		return product_image_2;
	}

	public void setProduct_image_2(String product_image_2) {
		this.product_image_2 = product_image_2;
	}

	public String getProduct_image_3() {
		return product_image_3;
	}

	public void setProduct_image_3(String product_image_3) {
		this.product_image_3 = product_image_3;
	}

	public String getProduct_image_4() {
		return product_image_4;
	}

	public void setProduct_image_4(String product_image_4) {
		this.product_image_4 = product_image_4;
	}

	public String getProduct_image_5() {
		return product_image_5;
	}

	public void setProduct_image_5(String product_image_5) {
		this.product_image_5 = product_image_5;
	}

	@Override
	public String toString() {
		return "Product [product_no=" + product_no + ", product_name=" + product_name + ", product_desc=" + product_desc
				+ ", product_price=" + product_price + ", product_L_div=" + product_L_div + ", product_M_div="
				+ product_M_div + ", product_S_div=" + product_S_div + ", product_image_1=" + product_image_1
				+ ", product_image_2=" + product_image_2 + ", product_image_3=" + product_image_3 + ", product_image_4="
				+ product_image_4 + ", product_image_5=" + product_image_5 + "]\n";
	}
	
	
	
	


	
	
}
	