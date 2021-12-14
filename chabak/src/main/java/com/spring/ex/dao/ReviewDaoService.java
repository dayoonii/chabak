package com.spring.ex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.ReviewDto;
import com.spring.ex.mapper.ReviewMapper;

@Service("reviewDAOService")
public class ReviewDaoService implements ReviewDao{
	@Autowired
    private SqlSession sqlSession;
    
    public List<ReviewDto> selectReviewList(ReviewDto reviewVO) throws Exception {
        ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
        return mapper.selectReviewList(reviewVO);
    }
 
    public void insertReview(ReviewDto reviewVO) throws Exception {
	    java.util.Date date1 = new java.util.Date();
	    java.sql.Date date2 = new java.sql.Date(date1.getTime());
	    reviewVO.setRe_regdate(date2);
        ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
        mapper.insertReview(reviewVO);
    }
 
    public void updateReview(ReviewDto reviewVO) throws Exception {
    	System.out.println(reviewVO);
        ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
        mapper.updateReview(reviewVO);
    }
 
    public void deleteReview(ReviewDto reviewVO) throws Exception {
        ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
        mapper.deleteReview(reviewVO);
    }
  
    @Override
    public ReviewDto selectReviewByCode(ReviewDto reviewVO) throws Exception {
        ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
        return mapper.selectReviewByCode(reviewVO);
    }

	@Override
	public ReviewDto selectReviewMember(ReviewDto reviewVO) throws Exception {
		return null;
	}
}
