package xyz.withy.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.OttkindDTO;
import xyz.withy.service.OttkindService;

@RestController
@RequestMapping("/ottkind")
@RequiredArgsConstructor
public class OttkindRestController {

	private final OttkindService ottkindService;
	
	@GetMapping("/ottName_list")
	public List<OttkindDTO> ottkindNameList(){
		System.out.println("ottkindNameList 정상 실행중");
		
		return ottkindService.getTicketMonthList();
	};
}
