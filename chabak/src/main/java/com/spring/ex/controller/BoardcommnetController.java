package com.spring.ex.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.dto.MemberDto;
import com.spring.ex.dto.community_board_comment_Dto;
import com.spring.ex.service.CommunityBoardCommentServiceImpl;

@Controller
@RequestMapping(value = "/board")
public class BoardcommnetController {

	@Autowired
	CommunityBoardCommentServiceImpl commentSer;

	@RequestMapping(value = "/commentInsert.ing", method = RequestMethod.POST)
	public String commentInsert_ing(HttpServletRequest request, HttpServletResponse response,
			community_board_comment_Dto commentDto) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		
		int m_num = 0;

		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("login_result");
		m_num = memberDto.getM_num();
		
		//m_num = 47;

		// PrintWriter out = response.getWriter();
		commentDto.setCbc_m_num(String.valueOf(m_num));
		try {
			int res = commentSer.commentInsert(commentDto);
			if (res > 0) {
				// out.println("Y");
			} else {
				// out.println("N");
			}
		} catch (Exception e) {
			e.printStackTrace();
			// out.println("E");
		} finally {
			// out.flush();
		}

		return "redirect:/BviewContent.do?cb_num=" + commentDto.getCb_num();
	}

	// 댓글 수정
	@RequestMapping("/commentUpdate.do")
	public String modify(HttpServletRequest request, HttpServletResponse response,
			community_board_comment_Dto commentDto) throws IOException {
		response.setContentType("text/html; charset=UTF-8");

		int cb_num = 0;
		int cbc_num = 0;

		int m_num = 0;
	HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("login_result");
		m_num = memberDto.getM_num();
		
		cbc_num = Integer.parseInt(request.getParameter("cbc_num"));
		cb_num = Integer.parseInt(request.getParameter("cb_num"));
		String memo = (String) request.getParameter("cbc_memo");
		// PrintWriter out = response.getWriter();
		//commentDto.setCbc_m_num(String.valueOf(cbc_num));
		commentDto.setCbc_num(cbc_num);
		commentDto.setCbc_memo(memo);
		try {
			int res = commentSer.commentUpdate(commentDto);
			if (res > 0) {
				// out.println("Y");
			} else {
				// out.println("N");
			}
		} catch (Exception e) {
			e.printStackTrace();
			// out.println("E");
		} finally {
			// out.flush();
		}

		return "redirect:/BviewContent.do?cb_num=" + commentDto.getCb_num();

	}

	// 댓글 삭제

	@RequestMapping("/commentDelete.do")
	public String delete(HttpServletRequest request, HttpServletResponse response,
			community_board_comment_Dto commentDto) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
System.out.println(commentDto);
		int m_num = 0;
		HttpSession session = request.getSession();

		MemberDto memberDto = (MemberDto) session.getAttribute("login_result");
		System.out.println(memberDto);
		m_num = memberDto.getM_num();

		commentDto.setM_num(m_num);
		// PrintWriter out = response.getWriter();
		try {
			int res = commentSer.commentDelete(commentDto);
			if (res > 0) {
				// out.println("Y");
			} else {
				// out.println("N");
			}
		} catch (Exception e) {
			e.printStackTrace();
			// out.println("E");
		} finally {
			// out.flush();
		}

		return "redirect:/BviewContent.do?cb_num=" + commentDto.getCb_num();

	}

}
