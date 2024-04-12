package xyz.withy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.TicketDAO;
import xyz.withy.dto.PointDTO;
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
	public TicketDTO getTicketInfo(String ticketCode) {
		return ticketDAO.selectTicketInfo(ticketCode);
	}
	
	@Override
	public List<TicketDTO> getTicketMonthList() {
		return ticketDAO.selectTicketMonthList();
	}
	
	//전체 상품(이용권) 보기
	@Override
	public List<TicketDTO> getTicketList() {
		return ticketDAO.selectTicketList();
	}

	@Override
	public int getTicketCount() {
		return ticketDAO.selectTicketCount();
	}

	//메소드의 매개변수로 요청 페이지 번호를 전달받아 게시글 목록을 검색하여 게시글 목록과
	//페이징 처리 관련 정보를 Map 객체의 엔트리로 추가하여 반환하는 메소드 
	@Override
	public Map<String, Object> getTicketPageList(int pageNum) {
		//FILE_BOARD 테이블에 저장된 모든 행(게시글)의 갯수를 반환받아 저장
		int totalSize=ticketDAO.selectTicketCount();
		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수를 저장
		int blockSize=5;//하나의 블럭에 출력될 페이지 번호의 갯수를 저장
	
		Pager pager=new Pager(pageNum, totalSize, pageSize, blockSize);
	
		//FileBoardDAO 클래스의 selectFileBoardList() 메소드를 호출하기 위해 매개변수에 전달될 Map 객체 생성
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		List<TicketDTO> ticketPageList=ticketDAO.selectTicketPageList(pageMap);
		
		//요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
		// => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("ticketPageList", ticketPageList);
		System.out.println("pager = " + pager);
		
		return resultMap;
	}
}
