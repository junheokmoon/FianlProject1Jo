package xyz.withy.service;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.ReviewDTO;

public interface ReviewService {
	void addReview(ReviewDTO reviewDTO);
	void modifyReview(ReviewDTO reviewDTO);
	void removeReview(int reviewNo);
	List<ReviewDTO> getReviewJoinList();

}
