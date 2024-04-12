package xyz.withy.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import xyz.withy.dto.UserDTO;
import xyz.withy.service.UserService;

@Controller
@RequestMapping("/login")
public class JoinController {

     @Autowired
     private UserService userService;
     
     @PostMapping("/login/join")
     public String userJoin(@ModelAttribute("user") @Valid UserDTO userDTO, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
   if (bindingResult.hasErrors()) {
      // 유효성 검사 실패 시 처리
      return "/join";
   }

   try {
      userService.joinUser(userDTO);
   } catch (Exception e) {
      // 회원가입 실패 시 처리
      redirectAttributes.addFlashAttribute("joinError", true);
      redirectAttributes.addFlashAttribute("errorMessage", "회원가입에 실패하였습니다.");
      return "redirect:/join";
   }

   // 회원가입 성공 시 처리
   redirectAttributes.addFlashAttribute("registerSuccess", true);
   return "redirect:/login";
}
}