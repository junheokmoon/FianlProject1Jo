package xyz.withy.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.TicketDTO;
import xyz.withy.dto.UserDTO;
import xyz.withy.service.TicketService;
import xyz.withy.service.UserService;

@Controller	
@RequestMapping("/payment")
@RequiredArgsConstructor
public class PaymentController {

		private final TicketService ticketService;
		private final UserService userService;
		
	@RequestMapping("/")
	public String payment(@RequestParam("ticketCode")String ticketCode
			, HttpSession session, Model model ) {
		
		if(ticketCode == null || ticketCode =="") {
			return "/ticketBooth/ticketBoothMain";
		}
		session.setAttribute("userNo", 8);

		int userNo =  (Integer) session.getAttribute("userNo");
		TicketDTO ticketInfo = ticketService.getTicketInfo(ticketCode);
		UserDTO userInfo = userService.getUserByNo(userNo);
		
		model.addAttribute("ticketInfo" , ticketInfo);
		model.addAttribute("userInfo" , userInfo);
		
		return "/payment/paymentMain";
	}
	/*
	@RequestMapping("/pointComplete")
	public String paymentC(@RequestParam("ticketCode")String ticketCode
			, HttpSession session, Model model ) {
		
		if(ticketCode == null || ticketCode =="") {
			return "/ticketBooth/ticketBoothMain";
		}
		session.setAttribute("userNo", 8);
		
		int userNo =  (Integer) session.getAttribute("userNo");
		TicketDTO ticketInfo = ticketService.getTicketInfo(ticketCode);
		UserDTO userInfo = userService.getUserByNo(userNo);
		
		model.addAttribute("ticketInfo" , ticketInfo);
		model.addAttribute("userInfo" , userInfo);
		
		return "/payment/paymentMain";
	}
	*/
}
