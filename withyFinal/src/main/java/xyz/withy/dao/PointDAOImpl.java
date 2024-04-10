package xyz.withy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.PointDTO;
import xyz.withy.mapper.PointMapper;

@Repository
@RequiredArgsConstructor
public class PointDAOImpl implements PointDAO {
	//private final SqlSession sqlSession;
	@Autowired
    private SqlSession sqlSession;
	
	@Override
	public List<PointDTO> selectAddPointList() {
		return sqlSession.getMapper(PointMapper.class).selectAddPointList();
	}

	@Override
	public List<PointDTO> selectPointList() {
		return sqlSession.getMapper(PointMapper.class).selectPointList();
	}
	
//	@Override
//	public PointDTO selectPointUser(int pointUserNo) {
//		return sqlSession.getMapper(PointMapper.class).selectPointUser(pointUserNo);
//	}

	@Override
	public void insertPoint(PointDTO point) {
		sqlSession.getMapper(PointMapper.class).insertPoint(point);
	}

}
