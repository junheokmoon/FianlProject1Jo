package xyz.withy.service;

import java.util.List;

import xyz.withy.dto.UserDTO;

public interface UserService {
	List<UserDTO> getUserJoindateList();
	List<UserDTO> getUserList();
	UserDTO getUserinfo(String userId);
	//UserDTO getUserPoint(String userId);
	UserDTO getUserByNo(int userNo);
	void updateUserPoint(int userNo, int userPoint);
	int joinUser(UserDTO userDTO); //회원가입 
	} 

