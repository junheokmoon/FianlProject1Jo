package xyz.withy.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.TicketDTO;
import xyz.withy.service.OttkindService;
import xyz.withy.service.TicketService;


@RestController
@RequestMapping("/ticketBooth")
@RequiredArgsConstructor
public class TicketRestController {
	
	private final TicketService ticketService;
	
	@GetMapping("/ticket_list")
	public List<TicketDTO> ticketList() {
		System.out.println("티켓 리스토!!"); 
		
		return ticketService.getTicketList();
	}
	
	@GetMapping("/ticket_month")
	public List<TicketDTO> monthList() {
		System.out.println("개월 수 리스토!!");
		
		return ticketService.getTicketMonthList();
	}

	@GetMapping("/ticket_info")
	public TicketDTO ticketInfo(@RequestParam(defaultValue = "24_6")String ticketCode) {
		
		System.out.println("ticketCode =" +ticketCode);
		
		return ticketService.getTicketInfo(ticketCode);
		
	}
	
	
}