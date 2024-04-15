package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.ReviewDTO;

public interface ReviewDAO {
	int insertProgram(ReviewDTO reviewDTO);
	 int updateReview(ReviewDTO reviewDTO);
	 int deleteReview(int reviewNo);
	 ReviewDTO selectReview(int reviewNo);
	 int selectReviewCount();
	 List<ReviewDTO> selectReviewList(Map<String, Object> map);
	//List<programDTO> selectProgramList();
	 List<ReviewDTO> selectReveiwJoinList();
	 List<ReviewDTO> selectReviewsByProgramNo(Integer programNo);
	 double selectAverageStar(Integer programNo);


}
