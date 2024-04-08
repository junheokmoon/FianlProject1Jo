package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.TicketDTO;

public interface TicketMapper {

	int insertTicket(TicketDTO ticket); // 추가
	int updateTicket(TicketDTO ticket); // 업데이트
	int deleteTicket(String ticketCode); // 사실상 status 2번으로 변경
	int realDeleteTicket(String ticketCode); //진짜 순도 100% delete
	int recoverTicket(String ticketCode); // 사실상 status 1번으로 변경
	TicketDTO selectTicket(String ticketCode); // 그냥 검색
	int selectTicketCount(); //티켓의 전체 갯수
	List<TicketDTO> selectTicketList(); //전체 목록 보기
	List<TicketDTO> selectTicketPageList(Map<String, Object> map); // 페이징 처리된 리스트
}
