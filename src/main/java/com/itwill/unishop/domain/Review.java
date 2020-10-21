package com.itwill.unishop.domain;

public class Review {
	private int review_no;
	private String review_name;
	private String review_email;
	private String review_title;
	private int review_rating;
	private String review_content;
	private String member_id;
	private String product_no;
	
	public Review() {
		
	}
	public Review(int review_no, String review_name, String review_email, String review_title, int review_rating,
			String review_content, String member_id, String product_no) {
		super();
		this.review_no = review_no;
		this.review_name = review_name;
		this.review_email = review_email;
		this.review_title = review_title;
		this.review_rating = review_rating;
		this.review_content = review_content;
		this.member_id = member_id;
		this.product_no = product_no;
	}
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getReview_name() {
		return review_name;
	}
	public void setReview_name(String review_name) {
		this.review_name = review_name;
	}
	public String getReview_email() {
		return review_email;
	}
	public void setReview_email(String review_email) {
		this.review_email = review_email;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public int getReview_rating() {
		return review_rating;
	}
	public void setReview_rating(int review_rating) {
		this.review_rating = review_rating;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
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
		return "Review [review_no=" + review_no + ", review_name=" + review_name + ", review_email=" + review_email
				+ ", review_title=" + review_title + ", review_rating=" + review_rating + ", review_content="
				+ review_content + ", member_id=" + member_id + ", product_no=" + product_no + "]";
	}
	
}
