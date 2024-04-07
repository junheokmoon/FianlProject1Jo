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
	
//	@RequestMapping("/admin/allUser")
//	public String allUser(Model model) {
//		model.addAttribute("userList", userService.getUserNoList());
//		return "admin/all_user";
//	}
	
	@RequestMapping("/admin/allProduct")
	public String allProduct() {
		return "admin/all_product";
	}
	
	@RequestMapping("/admin/allPoint")
	public String allPoint() {
		return "admin/all_point";
	}
	
	@RequestMapping("/admin/addProduct")
	public String addProduct() {
		return "admin/add_product";
	}
	
	@RequestMapping("/admin/updateProduct")
	public String updateProduct() {
		return "admin/update_product";
	}
	
	@RequestMapping("/admin/addOtt")
	public String addOtt() {
		return "admin/add_ott";
	}
	
	@RequestMapping("/admin/allProgram")
	public String allProgram() {
		return "admin/all_program";
	}
	
	@RequestMapping("/admin/addProgram")
	public String addProgram() {
		return "admin/add_program";
	}
	
	@RequestMapping("/admin/detailProgram")
	public String detailProgram() {
		return "admin/detail_program";
	}
	
	@RequestMapping("/admin/updateProgram")
	public String updateProgram() {
		return "admin/update_program";
	}
	
	@RequestMapping("/admin/allNotice")
	public String allNotice() {
		return "admin/all_notice";
	}
	
	@RequestMapping("/admin/addNotice")
	public String addNotice() {
		return "admin/add_notice";
	}
	
	@RequestMapping("/admin/updateNotice")
	public String updateNotice() {
		return "admin/update_notice";
	}
	
	@RequestMapping("/admin/detailNotice")
	public String detailNotice() {
		return "admin/detail_notice";
	}
	
	@RequestMapping("/admin/allQuestion")
	public String allQuestion() {
		return "admin/all_question";
	}
	
	@RequestMapping("/admin/detailQuestion")
	public String detailQuestion() {
		return "admin/detail_question";
	}
	
	@RequestMapping("/admin/addAnswer")
	public String addAnswer() {
		return "admin/add_answer";
	}
	
	@RequestMapping("/admin/updateAnswer")
	public String updateAnswer() {
		return "admin/update_answer";
	}
	
	@RequestMapping("/admin/detailUser")
	public String detailUser() {
		return "admin/detail_user";
	}
	
	@RequestMapping("/admin/addPoint")
	public String addPoint() {
		return "admin/add_point";
	}
	
	@RequestMapping("/login/forgotpasswd")
	   public String forgotpasswd() {
	      return "/login/forgotpasswd";
   }
	   
    @RequestMapping("/login/register")
	   public String register() {
	      return "/login/register";
	}
	
}
