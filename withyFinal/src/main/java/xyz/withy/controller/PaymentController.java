package xyz.withy.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller	
@RequestMapping("/payment")
public class PaymentController {

	@RequestMapping("/")
	public String payment(@RequestParam("ticketCode")String ticketCode ) {
		
		return "/payment/paymentMain";
	}
	
	
}
