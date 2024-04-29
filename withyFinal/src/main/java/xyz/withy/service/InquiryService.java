package xyz.withy.service;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.InquiryDTO;
import xyz.withy.dto.UserDTO;


public interface InquiryService {
	void addInquiry(InquiryDTO inquiry); //삽입
	void modifyInquiry(InquiryDTO inquiry); //문의내용 변경
	void modifyInquiryAnswer(InquiryDTO inquiry); //문의내용 변경
	void removeInquiry(int inquiryNo); //삭제
	InquiryDTO getInquiry(int inquiryNo); //단일행 검색(글번호)
	InquiryDTO getInquiryAndUser(int inquiryNo); //단일행 검색(글번호)(회원테이블과 조인)
	InquiryDTO getUserInquiry(int inquiryUserNo); //(회원번호)
	Map<String, Object> getInquiryList(int pageNum); //전체글목록
	Map<String, Object> getInquiryListTen(int pageNum); //전체글목록10개
	List<InquiryDTO> getInquiryListFive();	//신규문의 상위 5개
}
