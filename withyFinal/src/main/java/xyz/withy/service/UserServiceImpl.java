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
	public List<UserDTO> getUserinfoList() {
		return userDAO.selectUserinfoList();
	}

}
