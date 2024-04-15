package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.NoticeDTO;

public interface NoticeDAO {
	int insertNotice(NoticeDTO notice);
	int updateNotice(NoticeDTO notice);
	int updateNoticeCount(int noticeNo);
	int deleteNotice(int noticeNo);
	NoticeDTO selectNotice(int noticeNo);
	int selectNoticeCount();
	List<NoticeDTO> selectNoticeList(Map<String, Object> map);
}
