package xyz.withy.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.PointDTO;
import xyz.withy.dto.UserDTO;
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
	
	@RequestMapping("/")
	public String admin(Model model) {
		model.addAttribute("userJoindateList", userService.getUserJoindateList());
		model.addAttribute("addPointList", pointService.getAddPointList());

		System.out.println("pointService.getAddPointList() = " + pointService.getAddPointList());
		return "admin";
	}

	/*********************** 회원관리 start ***********************/
	@RequestMapping("/allUser")
	public String allUser(Model model) {
//	    List<UserDTO> userList = userService.getUserList();
//        //System.out.println("userList = " + userList);
//
//	    for (UserDTO userDTOList : userList) {
//	        String userId = userDTOList.getUserId();
//	        //System.out.println("userService.getUserPoint(userId) = " + userService.getUserPoint(userId));
//	        UserDTO userDTO = userService.getUserPoint(userId);
//	        if (userDTO == null) {
//	        	userDTO = new UserDTO();
//	        	userDTO.setPointTotal(0);
//	        }
//	        userDTOList.setPointTotal(userDTO.getPointTotal());
//	        //System.out.println("userDTO = " + userDTO);
//	    }
//	    
//	    model.addAttribute("userList", userList);
//	    return "admin/all_user";
		model.addAttribute("userList", userService.getUserList());
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
	public String allPoint(Model model) {
		model.addAttribute("pointList", pointService.getPointList());

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
	public String allProduct(Model model) {
		model.addAttribute("ticketList", ticketService.getTicketList());
		System.out.println("ticketService.getTicketList() = " + ticketService.getTicketList());
		
		return "admin/all_product";
	}
	
	@RequestMapping("/updateProduct")
	public String updateProduct(@RequestParam String ticketCode, Model model, HttpSession session) {
		model.addAttribute("ticketInfo", ticketService.getTicketInfo(ticketCode));
		System.out.println("ticketService.getTicketInfo(ticketCode) = " + ticketService.getTicketInfo(ticketCode));
		return "admin/update_product";
	}

	@RequestMapping("/addProduct")
	public String addProduct() {
		return "admin/add_product";
	}
	
	@RequestMapping("/addOtt")
	public String addOtt() {
		return "admin/add_ott";
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
	/***********************회원가입제발요 ***************************/
	   
	   @PostMapping("/login/join")
	   public String userJoin(@ModelAttribute("user") @Valid UserDTO userDTO, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
	       if (bindingResult.hasErrors()) {
	           // 유효성 검사 실패 시 처리
	           return "/join";
	       }
	       
	       try {
	           userService.joinUser(userDTO);
	       } catch (Exception e) {
	           // 회원가입 실패 시 처리
	           redirectAttributes.addFlashAttribute("joinError", true);
	           redirectAttributes.addFlashAttribute("errorMessage", "회원가입에 실패하였습니다.");
	           return "redirect:/join";
	       }
	       
	       // 회원가입 성공 시 처리
	       redirectAttributes.addFlashAttribute("registerSuccess", true);
	       return "redirect:/login";
	   }
	   } 