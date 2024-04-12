package xyz.withy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.PointDAO;
import xyz.withy.dto.PointDTO;
import xyz.withy.dto.UserDTO;
import xyz.withy.util.Pager;

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
	

	//메소드의 매개변수로 요청 페이지 번호를 전달받아 게시글 목록을 검색하여 게시글 목록과
	//페이징 처리 관련 정보를 Map 객체의 엔트리로 추가하여 반환하는 메소드 
	@Override
	public Map<String, Object> getPointPageList(int pageNum) {
		//FILE_BOARD 테이블에 저장된 모든 행(게시글)의 갯수를 반환받아 저장
		int totalSize=pointDAO.selectPointCount();
		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수를 저장
		int blockSize=5;//하나의 블럭에 출력될 페이지 번호의 갯수를 저장
	
		Pager pager=new Pager(pageNum, totalSize, pageSize, blockSize);
	
		//FileBoardDAO 클래스의 selectFileBoardList() 메소드를 호출하기 위해 매개변수에 전달될 Map 객체 생성
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		List<PointDTO> pointPageList=pointDAO.selectPointPageList(pageMap);
		
		//요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
		// => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("pointPageList", pointPageList);
		System.out.println("pager = " + pager);
		
		return resultMap;
	}

}
