package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.TicketDTO;

public interface TicketMapper {
	int insertTicket(TicketDTO ticket); 			// 추가
	int updateTicket(TicketDTO ticket); 			// 업데이트
	int deleteTicket(String ticketCode); 			// 사실상 status 2번으로 변경
	int realDeleteTicket(String ticketCode); 		// 진짜 순도 100% delete
	int recoverTicket(String ticketCode); 			// 사실상 status 1번으로 변경
	TicketDTO selectTicket(String ticketCode); 		// 그냥 검색
	TicketDTO selectTicketInfo(String ticketCode); 	// OTTKIND와 조인, ticketCode 전달받아 검색
	List<TicketDTO> selectTicketMonthList();		// 티켓의 개월 수 리스트
	List<TicketDTO> selectTicketList(); 			// 전체 상품(이용권) 보기
	int selectTicketCount(); 						// 전체 티켓 수(페이징)
	List<TicketDTO> selectTicketPageList(Map<String, Object> map); 	// 전체 상품(이용권) 조회(페이징)
}
