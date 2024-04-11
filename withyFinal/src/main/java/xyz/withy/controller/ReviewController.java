package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.ProgramDTO;
import xyz.withy.service.ProgramService;
import xyz.withy.service.ReviewService;

@Controller
@RequiredArgsConstructor
public class ReviewController {
	private final ReviewService reviewService;
	private final ProgramService programService;

	/*
	 * @RequestMapping("/review") public String review(Model model) {
	 * model.addAttribute("reviewList",reviewService.getReviewJoinList()); return
	 * "/review/review"; }
	 */

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

}
