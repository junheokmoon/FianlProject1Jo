package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	//private final UserService userService;

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
	
	@RequestMapping("/partyMember2")
	public String partyMember2() {
		return "/party/partyMemberpayment";
	}
	
	@RequestMapping("/partyMember3")
	public String partyFinish() {
		return "/party/partyMemberFinish";
	}
	

	@RequestMapping("/partyLeader")
	public String partyLeader() {
		return "/party/partyLeader";
	}
	
	@RequestMapping("/partyLeader1")
	public String partyCheck() {
		return "/party/partyCheck";
	}
	
	@RequestMapping("/partyLeader2")
	public String partyLeaderCreateRoom() {
		return "/party/partyLeaderCreateRoom2";
	}
	
	@RequestMapping("/partyLeader3")
	public String partyLeaderFinish() {
		return "/party/partyLeaderFinish";
	}
	
	@RequestMapping("/partyLeader4")
	public String partyLeaderRoom() {
		return "/party/partyRoom";
	}
	/*
	폴더를 만들어서 옮겼습니다
	@RequestMapping("/review")
	public String review() {
		return "/review/review";
	}

	@RequestMapping("/program")
	public String program() {
		return "/review/program";
	}
	*/

	@RequestMapping("/guide")
	public String guide() {
		return "/guide/guide";
	}

	@RequestMapping("/login")
	public String login() {
		return "/login/login";
	}

	@RequestMapping("/payment")
	public String payment() {
		return "/payment/paymentMain";
	}
	@RequestMapping("/product")
	public String product() {
		return "/product/productMain";
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

	@RequestMapping("/login/forgotpasswd")
	   public String forgotpasswd() {
	      return "/login/forgotpasswd";
   }

    @RequestMapping("/login/join")
	   public String join() {
	      return "/login/join";
	}
    
    @RequestMapping("/login/forgotid")
	   public String fotgotid() {
	      return "/login/forgotid";
	}
}
