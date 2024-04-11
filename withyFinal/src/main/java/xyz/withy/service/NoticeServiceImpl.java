package xyz.withy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.NoticeDAO;
import xyz.withy.dto.NoticeDTO;
import xyz.withy.util.Pager;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	private final NoticeDAO noticeDAO;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addNotice(NoticeDTO notice) {
		noticeDAO.insertNotice(notice);
	}

	@Override
	public void modifyNotice(NoticeDTO notice) {
		noticeDAO.updateNotice(notice);
	}

	@Override
	public void modifyNoticeCount(int noticeCount) {
		noticeDAO.updateNoticeCount(noticeCount);
	}

	@Transactional
	@Override
	public void removeNotice(int noticeNo) {
		if(noticeDAO.selectNotice(noticeNo) == null) {
			throw new RuntimeException("게시글을 찾을 수 없습니다.");
		}
		noticeDAO.deleteNotice(noticeNo);
	}

	@Override
	public NoticeDTO getNotice(int noticeNo) {
		NoticeDTO notice=noticeDAO.selectNotice(noticeNo);
		if(notice == null ) {
			throw new RuntimeException("게시글을 찾을 수 없습니다.");
	}
	return notice;
}

	
	//메소드의 매개변수로 요청 페이지 번호를 전달받아 게시글 목록을 검색하여 게시글 목록과
	//페이징 처리 관련 정보를 Map 객체의 엔트리로 추가하여 반환하는 메소드 
	@Override
	public Map<String, Object> getNoticeList(int pageNum) {
		//noticeDTO 테이블에 저장된 모든 행(게시글)의 갯수를 반환받아 저장
		int totalSize=noticeDAO.selectNoticeCount();
		
		Pager pager=new Pager(pageNum, totalSize, 5, 5); //한 페이지에 5개 게시글 갯수 저장, 한 블럭에 출력될 페이지 번호를 5개 저장 
		
		//NoticeDAO 클래스의 selectNoticeList() 메소드를 호출하기 위해 매개변수에 전달될 Map 객체 생성
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		List<NoticeDTO> noticeList=noticeDAO.selectNoticeList(pageMap);
		
		//요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
		// => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("noticeList", noticeList);
		
		return resultMap;
	}

}
