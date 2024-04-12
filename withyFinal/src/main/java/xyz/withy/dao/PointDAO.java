package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.PointDTO;

public interface PointDAO {
	List<PointDTO> selectAddPointList();
	List<PointDTO> selectPointList();
//	PointDTO selectPointUser(int pointUserNo);
	void insertPoint(PointDTO point);
	int selectPointCount();
	List<PointDTO> selectPointPageList(Map<String, Object> map);
}
