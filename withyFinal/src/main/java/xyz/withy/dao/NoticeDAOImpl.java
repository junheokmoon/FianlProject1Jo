package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.NoticeDTO;
import xyz.withy.mapper.NoticeMapper;

@Repository
@RequiredArgsConstructor
public class NoticeDAOImpl implements NoticeDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertNotice(NoticeDTO notice) {
		return sqlSession.getMapper(NoticeMapper.class).insertNotice(notice);
	}

	@Override
	public int updateNotice(NoticeDTO notice) {
		return sqlSession.getMapper(NoticeMapper.class).updateNotice(notice);
	}

	@Override
	public int updateNoticeCount(int noticeCount) {
		return sqlSession.getMapper(NoticeMapper.class).updateNoticeCount(noticeCount);
	}

	@Override
	public int deleteNotice(int noticeNo) {
		return sqlSession.getMapper(NoticeMapper.class).deleteNotice(noticeNo);
	}

	@Override
	public NoticeDTO selectNotice(int noticeNo) {
		return sqlSession.getMapper(NoticeMapper.class).selectNotice(noticeNo);
	}

	@Override
	public int selectNoticeCount() {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeCount();
	}

	@Override
	public List<NoticeDTO> selectNoticeList(Map<String, Object> map) {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeList(map);
	}

}
