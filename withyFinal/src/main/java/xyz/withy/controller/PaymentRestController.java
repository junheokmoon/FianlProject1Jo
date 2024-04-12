package xyz.withy.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.UserDTO;
import xyz.withy.service.PaymentService;
import xyz.withy.service.UserService;

@RestController
@RequestMapping("/payment")
@RequiredArgsConstructor
public class PaymentRestController {
	
	private final PaymentService paymentService;
	private final UserService userService;
	
	@RequestMapping("/payment_user_data")
	public UserDTO paymenUserData(int userNo) {
		
		
		return userService.getUserByNo(userNo);
		
	}
	
}
