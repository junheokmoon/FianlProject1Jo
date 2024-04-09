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
	public List<UserDTO> getUserJoindateList() {
		return userDAO.selectUserJoindateList();
	}

	@Override
	public List<UserDTO> getUserList() {
		return userDAO.selectUserList();
	}

	@Override
	public UserDTO getUserinfo(String userId) {
		return userDAO.selectUserinfo(userId);
	}

	@Override
	public UserDTO getUserPoint(String userId) {
		return userDAO.selectUserPoint(userId);
	}

}
