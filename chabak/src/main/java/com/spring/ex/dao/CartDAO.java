package com.spring.ex.dao;

import java.util.List;
import java.util.Map;

import com.spring.ex.dto.Cart_Dto;

public interface CartDAO {

	List<Cart_Dto> selectCartList(int m_num) throws Exception;

	void insertCart(int m_num,String num) throws Exception;

	void updateCart(Cart_Dto cartVO) throws Exception;

	void deleteCart(Cart_Dto cartVO) throws Exception;

}
