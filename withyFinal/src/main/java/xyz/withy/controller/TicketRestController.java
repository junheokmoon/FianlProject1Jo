package xyz.withy.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.TicketDTO;
import xyz.withy.service.TicketService;


@RestController
@RequestMapping("/ticketBooth")
@RequiredArgsConstructor
public class TicketRestController {
	
	private final TicketService ticketService;
	
	@GetMapping("/ticket_list")
	public List<TicketDTO> ticketList() {
		
		
		return ticketService.getTicketList();
	}

}