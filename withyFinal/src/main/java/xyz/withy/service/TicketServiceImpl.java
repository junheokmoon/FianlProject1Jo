package xyz.withy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.TicketDAO;
import xyz.withy.dto.TicketDTO;
import xyz.withy.util.Pager;

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

	//전체 상품(이용권) 보기
	@Override
	public List<TicketDTO> getTicketList() {
		return ticketDAO.selectTicketList();
	}

	@Override
	public Map<String, Object> getTicketPageList(int pageNum) {
		
		// 티켓의 숫자 가져오기
		int totalSize = ticketDAO.selectTicketCount(); 

		Pager pager = new Pager(pageNum, totalSize, 10, 10);
		
		Map<String, Object> pageMap= new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		List<TicketDTO> ticketPageList=ticketDAO.selectTicketPageList(pageMap);

		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("ticektPageList", ticketPageList);
		
		return resultMap;
		
		
	}

	@Override
	public List<TicketDTO> getTicketMonthList() {
		return ticketDAO.selectTicketMonthList();
	}

	@Override
	public TicketDTO getTicketInfo(String ticketCode) {
		return ticketDAO.selectTicketInfo(ticketCode);
	}

}
