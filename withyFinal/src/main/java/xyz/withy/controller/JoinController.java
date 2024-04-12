package xyz.withy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import xyz.withy.dto.UserDTO;
import xyz.withy.service.UserService;

@Controller
@RequestMapping("/login")
public class JoinController {

     @Autowired
     private UserService userService;
     
     @PostMapping("/checkUserId")
     @ResponseBody
     public String checkUserId(@RequestParam("userId") String userId) {
         UserDTO user=userService.getUserinfo(userId);
         if (user==null) {
             return "success";
         } else {
             return "fail";
         }
     }
}