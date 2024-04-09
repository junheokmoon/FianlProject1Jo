package xyz.withy.mapper;

import java.util.List;

import xyz.withy.dto.PointDTO;

public interface PointMapper {
	List<PointDTO> selectAddPointList();
	List<PointDTO> selectPointList();
}
