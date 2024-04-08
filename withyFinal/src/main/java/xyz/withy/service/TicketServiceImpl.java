package xyz.withy.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.TicketDAO;
import xyz.withy.dto.TicketDTO;

@Service
@RequiredArgsConstructor
public class TicketServiceImpl implements TicketService{
	private final TicketDAO ticketDAO;
	
	@Override
	public void addTicket(TicketDTO ticket) {
		ticketDAO.insertTicket(ticket);
	}

	@Override
	public void modifyTicket(TicketDTO ticket) {
		ticketDAO.updateTicket(ticket);		
	}

	@Override
	public void removeTicket(String ticketCode) {
		ticketDAO.deleteTicket(ticketCode);		
	}

	@Override
	public void realRemoveTicket(String ticketCode) {
		ticketDAO.realDeleteTicket(ticketCode);
	}

	@Override
	public void revivalTicket(String ticketCode) {
		ticketDAO.recoverTicket(ticketCode);
	}

	@Override
	public TicketDTO getTicket(String ticketCode) {
		return ticketDAO.selectTicket(ticketCode);
	}

	@Override
	public int getTicketCount() {
		return ticketDAO.selectTicketCount();
	}

	@Override
	public List<TicketDTO> getTicketList() {
		return ticketDAO.selectTicketList();
	}

	@Override
	public List<TicketDTO> getTicketPageList(Map<String, Object> map) {
		return ticketDAO.selectTicketPageList(map);
	}

}
