
package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InquiryController {
	
	@PostMapping("/write")
	public String inquiryWrite() {
		//문의글 입력받기 위한 JSP 문서의 뷰이름을 반환하는 요청 처리 메소드
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
