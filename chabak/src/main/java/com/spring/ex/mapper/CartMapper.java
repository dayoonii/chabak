package com.spring.ex.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.ex.dto.Cart_Dto;


public interface CartMapper {
	 List<Cart_Dto> selectCartList(int m_num) throws Exception;
	 public void insertCart(Map<String, Object> map) throws Exception;
	 public void updateCart(Cart_Dto cartVO) throws Exception;
	 public void deleteCart(Cart_Dto cartVO) throws Exception;
	 public Cart_Dto selectCartByCode(Cart_Dto cartVO) throws Exception;
     public Cart_Dto selectCart(Cart_Dto cartVO) throws Exception;
}
