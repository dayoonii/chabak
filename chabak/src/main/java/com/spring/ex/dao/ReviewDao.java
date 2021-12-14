package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.ReviewDto;

public interface ReviewDao {

    /**
     * 게시물 리스트 조회
     */
    List<ReviewDto> selectReviewList(ReviewDto reviewVO) throws Exception;
 
    /**
     * 게시물 등록
     */
    void insertReview(ReviewDto reviewVO) throws Exception;
 
    /**
     * 게시물 수정
     */
    void updateReview(ReviewDto reviewVO) throws Exception;
 
    /**
     * 게시물 삭제
     */
    void deleteReview(ReviewDto reviewVO) throws Exception;
 
    /**
     * 게시물 조회
     */
    ReviewDto selectReviewByCode(ReviewDto reviewVO) throws Exception;
    

    ReviewDto selectReviewMember(ReviewDto reviewVO) throws Exception;
 
}
