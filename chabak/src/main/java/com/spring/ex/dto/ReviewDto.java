package com.spring.ex.dto;

import java.sql.Date;

public class ReviewDto {
	private int re_num;
	private String re_title;
	private String re_memo;
	private String re_author;
	private Date re_regdate;
	private String cbc_num;
	private String re_Img;
	public String getCb_num() {
		return cb_num;
	}
	public void setCb_num(String cb_num) {
		this.cb_num = cb_num;
	}
	public String getRe_Img() {
		return re_Img;
	}
	public void setRe_Img(String re_Img) {
		this.re_Img = re_Img;
	}
	private String cb_num;
	public String getCbc_num() {
		return cbc_num;
	}
	public void setCbc_num(String cbc_num) {
		this.cbc_num = cbc_num;
	}
	public int getRe_num() {
		return re_num;
	}
	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}
	public String getRe_title() {
		return re_title;
	}
	public void setRe_title(String re_title) {
		this.re_title = re_title;
	}
	public String getRe_memo() {
		return re_memo;
	}
	public void setRe_memo(String re_memo) {
		this.re_memo = re_memo;
	}
	public String getRe_author() {
		return re_author;
	}
	public void setRe_author(String re_author) {
		this.re_author = re_author;
	}
	public Date getRe_regdate() {
		return re_regdate;
	}
	public void setRe_regdate(Date re_regdate) {
		this.re_regdate = re_regdate;
	}
	@Override
	public String toString() {
		return "ReviewDto [re_num=" + re_num + ", re_title=" + re_title + ", re_memo=" + re_memo + ", re_author="
				+ re_author + ", re_regdate=" + re_regdate + ", cbc_num=" + cbc_num + ", re_Img=" + re_Img + ", cb_num="
				+ cb_num + "]";
	}
	
	
}
