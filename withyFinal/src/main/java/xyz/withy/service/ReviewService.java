package xyz.withy.service;

import java.util.Map;

import xyz.withy.dto.ReviewDTO;

public interface ReviewService {
	void addReview(ReviewDTO reviewDTO);
	void modifyReview(ReviewDTO reviewDTO);
	void removeReview(int reviewNo);
	ReviewDTO getProgram(int reviewNo);
	Map<String, Object> getReviewList(int pageNum);

}
