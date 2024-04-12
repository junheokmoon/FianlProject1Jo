package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.PointDTO;

public interface PointMapper {
	List<PointDTO> selectAddPointList();
	List<PointDTO> selectPointList();
//	PointDTO selectPointUser(int pointUserNo);
	void insertPoint(PointDTO point);
	int selectPointCount();
	List<PointDTO> selectPointPageList(Map<String, Object> map);
}
