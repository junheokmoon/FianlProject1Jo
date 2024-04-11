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

//	@Override
//	public UserDTO getUserPoint(String userId) {
//		return userDAO.selectUserPoint(userId);
//	}
	
	@Override
	public UserDTO getUserByNo(int userNo) {
		return userDAO.selectUserByNo(userNo);
	}

	@Override
	public void updateUserPoint(int userNo, int userPoint) {
		userDAO.updateUserPoint(userNo, userPoint);
	}
	

	 @Override
	 public int joinUser(UserDTO userDTO) {
	    try {
	      userDAO.userJoin(userDTO);
	      return 1; // 성공
	 } 
	      catch (Exception e) {
	      return 0; // 실패
	 }
	 }
	 }

