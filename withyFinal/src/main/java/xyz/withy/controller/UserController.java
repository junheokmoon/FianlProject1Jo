package xyz.withy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import xyz.withy.service.UserService;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class UserController {
	@Autowired
	private final UserService userService;
	
	@RequestMapping("/")
	public String admin(Model model) {
		model.addAttribute("userJoindateList", userService.getUserJoindateList());
		//System.out.println("userService.getUserJoindateList() = " + userService.getUserJoindateList());
		return "admin";
	}

	/*********************** ȸ������ start ***********************/
	@RequestMapping("/allUser")
	public String allUser(Model model) {
		model.addAttribute("userList", userService.getUserList());
		return "admin/all_user";
	}

	@RequestMapping("/detailUser")
	public String detailUser(@RequestParam String userId, Model model, HttpSession session) {
		System.out.println("userService.getUserPoint(userId) = " + userService.getUserPoint(userId));
		model.addAttribute("userinfo", userService.getUserinfo(userId));
		model.addAttribute("userPoint", userService.getUserPoint(userId));
		return "admin/detail_user";
	}
	
	@RequestMapping("/allPoint")
	public String allPoint() {
		return "admin/all_point";
	}

	@RequestMapping("/addPoint")
	public String addPoint() {
		return "admin/add_point";
	}
	/**************************** ȸ������ end ****************************/
	
	/*********************** OTT(�̿��) ���� start ***********************/
	@RequestMapping("/allProduct")
	public String allProduct() {
		return "admin/all_product";
	}
	
	@RequestMapping("/updateProduct")
	public String updateProduct() {
		return "admin/update_product";
	}

	@RequestMapping("/addProduct")
	public String addProduct() {
		return "admin/add_product";
	}
	
	@RequestMapping("/addOtt")
	public String addOtt() {
		return "admin/add_ott";
	}
	/*********************** OTT(�̿��) ���� start ***********************/
	
	@RequestMapping("/allProgram")
	public String allProgram() {
		return "admin/all_program";
	}
	
	@RequestMapping("/detailProgram")
	public String detailProgram() {
		return "admin/detail_program";
	}
	
	@RequestMapping("/updateProgram")
	public String updateProgram() {
		return "admin/update_program";
	}
	
	@RequestMapping("/addProgram")
	public String addProgram() {
		return "admin/add_program";
	}
	/*********************** OTT(�̿��) ���� end ***********************/

	/*********************** �������� ���� start ***********************/
	@RequestMapping("/allNotice")
	public String allNotice() {
		return "admin/all_notice";
	}
	
	@RequestMapping("/detailNotice")
	public String detailNotice() {
		return "admin/detail_notice";
	}
	
	@RequestMapping("/updateNotice")
	public String updateNotice() {
		return "admin/update_notice";
	}

	@RequestMapping("/addNotice")
	public String addNotice() {
		return "admin/add_notice";
	}
	/*********************** �������� ���� end ***********************/
	
	/************************* ������ start *************************/
	@RequestMapping("/allQuestion")
	public String allQuestion() {
		return "admin/all_question";
	}

	@RequestMapping("/detailQuestion")
	public String detailQuestion() {
		return "admin/detail_question";
	}

	@RequestMapping("/addAnswer")
	public String addAnswer() {
		return "admin/add_answer";
	}

	@RequestMapping("/updateAnswer")
	public String updateAnswer() {
		return "admin/update_answer";
	}
	/************************* ������ end *************************/
}
