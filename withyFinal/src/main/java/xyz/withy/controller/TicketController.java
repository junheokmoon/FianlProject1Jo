package xyz.withy.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.TicketDTO;
import xyz.withy.service.TicketService;


@Controller
@RequestMapping("/ticketBooth")
@RequiredArgsConstructor
public class TicketController {
	
	private final TicketService ticketService;
	
	@RequestMapping("/")
	public String ticketMain() {
		return "/ticketBooth/ticketBoothMain";
	}

	@GetMapping("/ticket_list")
	public List<TicketDTO> ticketList() {
		
		
		return ticketService.getTicketList();
	}

	
}
