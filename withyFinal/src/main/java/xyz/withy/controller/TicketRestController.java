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
	
	@GetMapping("/ticket_list") //티켓의 리스트를 불러오는 메소드
	public List<TicketDTO> ticketList() {
		
		return ticketService.getTicketList();
	}
	
	@GetMapping("/ticket_month") //티켓의 개월수의 종류를 불러오는 메소드
	public List<TicketDTO> monthList() {
		
		return ticketService.getTicketMonthList();
	}

	@GetMapping("/ticket_info") // 티켓의 정보를 불러오는 메소드
	public TicketDTO ticketInfo(@RequestParam(defaultValue = "24_6")String ticketCode) {
		
		System.out.println("ticketCode =" +ticketCode);
		
		return ticketService.getTicketInfo(ticketCode);
		
	}
	
	
}