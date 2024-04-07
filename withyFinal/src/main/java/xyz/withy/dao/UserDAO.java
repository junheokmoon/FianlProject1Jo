package xyz.withy.dao;

import java.util.List;

import xyz.withy.dto.UserDTO;

public interface UserDAO {
	UserDTO selectUserId(String userid);
	List<UserDTO> selectUserNoList();
	List<UserDTO> selectUserJoindateList();
}