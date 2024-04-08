package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.ProgramDTO;

public interface ProgramMapper {
	 int insertProgram(ProgramDTO programDTO);
	 int updateProgram(ProgramDTO programDTO);
	 int deleteProgram(int programNo);
	 ProgramDTO selectProgram(int programNo);
	 int selectProgramCount();
	 List<ProgramDTO> selectProgramList(Map<String, Object> map);
	//List<programDTO> selectProgramList();
}
