package xyz.withy.service;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.UserDTO;

public interface UserService {
   List<UserDTO> getUserJoindateList();
   List<UserDTO> getUserList();
   UserDTO getUserinfo(String userId);
   //UserDTO getUserPoint(String userId);
   UserDTO getUserByNo(int userNo);
   void updateUserPoint(int userNo, int userPoint);
   //int joinUser(UserDTO userDTO); //회원가입 
   Map<String, Object> getUserPageList(int pageNum);   
   void addUser(UserDTO userdto);
   void modifyUser(UserDTO userdto);
   void removeUser(String userid);
   UserDTO getUser(String userid);
   UserDTO loginAuth(UserDTO userdto);
}
