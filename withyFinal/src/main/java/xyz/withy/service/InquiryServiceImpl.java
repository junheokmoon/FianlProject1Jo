package xyz.withy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.InquiryDAO;
import xyz.withy.dto.InquiryDTO;
import xyz.withy.util.Pager;

@Service
@RequiredArgsConstructor
public class InquiryServiceImpl implements InquiryService{
	private final InquiryDAO inquiryDAO;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addInquiry(InquiryDTO inquiry) {
		inquiryDAO.insertInquiry(inquiry);
	}

	@Override
	public void modifyInquiry(InquiryDTO inquiry) {
		inquiryDAO.updateInquiry(inquiry);
	}

	@Transactional
	@Override
	public void removeInquiry(int inquiryNo) {
		if(inquiryDAO.selectInquiry(inquiryNo) == null) {
			throw new RuntimeException("문의글을 찾을 수 없습니다.");
		}
		inquiryDAO.deleteInquiry(inquiryNo);	
	}

	@Override
	public InquiryDTO getInquiry(int inquiryNo) {
		InquiryDTO inquiry=inquiryDAO.selectInquiry(inquiryNo);
		if(inquiry == null ) {
			throw new RuntimeException("문의글을 찾을 수 없습니다.");
	}
		return inquiry;
	}

		//메소드의 매개변수로 요청 페이지 번호를 전달받아 게시글 목록을 검색하여 게시글 목록과
		//페이징 처리 관련 정보를 Map 객체의 엔트리로 추가하여 반환하는 메소드 
		@Override
		public Map<String, Object> getInquiryList(int pageNum) {
			//noticeDTO 테이블에 저장된 모든 행(게시글)의 갯수를 반환받아 저장
			int totalSize=inquiryDAO.selectInquiryCount();
			
			Pager pager=new Pager(pageNum, totalSize, 5, 5); //한 페이지에 5개 게시글 갯수 저장, 한 블럭에 출력될 페이지 번호를 5개 저장 
			
			//NoticeDAO 클래스의 selectNoticeList() 메소드를 호출하기 위해 매개변수에 전달될 Map 객체 생성
			Map<String, Object> pageMap=new HashMap<String, Object>();
			pageMap.put("startRow", pager.getStartRow());
			pageMap.put("endRow", pager.getEndRow());
			
			List<InquiryDTO> inquiryList=inquiryDAO.selectInquiryList(pageMap);
			
			//요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
			// => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
			Map<String, Object> resultMap=new HashMap<String, Object>();
			resultMap.put("pager", pager);
			resultMap.put("inquiryList", inquiryList);
			
			return resultMap;
		}


}
