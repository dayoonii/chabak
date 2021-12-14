package com.spring.ex.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.dto.Cart_Dto;
import com.spring.ex.dto.MemberDto;
import com.spring.ex.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartServiceImpl;

	/**
	 * 장바구니 조회
	 */

	@RequestMapping(value = "/cartList.do")
	public String cartList(Model model, HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("login_result");
		int m_num = memberDto.getM_num();

		String num = "";
		if (null != request.getParameter("num")) {
			num = (String) request.getParameter("num");

			cartServiceImpl.insertCart(m_num, num);
		}

		List<Cart_Dto> list = cartServiceImpl.selectCartList(m_num);
		
		model.addAttribute("m_num", m_num);
		model.addAttribute("list", list);

		return "cart/cartList";
	}
	
	@RequestMapping(value = "/cartDelete.ing")
	@ResponseBody
	public String cartDelete(@ModelAttribute("CartVO") Cart_Dto Cart_Dto, Model model, HttpServletRequest request) throws Exception {
		System.out.println(Cart_Dto);
		cartServiceImpl.deleteCart(Cart_Dto);
		return "Y";
	}

}
