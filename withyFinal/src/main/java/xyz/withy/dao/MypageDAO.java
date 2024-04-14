package xyz.withy.dao;

import xyz.withy.dto.UserDTO;

public interface MypageDAO {
	 int updateUser(UserDTO user);
	 int withdrawal(int userNo);
	 UserDTO selectUserNickname(String userNickname);
	 UserDTO selectUserEmail(String userEmail);
}
