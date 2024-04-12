package xyz.withy.dao;

import java.util.List;

import xyz.withy.dto.OttkindDTO;

public interface OttkindDAO {
	List<OttkindDTO> selectTicketNameList();
	List<OttkindDTO> selectOttNoAndNameList();
	int insertOttkind(OttkindDTO ottkindDTO);
}
