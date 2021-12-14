package com.spring.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.ReviewDao;
import com.spring.ex.dto.ReviewDto;


@Service("reviewServiceImpl")
public class ReviewServiceImpl implements ReviewService{
	@Autowired
    private ReviewDao reviewDAOService;
    
    @Override
    public List<ReviewDto> selectReviewList(ReviewDto reviewVO) throws Exception {
        List<ReviewDto> list = null;
        list = reviewDAOService.selectReviewList(reviewVO);
        return list;
    }
 
    @Override
    public void insertReview(ReviewDto reviewVO) throws Exception {
	    java.util.Date date1 = new java.util.Date();
	    java.sql.Date date2 = new java.sql.Date(date1.getTime());
		reviewVO.setRe_regdate(date2);
        reviewDAOService.insertReview(reviewVO);
    }
 
    @Override
    public void updateReview(ReviewDto reviewVO) throws Exception {
        reviewDAOService.updateReview(reviewVO);
    }
 
    @Override
    public void deleteReview(ReviewDto reviewVO) throws Exception {
        reviewDAOService.deleteReview(reviewVO);
    }
 
    @Override
    public ReviewDto selectReviewByCode(ReviewDto reviewVO) throws Exception {
        
    	ReviewDto resultVO = reviewDAOService.selectReviewByCode(reviewVO);
        
        return resultVO; 
    }
    
    @Override
	public ReviewDto selectReviewMember(ReviewDto reviewVO) throws Exception {
		 
    	ReviewDto resultVO = reviewDAOService.selectReviewMember(reviewVO);
        
        return resultVO; 
	}
}
