package xyz.withy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.PointDAO;
import xyz.withy.dto.UserDTO;
import xyz.withy.service.PointService;
import xyz.withy.service.UserService;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class UserController {
	@Autowired
	private final UserService userService;
	private final PointService pointService;
	
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
	    List<UserDTO> userList = userService.getUserList();
        //System.out.println("userList = " + userList);

	    for (UserDTO userDTOList : userList) {
	        String userId = userDTOList.getUserId();
	        //System.out.println("userService.getUserPoint(userId) = " + userService.getUserPoint(userId));
	        UserDTO userDTO = userService.getUserPoint(userId);
	        if (userDTO == null) {
	        	userDTO = new UserDTO();
	        	userDTO.setPointTotal(0);
	        }
	        userDTOList.setPointTotal(userDTO.getPointTotal());
	        //System.out.println("userDTO = " + userDTO);
	    }
	    
	    model.addAttribute("userList", userList);
	    return "admin/all_user";
	}

	@RequestMapping("/detailUser")
	public String detailUser(@RequestParam String userId, Model model, HttpSession session) {
		model.addAttribute("userinfo", userService.getUserinfo(userId));

        UserDTO userDTO = userService.getUserPoint(userId);
        if (userDTO == null) {
        	userDTO = new UserDTO();
        	userDTO.setPointTotal(0);
        }
        model.addAttribute("userDTO", userDTO);
        
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
	/**************************** 회원관리 end ****************************/
	
	/*********************** OTT(이용권) 관리 start ***********************/
	@RequestMapping("/allProduct")
	public String allProduct() {
		return "admin/all_product";
	}
	
	@RequestMapping("/updateProduct")
	public String updateProduct() {
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
}
