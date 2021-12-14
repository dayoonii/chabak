package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.Cart_Dto;

public interface CartService {
	List<Cart_Dto> selectCartList(int m_num) throws Exception;

	void insertCart(int m_num,String num) throws Exception;

	void updateCart(Cart_Dto cartVO) throws Exception;

	void deleteCart(Cart_Dto cartVO) throws Exception;

}
