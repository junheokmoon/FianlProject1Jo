package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.ProgramDTO;
import xyz.withy.dto.ReviewDTO;

public interface ProgramMapper {
	 int insertProgram(ProgramDTO programDTO);
	 int updateProgram(ProgramDTO programDTO);
	 int deleteProgram(int programNo);
	 ProgramDTO selectProgramByNo(int programNo);
	 int selectProgramCount();
	 List<ProgramDTO> selectProgramList(Map<String, Object> map);
	List<ProgramDTO> selectProgramJoinList();
}
