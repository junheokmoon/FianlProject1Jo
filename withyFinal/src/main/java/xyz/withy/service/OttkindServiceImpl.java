package xyz.withy.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.OttkindDAO;
import xyz.withy.dto.OttkindDTO;

@Service
@RequiredArgsConstructor
public class OttkindServiceImpl implements OttkindService {

	private final OttkindDAO ottkindDAO;

	@Override
	public List<OttkindDTO> getTicketMonthList() {
		return ottkindDAO.selectTicketNameList();
	}
	
	
	
}
