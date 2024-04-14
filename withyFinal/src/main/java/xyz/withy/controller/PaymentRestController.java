package xyz.withy.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.TicketDTO;
import xyz.withy.dto.UserDTO;
import xyz.withy.service.PaymentService;
import xyz.withy.service.TicketService;
import xyz.withy.service.UserService;

@RestController
@RequestMapping("/payment")
@RequiredArgsConstructor
public class PaymentRestController {
	
	private final PaymentService paymentService;
	private final TicketService ticketService;
	private final UserService userService;
	
	@GetMapping("/user_info")
	public UserDTO userinfo(@RequestParam(defaultValue = "8")int userNo) {
		return userService.getUserByNo(userNo);
		
	}
	
}
