package xyz.withy.service;

import java.util.Map;

import xyz.withy.dto.ProgramDTO;

public interface ProgramService {
	void addProgram(ProgramDTO programDTO);
	void modifyProgram(ProgramDTO programDTO);
	void removeProgram(int programNo);
	ProgramDTO getProgram(int programNo);
	Map<String, Object> getProgramList(int pageNum);

}
