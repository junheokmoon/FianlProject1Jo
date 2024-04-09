package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import xyz.withy.service.UserService;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class UserController {
	private final UserService userService;
	
	@RequestMapping("/")
	public String admin(Model model) {
		model.addAttribute("userJoindateList", userService.getUserJoindateList());
		//System.out.println("userService.getUserJoindateList() = " + userService.getUserJoindateList());
		return "admin";
	}
	
	@RequestMapping("/allUser")
	public String allUser(Model model) {
		model.addAttribute("userinfoList", userService.getUserinfoList());
		//System.out.println("userService.getUserinfoList() = " + userService.getUserinfoList());
		return "admin/all_user";
	}
	
}
