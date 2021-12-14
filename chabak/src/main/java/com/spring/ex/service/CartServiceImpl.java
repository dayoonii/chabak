package com.spring.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.CartDAO;
import com.spring.ex.dto.Cart_Dto;

@Service("cartServiceImpl")
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO cartDAOService;

	@Override
	public List<Cart_Dto> selectCartList(int m_num) throws Exception {
		List<Cart_Dto> list = null;
		list = cartDAOService.selectCartList(m_num);
		return list;
	}

	@Override
	public void insertCart(int m_num, String num) throws Exception {
		cartDAOService.insertCart(m_num, num);
	}

	@Override
	public void updateCart(Cart_Dto cartVO) throws Exception {
		cartDAOService.updateCart(cartVO);
	}

	@Override
	public void deleteCart(Cart_Dto cartVO) throws Exception {
		cartDAOService.deleteCart(cartVO);
	}

}
