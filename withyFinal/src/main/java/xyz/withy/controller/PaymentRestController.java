package xyz.withy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.PaymentDTO;
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
	
	@PostMapping("/")
	public String pay(@RequestBody PaymentDTO payment, HttpSession session) {
		//결제 관련 OpenAPI를 이용하기 전에 결제 금액 검증을 위해 세션에 주문번호(이름)와 결제금액(값)을 저장
		session.setAttribute("userNo", 8);
		
		//session.setAttribute(payment.getMerchantUid(), payment.getAmount());
		return "ok";	
	}
}
