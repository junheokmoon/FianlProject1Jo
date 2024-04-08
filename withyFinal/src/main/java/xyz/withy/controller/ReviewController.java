package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import xyz.withy.service.ReviewService;

@Controller
@RequiredArgsConstructor
public class ReviewController {
	private final ReviewService reviewService;

	@RequestMapping("/review")
	public String review(Model model) {
		//model.addAttribute("reviewList",reviewService.getReviewList();
		return "/review/review";
	}
	
}


