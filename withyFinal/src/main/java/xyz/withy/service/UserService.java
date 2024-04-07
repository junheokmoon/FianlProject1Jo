package xyz.withy.service;

import java.util.List;

import xyz.withy.dto.UserDTO;

public interface UserService {
	UserDTO getUserId(String userid);
	List<UserDTO> getUserNoList();
	List<UserDTO> getUserJoindateList();
}
