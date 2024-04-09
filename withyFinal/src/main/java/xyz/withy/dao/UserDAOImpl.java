package xyz.withy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.UserDTO;
import xyz.withy.mapper.UserMapper;

@Repository
@RequiredArgsConstructor
public class UserDAOImpl implements UserDAO {
	private final SqlSession sqlSession;

	@Override
	public List<UserDTO> selectUserJoindateList() {
		return sqlSession.getMapper(UserMapper.class).selectUserJoindateList();
	}

	@Override
	public List<UserDTO> selectUserinfoList() {
		return sqlSession.getMapper(UserMapper.class).selectUserinfoList();
	}

}
