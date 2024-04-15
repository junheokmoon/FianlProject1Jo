package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import xyz.withy.dto.ProgramDTO;

public interface ProgramMapper {
	 int insertProgram(ProgramDTO programDTO);
	 int updateProgram(ProgramDTO programDTO);
	 int deleteProgram(int programNo);
	 ProgramDTO selectProgramByNo(int programNo);
	 int selectProgramCount();
	 List<ProgramDTO> selectProgramList(Map<String, Object> map);
	 List<ProgramDTO> selectProgramJoinList();
	 //List<ProgramDTO> selectProgramFilterByOtt(Integer programOttNo, Integer programCategoryNo);
	 List<ProgramDTO> selectProgramFilterByOtt
		(@Param("programOttNo") Integer programOttNo, @Param("programCategoryNo") Integer programCategoryNo);
	 List<ProgramDTO> selectProgramCategoryNoList();		// 프로그램 장르 리스트
}
