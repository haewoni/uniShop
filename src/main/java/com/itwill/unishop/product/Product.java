package com.itwill.unishop.product;

public class Product {
	private String product_no;
	private String product_name;
	private String product_desc;
	private int product_price;
	private String product_L_Div;
	private String product_M_Div;
	private String product_S_Div;
	private String product_Image_1;
	private String product_Image_2;
	
	public Product() {
		
	}
	public Product(String product_no, String product_name, String product_desc, int product_price, String product_L_Div,
			String product_M_Div, String product_S_Div, String product_Image_1, String product_Image_2) {
		super();
		this.product_no = product_no;
		this.product_name = product_name;
		this.product_desc = product_desc;
		this.product_price = product_price;
		this.product_L_Div = product_L_Div;
		this.product_M_Div = product_M_Div;
		this.product_S_Div = product_S_Div;
		this.product_Image_1 = product_Image_1;
		this.product_Image_2 = product_Image_2;
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
	public String getProduct_L_Div() {
		return product_L_Div;
	}
	public void setProduct_L_Div(String product_L_Div) {
		this.product_L_Div = product_L_Div;
	}
	public String getProduct_M_Div() {
		return product_M_Div;
	}
	public void setProduct_M_Div(String product_M_Div) {
		this.product_M_Div = product_M_Div;
	}
	public String getProduct_S_Div() {
		return product_S_Div;
	}
	public void setProduct_S_Div(String product_S_Div) {
		this.product_S_Div = product_S_Div;
	}
	public String getProduct_Image_1() {
		return product_Image_1;
	}
	public void setProduct_Image_1(String product_Image_1) {
		this.product_Image_1 = product_Image_1;
	}
	public String getProduct_Image_2() {
		return product_Image_2;
	}
	public void setProduct_Image_2(String product_Image_2) {
		this.product_Image_2 = product_Image_2;
	}
	@Override
	public String toString() {
		return "Product [product_no=" + product_no + ", product_name=" + product_name + ", product_desc=" + product_desc
				+ ", product_price=" + product_price + ", product_L_Div=" + product_L_Div + ", product_M_Div="
				+ product_M_Div + ", product_S_Div=" + product_S_Div + ", product_Image_1=" + product_Image_1
				+ ", product_Image_2=" + product_Image_2 + "]";
	}
	
}
