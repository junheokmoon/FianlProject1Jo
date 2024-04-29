package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.InquiryDTO;

public interface InquiryMapper {
	int insertInquiry(InquiryDTO inquiry);
	int updateInquiry(InquiryDTO inquiry);
	int updateInquiryAnswer(InquiryDTO inquiry);
	int deleteInquiry(int inquiryNo);
	InquiryDTO selectInquiry(int inquiryNo);
	InquiryDTO selectInquiryAndUser(int inquiryNo);
	InquiryDTO selectUserInquiry(int inquiryUserNo);
	int selectInquiryCount();
	List<InquiryDTO> selectInquiryList(Map<String, Object> map);
	List<InquiryDTO> selectInquiryListTen(Map<String, Object> map);
	List<InquiryDTO> selectInquiryListFive();
}
