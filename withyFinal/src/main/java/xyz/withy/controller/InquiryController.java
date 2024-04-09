package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/inquiry")

public class InquiryController {
	@RequestMapping("/inquiryWrite")
	public String inquiryWrite() {
		return "/inquiry/inquiryWrite";
	}
	
	@RequestMapping("/inquiryDetail")
	public String inquiryDetail() {
		return "/inquiry/inquiryDetail";
	}
	
	@RequestMapping("/inquiryUpdate")
	public String inquiryUpdate() {
		return "/inquiry/inquiryUpdate";
	}
}
