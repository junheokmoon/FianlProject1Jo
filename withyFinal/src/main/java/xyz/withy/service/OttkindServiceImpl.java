package xyz.withy.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.OttkindDAO;
import xyz.withy.dto.OttkindDTO;

@Service
@RequiredArgsConstructor
public class OttkindServiceImpl implements OttkindService {
	private final OttkindDAO ottkindDAO;

	@Override
	public List<OttkindDTO> getTicketNameList() {
		return ottkindDAO.selectTicketNameList();
	}
	
	@Override
	public List<OttkindDTO> getOttNoAndNameList() {
		return ottkindDAO.selectOttNoAndNameList();
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addOttkind(OttkindDTO ottkindDTO) {
		ottkindDAO.insertOttkind(ottkindDTO);
	}
}
