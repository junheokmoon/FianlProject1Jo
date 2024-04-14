package xyz.withy.mapper;

import xyz.withy.dto.UserDTO;

public interface MypageMapper {
    int	updateUser(UserDTO user);
	int withdrawal(int userNo);
	UserDTO selectUserNickname(String userNickname);
	UserDTO selectUserEmail(String userEmail);
}
