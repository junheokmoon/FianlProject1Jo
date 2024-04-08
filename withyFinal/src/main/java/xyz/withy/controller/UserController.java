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
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/allUser")
	public String allUser(Model model) {
		model.addAttribute("userList", userService.getUserJoindateList());
		return "admin/all_user";
	}
	
}