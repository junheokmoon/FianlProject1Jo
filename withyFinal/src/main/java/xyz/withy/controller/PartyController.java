package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PartyController {
	//private final UserService userService;
	public String otts ;

	@RequestMapping("/party")
	public String party() {
		return "party/party";
	}

	@RequestMapping("/partyMember")
	public String partyMember() {
		return "party/partyMember";
	}
	
	@RequestMapping("/partyMember2")
	public String partyMember2() {
		return "party/partyMemberpayment";
	}
	
	@RequestMapping("/partyMember3")
	public String partyFinish() {
		return "party/partyMemberFinish";
	}
	

	@RequestMapping("/partyLeader")
	public String partyLeader() {
		return "party/partyLeader";
	}
	
	@RequestMapping("/partyLeader1")
	public String partyCheck(@RequestParam String param, Model model) {
		if(param.equals("net")) {
			param = "넷플릭스";
		}else if(param.equals("dis")) {
			param = "디즈니플러스";
		}else if(param.equals("tvg")) {
			param = "티빙";
		}else if(param.equals("wav")) {
			param = "웨이브";
		}else if(param.equals("whc")) {
			param = "왓챠";
		}
		
		model.addAttribute("ott",param);
		return "party/partyLeaderCheck";
	}
	
	@RequestMapping("/partyLeader2")
	public String partyLeaderCreateRoom(@RequestParam String kind, Model model) {
		model.addAttribute("kind", kind);
		return "party/partyLeaderCreateRoom2";
	}
	
	@RequestMapping("/partyLeader3")
	public String partyLeaderFinish() {
		return "party/partyLeaderFinish";
	}
	
	@RequestMapping("/partyMatchRoom")
	public String partyLeaderRoom() {
		return "party/partyRoom";
	}
	
	@RequestMapping("/partyMatchList")
	public String partyMatchList() {
		return "party/partyMatchList";
	}
}
