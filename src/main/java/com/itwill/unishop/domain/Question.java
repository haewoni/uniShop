package com.itwill.unishop.domain;

import java.util.Date;

public class Question {
	private int question_no;
	private String question_title;
	private String question_category;
	private Date question_date;
	private String question_status;
	private String question_content;
	private String member_id;
	
	public Question() {
		
	}
	public Question(int question_no, String question_title, String question_category, Date question_date,
			String question_status, String question_content, String member_id) {
		super();
		this.question_no = question_no;
		this.question_title = question_title;
		this.question_category = question_category;
		this.question_date = question_date;
		this.question_status = question_status;
		this.question_content = question_content;
		this.member_id = member_id;
	}
	public int getQuestion_no() {
		return question_no;
	}
	public void setQuestion_no(int question_no) {
		this.question_no = question_no;
	}
	public String getQuestion_title() {
		return question_title;
	}
	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getQuestion_category() {
		return question_category;
	}
	public void setQuestion_category(String question_category) {
		this.question_category = question_category;
	}
	public Date getQuestion_date() {
		return question_date;
	}
	public void setQuestion_date(Date question_date) {
		this.question_date = question_date;
	}
	public String getQuestion_status() {
		return question_status;
	}
	public void setQuestion_status(String question_status) {
		this.question_status = question_status;
	}
	public String getQuestion_content() {
		return question_content;
	}
	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "Question [question_no=" + question_no + ", question_title=" + question_title + ", question_category="
				+ question_category + ", question_date=" + question_date + ", question_status=" + question_status
				+ ", question_content=" + question_content + ", member_id=" + member_id + "]";
	}
	
}
