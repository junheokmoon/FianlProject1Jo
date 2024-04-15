package xyz.withy.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.ProgramDTO;
import xyz.withy.dto.ReviewDTO;
import xyz.withy.service.ProgramService;
import xyz.withy.service.ReviewService;

@Controller
@RequiredArgsConstructor
public class ReviewController {
	private final ReviewService reviewService;
	private final ProgramService programService;

	/*

	@RequestMapping("/review")
	public String review(@RequestParam(value = "programNo", required = false) Integer programNo, Model model) {
		if (programNo != null) {
			// 프로그램 상세 정보를 조회하여 모델에 추가
			ProgramDTO program = programService.getProgramByNo(programNo);
			model.addAttribute("program", program);
		}
		// 리뷰 목록을 조회하여 모델에 추가
		model.addAttribute("reviewList", reviewService.getReviewJoinList());
		return "/review/review";
	}
	*/
	
	@RequestMapping("/review")
	public String review(@RequestParam(value = "programNo", required = false) Integer programNo, Model model) {
	    if (programNo != null) {
	        // 프로그램 상세 정보 조회
	        ProgramDTO program = programService.getProgramByNo(programNo);
	        model.addAttribute("program", program);
	        
	        double averageStar = reviewService.getAverageStar(programNo);
            model.addAttribute("averageStar", averageStar);

	        // 해당 프로그램의 리뷰 목록 조회
	        List<ReviewDTO> reviews = reviewService.getReviewsByProgramNo(programNo);
	        model.addAttribute("reviewList", reviews);
	    } else {
	        // 모든 리뷰 목록 조회 (혹은 다른 처리)
	        model.addAttribute("reviewList", reviewService.getReviewJoinList());
	    } 
	    return "/review/review";
	}


}
