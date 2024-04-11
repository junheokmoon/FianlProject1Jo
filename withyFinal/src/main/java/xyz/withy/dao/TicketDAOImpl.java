package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.TicketDTO;
import xyz.withy.mapper.TicketMapper;

@Repository
@RequiredArgsConstructor
public class TicketDAOImpl implements TicketDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertTicket(TicketDTO ticket) {
		return sqlSession.getMapper(TicketMapper.class).insertTicket(ticket);
	}

	@Override
	public int updateTicket(TicketDTO ticket) {
		return sqlSession.getMapper(TicketMapper.class).updateTicket(ticket);
	}

	@Override
	public int deleteTicket(String ticketCode) {
		return sqlSession.getMapper(TicketMapper.class).deleteTicket(ticketCode);
	}

	@Override
	public int realDeleteTicket(String ticketCode) {
		return sqlSession.getMapper(TicketMapper.class).realDeleteTicket(ticketCode);
	}

	@Override
	public int recoverTicket(String ticketCode) {
		return sqlSession.getMapper(TicketMapper.class).recoverTicket(ticketCode);
	}

	@Override
	public TicketDTO selectTicket(String ticketCode) {
		return sqlSession.getMapper(TicketMapper.class).selectTicket(ticketCode);
	}

	@Override
	public int selectTicketCount() {
		return sqlSession.getMapper(TicketMapper.class).selectTicketCount();
	}

	@Override
	public List<TicketDTO> selectTicketList() {
		return sqlSession.getMapper(TicketMapper.class).selectTicketList();
	}

	@Override
	public List<TicketDTO> selectTicketPageList(Map<String, Object> map) {
		return sqlSession.getMapper(TicketMapper.class).selectTicketPageList(map);
	}

	@Override
	public List<TicketDTO> selectTicketMonthList() {
		return sqlSession.getMapper(TicketMapper.class).selectTicketMonthList();
	}

	@Override
	public TicketDTO selectTicketInfo(String ticketCode) {
		return sqlSession.getMapper(TicketMapper.class).selectTicketInfo(ticketCode);
	}
}

