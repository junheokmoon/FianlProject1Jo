package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.InquiryDTO;

public interface InquiryDAO {
	int insertInquiry(InquiryDTO inquiry);
	int updateInquiry(InquiryDTO inquiry);
	int deleteInquiry(int inquiryNo);
	InquiryDTO selectInquiry(int inquiryNo);
	InquiryDTO selectUserInquiry(int inquryUserNo);
	int selectInquiryCount();
	List<InquiryDTO> selectInquiryList(Map<String, Object> map);
}
