package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	@RequestMapping("/mypageInfo")
	public String mypageInfo() {
		return "mypage/mypageInfo";
	}

	@RequestMapping("/mypageParty")
	public String mypageParty() {
		return "mypage/mypageParty";
	}

	@RequestMapping("/mypageInquiry")
	public String mypageInquiry() {
		return "mypage/mypageInquiry";
	}

	@RequestMapping("/withdrawal")
	public String withdrawal() {
		return "mypage/withdrawal";
	}

	@RequestMapping("/mypageReply")
	public String mypageReply() {
		return "mypage/mypageReply";
	}
}
