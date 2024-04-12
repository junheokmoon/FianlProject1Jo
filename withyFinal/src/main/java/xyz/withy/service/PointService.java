package xyz.withy.service;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.PointDTO;

public interface PointService {
	List<PointDTO> getAddPointList();
	List<PointDTO> getPointList();
	void addPoint(PointDTO point);
	Map<String, Object> getPointPageList(int pageNum);	
}
