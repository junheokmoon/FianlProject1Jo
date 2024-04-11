package xyz.withy.service;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.TicketDTO;

public interface TicketService {
	void addTicket(TicketDTO ticket); 			// 추가
	void modifyTicket(TicketDTO ticket); 		// 업데이트
	void removeTicket(String ticketCode); 		// 사실상 status 2번으로 변경
	void realRemoveTicket(String ticketCode); 	// 진짜 순도 100% delete
	void revivalTicket(String ticketCode); 		// 사실상 status 1번으로 변경
	TicketDTO getTicket(String ticketCode); 	// 그냥 검색
	TicketDTO getTicketInfo(String ticketCode); // OTTKIND와 조인, ticketCode 전달받아 검색
	int getTicketCount(); 						// 티켓의 전체 갯수
	List<TicketDTO> getTicketList(); 			// 전체 상품(이용권) 보기
	Map<String, Object> getTicketPageList(int pageNum); // 페이징 처리된 리스트
	List<TicketDTO> getTicketMonthList();       // 티켓의 개월 수 리스트
	
}