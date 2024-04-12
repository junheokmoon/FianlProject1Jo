package xyz.withy.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.PartyDAO;
import xyz.withy.dto.PartyDTO;

@Service
@RequiredArgsConstructor
public class PartyServiceImpl implements PartyService{
	PartyDAO partyDAO;
	
	@Override
	public int insertProgram(PartyDTO partyDTO) {
		return partyDAO.insertProgram(partyDTO);
	}

}
  