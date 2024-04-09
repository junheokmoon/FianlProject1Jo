package xyz.withy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.NoticeDAO;
import xyz.withy.dto.NoticeDTO;
import xyz.withy.util.Pager;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	private final NoticeDAO noticeDAO;
	
	@Override
	public void addNotice(NoticeDTO notice) {
		noticeDAO.insertNotice(notice);
	}

	@Override
	public void modifyNotice(NoticeDTO notice) {
		noticeDAO.updateNotice(notice);
	}

	@Override
	public void modifyNoticeCount(int noticeCount) {
		noticeDAO.updateNoticeCount(noticeCount);
	}

	@Override
	public void removeNotice(int noticeNo) {
		noticeDAO.deleteNotice(noticeNo);
	}

	@Override
	public NoticeDTO getNotice(int noticeNo) {
		return noticeDAO.selectNotice(noticeNo);
	}

	@Override
	public Map<String, Object> getNoticeList(int pageNum) {
		int totalSize=noticeDAO.selectNoticeCount();
		
		Pager pager=new Pager(pageNum, totalSize, 5, 5);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		List<NoticeDTO> noticeList=noticeDAO.selectNoticeList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("noticeList", noticeList);
		
		return resultMap;
	}

}
