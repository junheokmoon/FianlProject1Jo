package xyz.withy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.PointDAO;
import xyz.withy.dto.PointDTO;
import xyz.withy.dto.UserDTO;

@Service
@RequiredArgsConstructor
public class PointServiceImpl implements PointService {
	//private final PointDAO pointDAO;
    @Autowired
    private PointDAO pointDAO;
    
    @Autowired
    private UserService userService;

	@Override
	public List<PointDTO> getAddPointList() {
		return pointDAO.selectAddPointList();
	}

	@Override
	public List<PointDTO> getPointList() {
		return pointDAO.selectPointList();
	}

	@Override
	public void addPoint(PointDTO point) {
		pointDAO.insertPoint(point);
		
        UserDTO userDTO = userService.getUserByNo(point.getPointUserNo());
        
        int nowUserPoint = userDTO.getUserPoint();
        int newPointTotal = nowUserPoint + point.getPointAdd();
        
        userService.updateUserPoint(point.getPointUserNo(), newPointTotal);
	}

}
