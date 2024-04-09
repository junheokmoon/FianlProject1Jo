package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PartyController {
	//private final UserService userService;

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
	public String partyCheck() {
		return "party/partyCheck";
	}
	
	@RequestMapping("/partyLeader2")
	public String partyLeaderCreateRoom() {
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
