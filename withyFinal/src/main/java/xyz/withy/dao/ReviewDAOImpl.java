package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.ReviewDTO;
import xyz.withy.mapper.ReviewMapper;

@Repository
@RequiredArgsConstructor
public class ReviewDAOImpl implements ReviewDAO{
	private final SqlSession sqlSession;

	@Override
	public int insertProgram(ReviewDTO reviewDTO) {
		return sqlSession.getMapper(ReviewMapper.class).insertProgram(reviewDTO);
	}

	@Override
	public int updateReview(ReviewDTO reviewDTO) {
		return sqlSession.getMapper(ReviewMapper.class).updateReview(reviewDTO);
	}

	@Override
	public int deleteReview(int reviewNo) {
		return sqlSession.getMapper(ReviewMapper.class).deleteReview(reviewNo);
	}

	@Override
	public ReviewDTO selectReview(int reviewNo) {
		return sqlSession.getMapper(ReviewMapper.class).selectReview(reviewNo);
	}

	@Override
	public int selectReviewCount() {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCount();
	}

	@Override
	public List<ReviewDTO> selectReviewList(Map<String, Object> map) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewList(map);
	}
	
}

