package xyz.withy.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.service.TicketService;

@RestController
@RequestMapping("/ticketBooth")
@RequiredArgsConstructor
public class TicketController {
	
	private final TicketService ticketService;
	
	public String ticketMain() {
		
		return null;
	}

}
