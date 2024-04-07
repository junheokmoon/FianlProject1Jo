package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/")
	public String tiles() {
		return "main";
	}
	
	@RequestMapping("/party")
	public String party() {
		return "/party/party";
	}
	
	@RequestMapping("/partyMember")
	public String partyMember() {
		return "/party/partyMember";
	}
	
	@RequestMapping("/partyLeader")
	public String partyLeader() {
		return "/party/partyLeader";
	}
	
	@RequestMapping("/review")
	public String review() {
		return "/review/review";
	}
	
	@RequestMapping("/program")
	public String program() {
		return "/review/program";
	}
	
	@RequestMapping("/guide")
	public String guide() {
		return "/guide/guide";
	}
	
	
	@RequestMapping("/login")
	public String login() {
		return "/login/login";
	}
	
	@RequestMapping("/mypageInfo")
	public String mypageInfo() {
		return "/mypage/mypageInfo";
	}	
	
	@RequestMapping("/mypageParty")
	public String mypageParty() {
		return "/mypage/mypageParty";
	}
	
	@RequestMapping("/mypageInquiry")
	public String mypageInquiry() {
		return "/mypage/mypageInquiry";
	}
	
	@RequestMapping("/withdrawal")
	public String withdrawal() {
		return "/mypage/withdrawal";
	}
	
	@RequestMapping("/mypageReply")
	public String mypageReply() {
		return "/mypage/mypageReply";
	}	
	
	@RequestMapping("/noticeDisplay")
	public String noticeDisplay() {
		return "/mypage/noticeDisplay";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/admin/allUser")
	public String allUser() {
		return "admin/all_user";
	}
	
	@RequestMapping("/admin/allProduct")
	public String allProduct() {
		return "admin/all_product";
	}
}



