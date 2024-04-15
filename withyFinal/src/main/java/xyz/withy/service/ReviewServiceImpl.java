package xyz.withy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.ReviewDAO;
import xyz.withy.dto.ReviewDTO;

@Service
@RequiredArgsConstructor
public class ReviewServiceImpl implements ReviewService {
	private final ReviewDAO reviewDAO;

	@Override
	public void addReview(ReviewDTO reviewDTO) {
		reviewDAO.insertProgram(reviewDTO);		
	}

	@Override
	public void modifyReview(ReviewDTO reviewDTO) {
		reviewDAO.updateReview(reviewDTO);		
	}

	@Override
	public void removeReview(int reviewNo) {
		reviewDAO.deleteReview(reviewNo);
		
	}

	@Override
	public List<ReviewDTO> getReviewJoinList() {
		return reviewDAO.selectReveiwJoinList();
	}

	@Override
	public List<ReviewDTO> getReviewsByProgramNo(Integer programNo) {
		return reviewDAO.selectReviewsByProgramNo(programNo);
	}

	@Override
	public double getAverageStar(Integer programNo) {
		return reviewDAO.selectAverageStar(programNo);
	}


}
	

