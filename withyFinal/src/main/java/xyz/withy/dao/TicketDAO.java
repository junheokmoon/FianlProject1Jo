package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.TicketDTO;

public interface TicketDAO {
	int insertTicket(TicketDTO ticket); 			// �߰�
	int updateTicket(TicketDTO ticket); 			// ������Ʈ
	int deleteTicket(String ticketCode); 			// ��ǻ� status 2������ ����
	int realDeleteTicket(String ticketCode); 		// ��¥ ���� 100% delete
	int recoverTicket(String ticketCode); 			// ��ǻ� status 1������ ����
	TicketDTO selectTicket(String ticketCode); 		// �׳� �˻�
	int selectTicketCount(); 						// Ƽ���� ��ü ����
	List<TicketDTO> selectTicketList(); 			// ��ü ��� ����
	List<TicketDTO> selectTicketPageList(Map<String, Object> map); 	// ����¡ ó���� ����Ʈ
}
