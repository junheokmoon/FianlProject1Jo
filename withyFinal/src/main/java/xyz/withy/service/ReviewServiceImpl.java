package xyz.withy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.ReviewDAO;
import xyz.withy.dto.ReviewDTO;
import xyz.withy.util.Pager;

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
	public ReviewDTO getProgram(int reviewNo) {
		ReviewDTO reviewDTO = reviewDAO.selectReview(reviewNo);
		if (reviewDTO == null) {
			throw new RuntimeException("게시글을 찾을 수 없습니다.");
		}
		return reviewDTO;
	}

	@Override
	public Map<String, Object> getReviewList(int pageNum) {
		// FILE_BOARD 테이블에 저장된 모든 행(게시글)의 갯수를 반환받아 저장
		int totalSize = reviewDAO.selectReviewCount();
		int pageSize = 5;// 하나의 페이지에 출력될 게시글의 갯수를 저장
		int blockSize = 5;// 하나의 블럭에 출력될 페이지 번호의 갯수를 저장

		Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);

		// FileBoardDAO 클래스의 selectFileBoardList() 메소드를 호출하기 위해 매개변수에 전달될 Map 객체 생성
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		List<ReviewDTO> reviewList = reviewDAO.selectReviewList(pageMap);

		// 요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
		// => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("reviewList", reviewList);

		return resultMap;
	}

}

