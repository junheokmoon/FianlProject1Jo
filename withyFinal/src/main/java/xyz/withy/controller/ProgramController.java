package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.RequiredArgsConstructor;
import xyz.withy.service.ProgramService;

@Controller
@RequiredArgsConstructor
public class ProgramController {
	private final ProgramService programService;

	@RequestMapping("/program")
	public String program(Model model) {
		model.addAttribute("programList", programService.getProgramJoinList());
		return "/review/program";

	}

}