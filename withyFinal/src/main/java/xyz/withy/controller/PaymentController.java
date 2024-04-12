package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payment")
public class PaymentController {

	@RequestMapping("/payment")
	public String payment() {
		return "/payment/paymentMain";
	}
	
	
}
