package xyz.withy.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import xyz.withy.service.InquiryService;
import xyz.withy.service.MypageService;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {
	private final InquiryService inquiryService;
	private final MypageService mypageService;
	
	//회원정보
	@RequestMapping("/mypageInfo")
	public String mypageInfo() {
		return "mypage/mypageInfo";
	}
	
	//나의 파티 
	@RequestMapping("/mypageParty")
	public String mypageParty() {
		return "mypage/mypageParty";
	}
	
	//나의 1:1 문의 목록
	@RequestMapping(value = "/mypageInquiry")
	public String inquiryList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> map=inquiryService.getInquiryList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("inquiryList", map.get("inquiryList"));
		
		return "mypage/mypageInquiry";
	}

	// 회원탈퇴
	@RequestMapping(value = "/withdrawal")
	public String withdrawal(HttpSession session) {
		Integer loginUserNo = (Integer)session.getAttribute("UserNo");
		
		if (loginUserNo != null) {
			mypageService.withdrawal(loginUserNo);
			session.invalidate();
	    }
		return "/";
	}
	
	// 리뷰목록...? 굳이? 없어도 될듯함
	@RequestMapping("/mypageReply")
	public String mypageReply() {
		return "mypage/mypageReply";
	}
}
