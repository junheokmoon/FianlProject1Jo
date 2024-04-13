package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.InquiryDTO;
import xyz.withy.service.InquiryService;

@Controller
@RequestMapping("/inquiry")
@RequiredArgsConstructor
public class InquiryController {
	private final InquiryService inquiryService;	
	
	
	@RequestMapping(value = "/inquiryWrite" , method = RequestMethod.GET)
	public String inquiryWrite() {
		return "inquiry/inquiryWrite";
	}
	
	
	@PostMapping("/inquiryWrite")
	public String inquiryWrite(@ModelAttribute InquiryDTO inquiry) {
		
		inquiryService.addInquiry(inquiry);		
		return "redirect:/mypage/mypageInquiry"; 
	} 
	
	/*
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String inquiryWrite() { 
		
		return "inquiry/inquiryWrite";
	}
	
	
	@RequestMapping(value = "/inquiryWrite", method = RequestMethod.POST)
	 public String inquiryWrite(@RequestBody InquiryDTO inquiry) { 
		inquiryService.addInquiry(null);
		
		return "redirect:/mypage/mypageInquiry";
	}
	*/
	
	@RequestMapping("/inquiryDetail")
	public String inquiryDetail() {
		return "/inquiry/inquiryDetail";
	}
	
	@RequestMapping("/inquiryUpdate")
	public String inquiryUpdate() {
		return "/inquiry/inquiryUpdate";
	}
}
