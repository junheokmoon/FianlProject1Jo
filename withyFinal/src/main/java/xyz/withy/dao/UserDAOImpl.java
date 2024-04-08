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
	public UserDTO selectUserId(String userid) {
		return sqlSession.getMapper(UserMapper.class).selectUserId(userid);
	}

	@Override
	public List<UserDTO> selectUserNoList() {
		return sqlSession.getMapper(UserMapper.class).selectUserNoList();
	}

	@Override
	public List<UserDTO> selectUserJoindateList() {
		return sqlSession.getMapper(UserMapper.class).selectUserJoindateList();
	}

}
