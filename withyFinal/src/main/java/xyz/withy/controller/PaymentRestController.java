package xyz.withy.controller;


import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.PaymentDTO;
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
	
	@PostMapping("/")
	public String pay(@RequestBody PaymentDTO payment, HttpSession session, Model model) {
		
		
		paymentService.addPayment(payment);
		
		return "ok";
	}
	
	
}
