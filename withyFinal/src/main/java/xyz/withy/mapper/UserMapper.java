package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.UserDTO;

public interface UserMapper {
	List<UserDTO> selectUserJoindateList();
	List<UserDTO> selectUserList();
	UserDTO selectUserinfo(String userId);
	//UserDTO selectUserPoint(String userId);
	UserDTO selectUserByNo(int userNo);
	void updateUserPoint(int userNo, int userPoint);
	int selectUserCount();
	List<UserDTO> selectUserPageList(Map<String, Object> map);
	void userJoin(UserDTO usrDTO);//회원가입
}
