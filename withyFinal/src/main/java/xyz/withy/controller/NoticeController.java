package xyz.withy.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.NoticeDTO;
import xyz.withy.service.NoticeService;

@Controller
@RequestMapping("/notice")
@RequiredArgsConstructor
public class NoticeController {
	private final NoticeService noticeService;
	
	
	@RequestMapping("/detail")
	public String noticeDetail(@RequestParam int noticeNo, Model model) {
		NoticeDTO noticedetail=noticeService.getNotice(noticeNo);
		model.addAttribute("noticedetail", noticedetail);
		return "notice/noticeDetail";
	}
	
	
	@RequestMapping(value = "/list")
	public String noticeList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> map=noticeService.getNoticeList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("noticeList", map.get("noticeList"));
		
		return "notice/noticeList";
	}
	
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String noticeUpdate(@RequestParam int noticeNo, Model model) {
		
		NoticeDTO noticemodify=noticeService.getNotice(noticeNo);
		model.addAttribute("noticemodify", noticemodify);
		
		return "notice/noticeUpdate";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String noticeUpdate(@ModelAttribute NoticeDTO notice) {
		noticeService.modifyNotice(notice);
		return "redirect:/notice/list";
	}
	
	@RequestMapping("/noticeWrite")
	public String noticeWrite() {
		return "notice/noticeWrite";
	}
	
	@RequestMapping("/delete")
	public String noticeDelete(@RequestParam int noticeNo) {
		noticeService.removeNotice(noticeNo);
		return "redirect:/notice/list";
		
	}
	
	
}
