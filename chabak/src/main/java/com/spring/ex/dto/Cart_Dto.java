package com.spring.ex.dto;

import java.sql.Date;

//cart2 (vanlife3)
public class Cart_Dto {
	private int cart_id;
	private int m_num;
	private int mar_num;
	private String mar_name;
	private int mar_price;
	private int cart_price;
	private int cart_count;
	private Date addDate;
	private String mar_Img;
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public int getMar_num() {
		return mar_num;
	}
	public void setMar_num(int mar_num) {
		this.mar_num = mar_num;
	}
	public String getMar_name() {
		return mar_name;
	}
	public void setMar_name(String mar_name) {
		this.mar_name = mar_name;
	}
	public int getMar_price() {
		return mar_price;
	}
	public void setMar_price(int mar_price) {
		this.mar_price = mar_price;
	}
	public int getCart_price() {
		return cart_price;
	}
	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}
	public int getCart_count() {
		return cart_count;
	}
	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public String getMar_Img() {
		return mar_Img;
	}
	public void setMar_Img(String mar_Img) {
		this.mar_Img = mar_Img;
	}
	@Override
	public String toString() {
		return "Cart_Dto [cart_id=" + cart_id + ", m_num=" + m_num + ", mar_num=" + mar_num + ", mar_name=" + mar_name
				+ ", mar_price=" + mar_price + ", cart_price=" + cart_price + ", cart_count=" + cart_count
				+ ", addDate=" + addDate + ", mar_Img=" + mar_Img + "]";
	}
	
	
	
}
