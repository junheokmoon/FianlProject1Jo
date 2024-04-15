package xyz.withy.service;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.ProgramDTO;
import xyz.withy.dto.TicketDTO;

public interface ProgramService {
	void addProgram(ProgramDTO programDTO);
	void modifyProgram(ProgramDTO programDTO);
	void removeProgram(int programNo);
	ProgramDTO getProgramByNo(int programNo);
	Map<String, Object> getProgramList(int pageNum);
	List<ProgramDTO> getProgramJoinList();
	List<ProgramDTO> getProgramFilterByOtt(Integer programOttNo, Integer programCategoryNo);
	List<ProgramDTO> getProgramCategoryNoList();       // 프로그램 장르 리스트

}
