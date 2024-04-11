package xyz.withy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.OttkindDTO;
import xyz.withy.mapper.OttkindMapper;

@Repository
@RequiredArgsConstructor
public class OttkindDAOImpl implements OttkindDAO{

	private final SqlSession sqlSession;


	@Override
	public List<OttkindDTO> selectTicketNameList() {
		return sqlSession.getMapper(OttkindMapper.class).selectTicketNameList();
	}
	
	

}
