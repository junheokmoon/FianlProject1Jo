package xyz.withy.service;

import xyz.withy.dto.UserDTO;

public interface MypageService {
	void modifyUserinfo(UserDTO user); //회원정보 변경
	void withdrawal(int userNo); //회원탈퇴
	UserDTO getUserEmail(String userEmail); //중복검사
	UserDTO getUserNickname(String userNickname); 
 }
