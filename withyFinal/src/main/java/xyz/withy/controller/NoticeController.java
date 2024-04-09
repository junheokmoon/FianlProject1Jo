package xyz.withy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NoticeController {
	
	@RequestMapping("/noticeDetail")
	public String noticeDetail() {
		return "notice/noticeDetail";
	}
	
	@RequestMapping("/noticeList")
	public String noticeList() {
		return "notice/noticeList";
	}
	
	@RequestMapping("/noticeUpdate")
	public String noticeUpdate() {
		return "notice/noticeUpdate";
	}
	
	@RequestMapping("/noticeWrite")
	public String noticeWrite() {
		return "notice/noticeWrite";
	}
}
