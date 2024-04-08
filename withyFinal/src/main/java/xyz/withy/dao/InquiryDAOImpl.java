package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.InquiryDTO;
import xyz.withy.mapper.InquiryMapper;

@Repository
@RequiredArgsConstructor
public class InquiryDAOImpl implements InquiryDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertInquiry(InquiryDTO inquiry) {
		return sqlSession.getMapper(InquiryMapper.class).insertInquiry(inquiry);
	}

	@Override
	public int updateInquiry(InquiryDTO inquiry) {
		return sqlSession.getMapper(InquiryMapper.class).updateInquiry(inquiry);
	}

	@Override
	public int deleteInquiry(int inquiryNo) {
		return sqlSession.getMapper(InquiryMapper.class).deleteInquiry(inquiryNo);
	}

	@Override
	public InquiryDTO selectInquiry(int inquiryNo) {
		return sqlSession.getMapper(InquiryMapper.class).selectInquiry(inquiryNo);
	}

	@Override
	public int selectInquiryCount() {
		return sqlSession.getMapper(InquiryMapper.class).selectInquiryCount();
	}

	@Override
	public List<InquiryDTO> selectInquiryList(Map<String, Object> map) {
		return sqlSession.getMapper(InquiryMapper.class).selectInquiryList(map);
	}

}
