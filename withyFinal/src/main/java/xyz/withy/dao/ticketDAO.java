package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.ticketDTO;

public interface ticketDAO {
	
	int insertTicket(ticketDTO ticket); // 추가
	int updateTicket(ticketDTO ticket); // 업데이트
	int deleteTicket(String ticketCode); // 사실상 status 2번으로 변경
	int realDeleteTicket(String ticketCode); //진짜 순도 100% delete
	int recoverTicket(String ticketCode); // 사실상 status 1번으로 변경
	ticketDTO selectTicket(String ticketCode); // 그냥 검색
	int selectTicketCount(); //티켓의 전체 갯수
	List<ticketDTO> selectTicketList(); //전체 목록 보기
	List<ticketDTO> selectTicketPageList(Map<String, Object> map); // 페이징 처리된 리스트
}
