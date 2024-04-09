package xyz.withy.dao;

import java.util.List;

import xyz.withy.dto.UserDTO;

public interface UserDAO {
	List<UserDTO> selectUserJoindateList();
	List<UserDTO> selectUserList();
	UserDTO selectUserinfo(String userId);
}