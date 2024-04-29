package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.InquiryDTO;
import xyz.withy.dto.UserDTO;
import xyz.withy.mapper.InquiryMapper;
import xyz.withy.mapper.UserMapper;

@Repository
@RequiredArgsConstructor
public class InquiryDAOImpl implements InquiryDAO {
	@Autowired
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
	public int updateInquiryAnswer(InquiryDTO inquiry) {
		return sqlSession.getMapper(InquiryMapper.class).updateInquiryAnswer(inquiry);
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
	public InquiryDTO selectInquiryAndUser(int inquiryNo) {
		return sqlSession.getMapper(InquiryMapper.class).selectInquiryAndUser(inquiryNo);
	}

	@Override
	public int selectInquiryCount() {
		return sqlSession.getMapper(InquiryMapper.class).selectInquiryCount();
	}

	@Override
	public List<InquiryDTO> selectInquiryList(Map<String, Object> map) {
		return sqlSession.getMapper(InquiryMapper.class).selectInquiryList(map);
	}

	@Override
	public List<InquiryDTO> selectInquiryListTen(Map<String, Object> map) {
		return sqlSession.getMapper(InquiryMapper.class).selectInquiryListTen(map);
	}
	
	@Override
	public List<InquiryDTO> selectInquiryListFive() {
		return sqlSession.getMapper(InquiryMapper.class).selectInquiryListFive();
	}

	@Override
	public InquiryDTO selectUserInquiry(int inquryUserNo) {
		return sqlSession.getMapper(InquiryMapper.class).selectUserInquiry(inquryUserNo);
	}

}
