package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.NoticeDTO;

public interface NoticeMapper {
	int insertNotice(NoticeDTO notice);
	int updateNotice(NoticeDTO notice);
	int updateNoticeCount(int noticeNo);
	int deleteNotice(int noticeNo);
	NoticeDTO selectNotice(int noticeNo);
	int selectNoticeCount();
	List<NoticeDTO> selectNoticeList(Map<String, Object> map);
}
