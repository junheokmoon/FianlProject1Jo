package xyz.withy.service;

import java.util.List;

import xyz.withy.dto.OttkindDTO;

public interface OttkindService {
	List<OttkindDTO> getTicketNameList();
	List<OttkindDTO> getOttNoAndNameList();
}
