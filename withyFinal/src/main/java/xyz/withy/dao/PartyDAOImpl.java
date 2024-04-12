package xyz.withy.dao;

import java.util.List;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.PartyDTO;
import xyz.withy.mapper.partyMapper;

@Repository
@RequiredArgsConstructor
public class PartyDAOImpl implements PartyDAO{
	private final SqlSession sqlSession;

	@Override
	public int insertProgram(PartyDTO partyDTO) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(partyMapper.class).insertParty(partyDTO);
	}

}
