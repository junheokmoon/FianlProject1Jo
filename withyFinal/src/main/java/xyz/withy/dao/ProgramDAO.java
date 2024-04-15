package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.ProgramDTO;

public interface ProgramDAO {
	 int insertProgram(ProgramDTO programDTO);
	 int updateProgram(ProgramDTO programDTO);
	 int deleteProgram(int programNo);
	 ProgramDTO selectProgramByNo(int programNo);
	 int selectProgramCount();
	 List<ProgramDTO> selectProgramList(Map<String, Object> map);
	 List<ProgramDTO> selectProgramJoinList();
	 List<ProgramDTO> selectProgramFilterByOtt(Integer programOttNo, Integer programCategoryNo);
	 List<ProgramDTO> selectProgramCategoryNoList();		// 프로그램 장르 리스트
}
