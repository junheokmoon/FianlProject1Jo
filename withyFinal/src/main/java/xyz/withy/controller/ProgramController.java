package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import lombok.RequiredArgsConstructor;
import xyz.withy.service.ProgramService;
import xyz.withy.dto.ProgramDTO;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ProgramController {
    private final ProgramService programService;
    
    /*기존 컨트롤러
    @RequestMapping("/program")
    public String program(Model model) {
        model.addAttribute("programList", programService.getProgramJoinList());
        return "/review/program";
    }
  
    
   */
    
    @RequestMapping("/program")
    public String program(
        @RequestParam(value = "programOttNo", defaultValue = "0") Integer programOttNo,
        @RequestParam(value = "programCategoryNo", defaultValue = "0") Integer programCategoryNo,
        Model model) {

        // 조건에 따라 필터링된 프로그램 목록을 조회
        List<ProgramDTO> programs = programService.getProgramFilterByOtt(programOttNo, programCategoryNo);

        model.addAttribute("programList", programs);
        model.addAttribute("programOttNo", programOttNo);
        return "review/program"; 
    }

    
}
