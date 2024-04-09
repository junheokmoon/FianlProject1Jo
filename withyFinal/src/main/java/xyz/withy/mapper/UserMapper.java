package xyz.withy.mapper;

import java.util.List;

import xyz.withy.dto.UserDTO;

public interface UserMapper {
	List<UserDTO> selectUserJoindateList();
	List<UserDTO> selectUserList();
	UserDTO selectUserinfo(String userId);
	UserDTO selectUserPoint(String userId);
}
