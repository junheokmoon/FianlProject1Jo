package xyz.withy.service;

import java.util.List;

import xyz.withy.dto.UserDTO;

public interface UserService {
	List<UserDTO> getUserJoindateList();
	List<UserDTO> getUserList();
	UserDTO getUserinfo(String userId);
}
