package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.service.TicketService;


@Controller
//@RestController
@RequestMapping("/ticketBooth")
@RequiredArgsConstructor
public class TicketController {
	
	private final TicketService ticketService;
	
	@RequestMapping("/")
	//@GetMapping("/ticket_List)
	public String ticketMain() {
		return "/ticketBooth/ticketBoothMain";
	}

}
