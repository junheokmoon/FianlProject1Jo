package xyz.withy.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.OttkindDTO;
import xyz.withy.dto.PointDTO;
import xyz.withy.dto.TicketDTO;
import xyz.withy.service.OttkindService;
import xyz.withy.service.PointService;
import xyz.withy.service.TicketService;
import xyz.withy.service.UserService;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class UserController {
	@Autowired
	private final UserService userService;
	private final PointService pointService;
	private final TicketService ticketService; 
	private final OttkindService ottkindService; 
	private final WebApplicationContext context;
	
	@RequestMapping("/")
	public String admin(Model model) {
		model.addAttribute("userJoindateList", userService.getUserJoindateList());
		model.addAttribute("addPointList", pointService.getAddPointList());

		System.out.println("pointService.getAddPointList() = " + pointService.getAddPointList());
		return "admin";
	}

	/*********************** 회원관리 start ***********************/
	@RequestMapping("/allUser")
	public String allUser(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		//model.addAttribute("userList", userService.getUserList());

		Map<String, Object> map=userService.getUserPageList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("userPageList", map.get("userPageList"));
		
		return "admin/all_user";
	}

	@RequestMapping("/detailUser")
	public String detailUser(@RequestParam String userId, Model model, HttpSession session) {
		model.addAttribute("userinfo", userService.getUserinfo(userId));

//        UserDTO userDTO = userService.getUserPoint(userId);
//        if (userDTO == null) {
//        	userDTO = new UserDTO();
//        	userDTO.setPointTotal(0);
//        }
//        model.addAttribute("userDTO", userDTO);
        
        return "admin/detail_user";
	}
	
	@RequestMapping("/allPoint")
	public String allPoint(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		// model.addAttribute("pointList", pointService.getPointList());
		
		Map<String, Object> map=pointService.getPointPageList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("pointPageList", map.get("pointPageList"));
		
		return "admin/all_point";
	}

	@RequestMapping("/addPoint")
	public String addPoint() {
		return "admin/add_point";
	}
	
    // 포인트 지급을 처리하는 메서드
    @PostMapping("/grantPoint")
    public String grantPoint(int pointUserNo,int pointAdd,String pointComment) {
        // 포인트 지급을 위한 작업 수행
        PointDTO pointDTO = new PointDTO();
        pointDTO.setPointUserNo(pointUserNo);
        pointDTO.setPointAdd(pointAdd);
        pointDTO.setPointComment(pointComment);
        pointService.addPoint(pointDTO);
        
        // 포인트 지급 후 리다이렉트할 경로 설정
        return "redirect:/admin/allPoint"; // 예시로 allPoint로 리다이렉트하는 것으로 가정합니다.
    }
	/**************************** 회원관리 end ****************************/
	
	/*********************** OTT(이용권) 관리 start ***********************/
	@RequestMapping("/allProduct")
	public String allProduct(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> map=ticketService.getTicketPageList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("ticketPageList", map.get("ticketPageList"));
		
		return "admin/all_product";
	}
	
	@RequestMapping(value = "/updateProduct", method = RequestMethod.GET)
	public String updateProductPage(Model model, @RequestParam("ticketCode") String ticketCode) {
	    TicketDTO ticketInfo = ticketService.getTicketInfo(ticketCode);
	    List<OttkindDTO> getOttNoAndNameList = ottkindService.getOttNoAndNameList();
	    
	    model.addAttribute("ticketInfo", ticketInfo);
	    model.addAttribute("getOttNoAndNameList", getOttNoAndNameList);
	    
	    System.out.println("getOttNoAndNameList = " + getOttNoAndNameList);
	    
	    return "admin/update_product";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(Model model) {
	    model.addAttribute("getOttNoAndNameList", ottkindService.getOttNoAndNameList());	// ott종류 for문 돌림
	    model.addAttribute("getTicketMonthList", ticketService.getTicketMonthList());		// 티켓기간 for문 돌림
	    
	    return "admin/add_product";
	}
	
	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute TicketDTO ticket, @RequestParam("ticketOttNo") int ticketOttNo
			, @RequestParam("ticketMonth") int ticketMonth, @RequestParam MultipartFile multipartFile) throws IOException {
		if(multipartFile.isEmpty()) {
			return "admin/add_ott";
		}
		
		// ottCode에 ticketOttNo와 ticketMonth 결합해서 저장
	    String ottCode = ticketOttNo + "_" + ticketMonth;
	    ticket.setTicketCode(ottCode);
		
		// 파일 업로드 시작
		String uploadDirectory=context.getServletContext().getRealPath("/resources/images");
		ticket.setTicketImage1(UUID.randomUUID().toString()+"_/images/"+multipartFile.getOriginalFilename());
		multipartFile.transferTo(new File(uploadDirectory, ticket.getTicketImage1()));
		ticketService.addTicket(ticket);
		
        return "redirect:/admin/allProduct";
	}
	
	@RequestMapping("/addOtt")
	public String addOtt() {
		return "admin/add_ott";
	}
	
	@RequestMapping(value = "/addOtt", method = RequestMethod.POST)
	public String addOtt(@ModelAttribute OttkindDTO ottkindDTO
			, @RequestParam MultipartFile multipartFile) throws IOException {
		if(multipartFile.isEmpty()) {
			return "admin/add_ott";
		}

		String uploadDirectory=context.getServletContext().getRealPath("/resources/images");

		ottkindDTO.setOttImage(UUID.randomUUID().toString()+"_/images/"+multipartFile.getOriginalFilename());

		multipartFile.transferTo(new File(uploadDirectory, ottkindDTO.getOttImage()));
		
		ottkindService.addOttkind(ottkindDTO);
		
        return "redirect:/admin/allProduct";
	}

	/*********************** OTT(이용권) 관리 start ***********************/
	
	@RequestMapping("/allProgram")
	public String allProgram() {
		return "admin/all_program";
	}
	
	@RequestMapping("/detailProgram")
	public String detailProgram() {
		return "admin/detail_program";
	}
	
	@RequestMapping("/updateProgram")
	public String updateProgram() {
		return "admin/update_program";
	}
	
	@RequestMapping("/addProgram")
	public String addProgram() {
		return "admin/add_program";
	}
	/*********************** OTT(이용권) 관리 end ***********************/

	/*********************** 공지사항 관리 start ***********************/
	@RequestMapping("/allNotice")
	public String allNotice() {
		return "admin/all_notice";
	}
	
	@RequestMapping("/detailNotice")
	public String detailNotice() {
		return "admin/detail_notice";
	}
	
	@RequestMapping("/updateNotice")
	public String updateNotice() {
		return "admin/update_notice";
	}

	@RequestMapping("/addNotice")
	public String addNotice() {
		return "admin/add_notice";
	}
	/*********************** 공지사항 관리 end ***********************/
	
	/************************* 고객지원 start *************************/
	@RequestMapping("/allQuestion")
	public String allQuestion() {
		return "admin/all_question";
	}

	@RequestMapping("/detailQuestion")
	public String detailQuestion() {
		return "admin/detail_question";
	}

	@RequestMapping("/addAnswer")
	public String addAnswer() {
		return "admin/add_answer";
	}

	@RequestMapping("/updateAnswer")
	public String updateAnswer() {
		return "admin/update_answer";
	}
	/************************* 고객지원 end *************************/
	
}