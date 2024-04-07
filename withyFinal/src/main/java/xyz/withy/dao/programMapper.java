package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.programDTO;

public interface programMapper {
	 int insertProgram(programDTO programDTO);
	 int updateProgram(programDTO programDTO);
	 int deleteProgram(int programNo);
	 programDTO selectProgram(int programNo);
	 int selectProgramCount();
	 List<programDTO> selectRestBoardList(Map<String, Object> map);
	//List<programDTO> selectProgramList();
}
