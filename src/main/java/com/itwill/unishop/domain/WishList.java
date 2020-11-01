package com.itwill.unishop.domain;

import java.util.List;

public class WishList {
	private int wish_no;
	private String member_id;
	private String product_no;
	private List<Product> productList;
	
	public WishList() {
		
	}
	public WishList(int wish_no, String member_id, String product_no, List<Product> productList) {
		super();
		this.wish_no = wish_no;
		this.member_id = member_id;
		this.product_no = product_no;
		this.productList = productList;
	}
	public int getWish_no() {
		return wish_no;
	}
	public void setWish_no(int wish_no) {
		this.wish_no = wish_no;
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
	public List<Product> getProductList() {
		return productList;
	}
	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}
	@Override
	public String toString() {
		return "WishList [wish_no=" + wish_no + ", member_id=" + member_id + ", product_no=" + product_no
				+ ", productList=" + productList + "]";
	}
	
}
