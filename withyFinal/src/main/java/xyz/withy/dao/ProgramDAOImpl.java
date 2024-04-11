package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.ProgramDTO;
import xyz.withy.mapper.ProgramMapper;

@Repository
@RequiredArgsConstructor
public class ProgramDAOImpl implements ProgramDAO{
	private final SqlSession sqlSession;

	@Override
	public int insertProgram(ProgramDTO programDTO) {
		return sqlSession.getMapper(ProgramMapper.class).insertProgram(programDTO);
	}

	@Override
	public int updateProgram(ProgramDTO programDTO) {
		return sqlSession.getMapper(ProgramMapper.class).updateProgram(programDTO);
	}

	@Override
	public int deleteProgram(int programNo) {
		return sqlSession.getMapper(ProgramMapper.class).deleteProgram(programNo);
	}

	@Override
	public ProgramDTO selectProgramByNo(int programNo) {
		return sqlSession.getMapper(ProgramMapper.class).selectProgramByNo(programNo);
	}

	@Override
	public int selectProgramCount() {
		return sqlSession.getMapper(ProgramMapper.class).selectProgramCount();
	}

	@Override
	public List<ProgramDTO> selectProgramList(Map<String, Object> map) {
		return sqlSession.getMapper(ProgramMapper.class).selectProgramList(map);
	}

	@Override
	public List<ProgramDTO> selectProgramJoinList() {
		return sqlSession.getMapper(ProgramMapper.class).selectProgramJoinList();
	}

	@Override
	public List<ProgramDTO> selectProgramFilterByOtt(Integer programOttNo, Integer programCategoryNo) {
		return sqlSession.getMapper(ProgramMapper.class).selectProgramFilterByOtt(programOttNo, programCategoryNo);
	}
}
