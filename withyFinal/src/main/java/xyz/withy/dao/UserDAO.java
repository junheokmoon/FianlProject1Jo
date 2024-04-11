package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.UserDTO;

public interface UserDAO {
	List<UserDTO> selectUserJoindateList();
	List<UserDTO> selectUserList();
	UserDTO selectUserinfo(String userId);
	//UserDTO selectUserPoint(String userId);
	UserDTO selectUserByNo(int userNo);
	void updateUserPoint(int userNo, int userPoint);
	void userJoin(UserDTO userDTO);  // 회원가입 
	int selectUserCount();
	List<UserDTO> selectUserPageList(Map<String, Object> map);
}