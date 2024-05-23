package xyz.withy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.UserDTO;
import xyz.withy.exception.LoginAuthFailException;
import xyz.withy.exception.UserinfoNotFoundException;
import xyz.withy.service.UserService;

@Controller
@RequestMapping("/login")
@RequiredArgsConstructor
public class JoinController {
    private final UserService userService;
   
    @GetMapping("/join")
    public String join() {
        return "login/join";
    }

    @PostMapping("/join")
    public String join(@ModelAttribute UserDTO userdto) {
        userService.addUser(userdto);
        return "redirect:/login/login";
    }
    
   
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login/login";
    }
   
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("user") UserDTO userDTO, HttpSession session, Model model) {
        try {
            UserDTO authUser = userService.loginAuth(userDTO);
            session.setAttribute("loginUser", authUser);
            return "redirect:/"; // 리다이렉트 경로 수정
        } catch (LoginAuthFailException e) {
            model.addAttribute("errorMessage", e.getMessage());
            return "login/login";
        }
    }
    
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
   
    @RequestMapping("/view")
    public String view(@RequestParam String userid, Model model) {
        model.addAttribute("userinfo", userService.getUserinfo(userid));
        return "login/user_view";
    }
   
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modify(@RequestParam String userid, Model model) {
        model.addAttribute("user", userService.getUserinfo(userid));
        return "login/user_modify";
    }

    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String modify(@ModelAttribute UserDTO userdto, HttpSession session) {
        userService.modifyUser(userdto);
        
        UserDTO loginUserinfo = (UserDTO)session.getAttribute("loginUser");
        if(loginUserinfo.getUserId().equals(userdto.getUserId())) {
            session.setAttribute("loginUser", userService.getUserinfo(userdto.getUserId()));
        }
        
        return "redirect:/login/view?userid=" + userdto.getUserId();
    }
    
    @PostMapping("/checkUserId")
    @ResponseBody
    public String checkUserId(@RequestParam("userId") String userId) {
        try {
            UserDTO userinfo = userService.getUserinfo(userId);
            if (userinfo != null) {
                return "duplicate";
            } else {
                return "available";
            }
        } catch (UserinfoNotFoundException e) {
            return "available";
        }
    }
    
    @RequestMapping("/remove")
    public String remove(@RequestParam String userid, HttpSession session) {
        UserDTO loginUserinfo = (UserDTO)session.getAttribute("loginUser");

        userService.removeUser(userid);
        
        if(loginUserinfo.getUserId().equals(userid)) {
            return "redirect:/login/logout";
        }
        
        return "redirect:/login/list";
    }
}