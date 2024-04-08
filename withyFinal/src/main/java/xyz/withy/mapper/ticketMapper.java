package xyz.withy.mapper;

import java.util.List;

import xyz.withy.dto.ticketDTO;

public interface ticketMapper {

	int insertTicket(ticketDTO ticket);
	int updateTicket(ticketDTO ticket);
	int deleteTicket(ticketDTO ticket);
	ticketDTO selectTicket(ticketDTO ticket);
	int selectTicketCount();
	List<ticketDTO> selectTicketList();
}
