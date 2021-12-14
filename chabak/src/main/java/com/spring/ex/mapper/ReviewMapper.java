package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.dto.ReviewDto;

public interface ReviewMapper {
	 // 게시물 리스트 조회
    public List<ReviewDto> selectReviewList(ReviewDto reivewVO) throws Exception;
    
    // 게시물 등록
    public void insertReview(ReviewDto reviewVO) throws Exception;
    
    // 게시물 수정
    public void updateReview(ReviewDto reivewVO) throws Exception;
    
    // 게시물 삭제
    public void deleteReview(ReviewDto reivewVO) throws Exception;
 
    // 게시물 조회
    public ReviewDto selectReviewByCode(ReviewDto reivewVO) throws Exception;
    
    public ReviewDto selectReviewMember(ReviewDto reivewVO) throws Exception;
}
