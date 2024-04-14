package xyz.withy.service;

import java.util.Map;

import xyz.withy.dto.InquiryDTO;


public interface InquiryService {
	void addInquiry(InquiryDTO inquiry); //삽입
	void modifyInquiry(InquiryDTO inquiry); //문의내용 변경
	void removeInquiry(int inquiryNo); //삭제
	InquiryDTO getInquiry(int inquiryNo); //단일행 검색(글번호)
	InquiryDTO getUserInquiry(int inquiryUserNo); //(회원번호)
	Map<String, Object> getInquiryList(int pageNum); //전체글목록
}
