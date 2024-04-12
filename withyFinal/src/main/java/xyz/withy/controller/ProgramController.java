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

    // 새로 추가된 메서드: 필터링 기능
    @GetMapping("/filterPrograms")
    @ResponseBody
    public List<ProgramDTO> filterPrograms(
            @RequestParam(value = "programOttNo", required = false) Integer programOttNo,
            @RequestParam(value = "programCategory", required = false) Integer programCategory) {
        
        // 서비스 레이어에 필터링 메서드를 호출하고 결과를 반환합니다.
        // 실제 구현에서는 필요한 로직에 따라 서비스 메서드를 추가 및 구현해야 합니다.
        // 예를 들어, programService.filterProgramsByOttAndCategory(programOttNo, programCategory) 같은 메서드를 구현할 수 있습니다.
        return programService.getProgramFilterByOtt(programOttNo, programCategory);
   */
    
    @RequestMapping("/program")
    public String program(@RequestParam(value = "programOttNo", required = false) Integer programOttNo, Model model) {
        List<ProgramDTO> programs;

        if (programOttNo != null) {
            // 특정 OTT에 대한 프로그램만 조회
            programs = programService.getProgramFilterByOtt(programOttNo, null);
        } else {
            // 모든 프로그램 조회
            programs = programService.getProgramJoinList();
        }

        model.addAttribute("programList", programs);
        return "review/program"; // JSP 파일 경로
    }
    
}
