package xyz.withy.dao;

import java.util.List;

import xyz.withy.dto.PointDTO;

public interface PointDAO {
	List<PointDTO> selectAddPointList();
	List<PointDTO> selectPointList();
//	PointDTO selectPointUser(int pointUserNo);
	void insertPoint(PointDTO point);
}
