package xyz.withy.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.UserDAO;
import xyz.withy.dto.UserDTO;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
	private final UserDAO userDAO;

	@Override
	public UserDTO getUserId(String userid) {
		UserDTO userinfo=userDAO.selectUserId(userid);
		if(userinfo == null) {
			throw new RuntimeException("아이디의 회원정보를 찾을 수 없습니다.");
		}
		return userinfo;
	}

	@Override
	public List<UserDTO> getUserNoList() {
		return userDAO.selectUserNoList();
	}

	@Override
	public List<UserDTO> getUserJoindateList() {
		return userDAO.selectUserJoindateList();
	}

}
