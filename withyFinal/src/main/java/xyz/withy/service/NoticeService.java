package xyz.withy.service;

import java.util.Map;

import xyz.withy.dto.NoticeDTO;

public interface NoticeService {
	void addNotice(NoticeDTO notice); //삽입
	void modifyNotice(NoticeDTO notice); //공지내용 변경
	void modifyNoticeCount(int noticeNo); //조회수추가
	void removeNotice(int noticeNo); //삭제
	NoticeDTO getNotice(int noticeNo); //단일행 검색
	Map<String, Object> getNoticeList(int pageNum); //전체공지목록
}
