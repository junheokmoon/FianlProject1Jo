package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.ticketDTO;
import xyz.withy.mapper.ticketMapper;

@Repository
@RequiredArgsConstructor
public class TicketDAOImpl implements TicketDAO{

	private final SqlSession sqlSession;
	
	@Override
	public int insertTicket(ticketDTO ticket) {
		return sqlSession.getMapper(ticketMapper.class).insertTicket(ticket);
	}

	@Override
	public int updateTicket(ticketDTO ticket) {
		return sqlSession.getMapper(ticketMapper.class).updateTicket(ticket);
	}

	@Override
	public int deleteTicket(String ticketCode) {
		return sqlSession.getMapper(ticketMapper.class).deleteTicket(ticketCode);
	}

	@Override
	public int realDeleteTicket(String ticketCode) {
		return sqlSession.getMapper(ticketMapper.class).realDeleteTicket(ticketCode);
	}

	@Override
	public int recoverTicket(String ticketCode) {
		return sqlSession.getMapper(ticketMapper.class).recoverTicket(ticketCode);
	}

	@Override
	public ticketDTO selectTicket(String ticketCode) {
		return sqlSession.getMapper(ticketMapper.class).selectTicket(ticketCode);
	}

	@Override
	public int selectTicketCount() {
		return sqlSession.getMapper(ticketMapper.class).selectTicketCount();
	}

	@Override
	public List<ticketDTO> selectTicketList() {
		return sqlSession.getMapper(ticketMapper.class).selectTicketList();
	}

	@Override
	public List<ticketDTO> selectTicketPageList(Map<String, Object> map) {
		return sqlSession.getMapper(ticketMapper.class).selectTicketPageList(map);
	} 

	
}
