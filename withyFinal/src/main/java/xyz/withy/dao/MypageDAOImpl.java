package xyz.withy.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.UserDTO;
import xyz.withy.mapper.MypageMapper;

@Repository
@RequiredArgsConstructor
public class MypageDAOImpl implements MypageDAO{
	private final SqlSession sqlSession;
	
	@Override
	public int updateUser(UserDTO user) {
		return sqlSession.getMapper(MypageMapper.class).updateUser(user);
	}

	@Override
	public int withdrawal(int userNo) {
		return sqlSession.getMapper(MypageMapper.class).withdrawal(userNo);
	}

	@Override
	public UserDTO selectUserNickname(String userNickname) {
		return sqlSession.getMapper(MypageMapper.class).selectUserNickname(userNickname);
	}

	@Override
	public UserDTO selectUserEmail(String userEmail) {
		return sqlSession.getMapper(MypageMapper.class).selectUserEmail(userEmail);
	}

	

}
