package xyz.withy.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.PointDAO;
import xyz.withy.dto.PointDTO;

@Service
@RequiredArgsConstructor
public class PointServiceImpl implements PointService {
	private final PointDAO pointDAO;

	@Override
	public List<PointDTO> getAddPointList() {
		return pointDAO.selectAddPointList();
	}

	@Override
	public List<PointDTO> getPointList() {
		return pointDAO.selectPointList();

	}

}
