package xyz.withy.mapper;

import java.util.List;

import xyz.withy.dto.OttkindDTO;

public interface OttkindMapper {
	List<OttkindDTO> selectTicketNameList();
	List<OttkindDTO> selectOttNoAndNameList();
}
