package xyz.withy.mapper;

import java.util.List;
import xyz.withy.dto.UserDTO;

public interface UserMapper {
	UserDTO selectUserId(String userid);
	List<UserDTO> selectUserNoList();
	List<UserDTO> selectUserJoindateList();
}
