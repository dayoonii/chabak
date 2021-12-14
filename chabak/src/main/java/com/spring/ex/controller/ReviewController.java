package com.spring.ex.controller;

import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.dto.ReviewDto;
import com.spring.ex.service.BoardService;
import com.spring.ex.service.CommunityBoardCommentServiceImpl;
import com.spring.ex.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
    private ReviewService reviewServiceImpl;
	/*
    @Autowired
    private CommunityBoardCommentServiceImpl commentSer;
    */
    /**
     * 게시판 조회
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/reviewList.do")
    public String boardList(@ModelAttribute("reviewVO") ReviewDto reviewVO, Model model) throws Exception{
                
        List<ReviewDto> list = reviewServiceImpl.selectReviewList(reviewVO);
        
        model.addAttribute("list", list);
        
        return "Review/reviewList";
    }
    
    
    /**
     * 글쓰기 폼
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/RwriteForm.do")
    public String writeReviewdForm() throws Exception{
        
        return "Review/Review_writeForm";
    }
    
    /**
     * 게시글 등록
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */

	/*
	 * public String rwrite(@ModelAttribute("reviewVO") ReviewDto reviewVO, Model
	 * model) throws Exception{ reviewServiceImpl.insertReview(reviewVO); return
	 * "redirect:/reviewList.do"; }
	 * 
	 */
    
    @RequestMapping(value="/Rwrite.do")
    public String write(@RequestParam("file") MultipartFile[] uploadFile, @ModelAttribute("reviewVO") ReviewDto reviewVO) throws Exception{
    	System.out.println(reviewVO);
    	String base64 = "";
    	for (MultipartFile multipartFile : uploadFile) {
    		byte[] b = multipartFile.getBytes();
    		base64 = Base64.getEncoder().encodeToString(b);
		}
    	reviewVO.setRe_Img(base64);
        reviewServiceImpl.insertReview(reviewVO);
        return "redirect:/reviewList.do";
    }
    
    
    
    
    
    
    
    
    /**
     * 게시글 조회
     * @param boardVO
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/RviewContent.do")
    public String rviewForm(@ModelAttribute("reviewVO") ReviewDto reviewVO, Model model, HttpServletRequest request) throws Exception{
        
    	request.setCharacterEncoding("UTF-8");
        int re_num = Integer.parseInt(request.getParameter("re_num"));
        reviewVO.setRe_num(re_num);
        
        ReviewDto resultVO = reviewServiceImpl.selectReviewByCode(reviewVO);
        //community_board_comment_Dto commentVO = new community_board_comment_Dto();
        //commentVO.setCb_num(cb_num);
        //List<community_board_comment_Dto> commList = commentSer.commentList(cb_num);
        //System.out.println("댓글 갯수:"+commList.size());
        model.addAttribute("result", resultVO);
        //model.addAttribute("comment", commList);
       
        //System.out.println(commList);
        return "Review/Review_viewForm";
    }
    
    /**
     * 게시글 수정
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/updatereview.do", method = RequestMethod.POST)
    public String updateReview(HttpServletRequest request,@ModelAttribute("reviewVO") ReviewDto reviewVO, Model model) throws Exception{
        
        try{
            reviewServiceImpl.updateReview(reviewVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/reviewList.do";
        
    }
    
    /**
     * 게시글 삭제
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/deletereview.do")
    public String deleteReview(HttpServletRequest request, @ModelAttribute("reviewVO") ReviewDto reviewVO, Model model) throws Exception{
        
        try{
        	System.out.println(reviewVO);
            reviewServiceImpl.deleteReview(reviewVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/reviewList.do";
        
    }
  
	/*
	 * public void dd(HttpServletRequest request) { MemberDto user = (MemberDto)
	 * request.getSession().getAttribute("userData"); }
	 */
}
