
package xyz.withy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.UserDTO;
import xyz.withy.mapper.UserMapper;

@Repository
@RequiredArgsConstructor
public class UserDAOImpl implements UserDAO {
//   private final SqlSession sqlSession;
   @Autowired
    private SqlSession sqlSession;
   
   @Override
   public List<UserDTO> selectUserJoindateList() {
      return sqlSession.getMapper(UserMapper.class).selectUserJoindateList();
   }

   @Override
   public List<UserDTO> selectUserList() {
      return sqlSession.getMapper(UserMapper.class).selectUserList();
   }
   
   @Override 
   public UserDTO selectUserinfo(String userId) {
      return sqlSession.getMapper(UserMapper.class).selectUserinfo(userId);
   }

//   @Override
//   public UserDTO selectUserPoint(String userId) {
//      return sqlSession.getMapper(UserMapper.class).selectUserPoint(userId);
//   }

   @Override
   public UserDTO selectUserByNo(int userNo) {
      return sqlSession.getMapper(UserMapper.class).selectUserByNo(userNo);
   }

   @Override
   public void updateUserPoint(int userNo, int userPoint) {
      //sqlSession.getMapper(UserMapper.class).updateUserPoint(userNo, userPoint);
      
        Map<String, Object> paramMap = new HashMap();
        paramMap.put("userNo", userNo);
        paramMap.put("userPoint", userPoint);
        sqlSession.update("updateUserPoint", paramMap);
   }

   @Override
   public int insertUser(UserDTO userdto) {
      return sqlSession.getMapper(UserMapper.class).insertUser(userdto);
   }

   @Override
   public int selectUserCount() {
      return sqlSession.getMapper(UserMapper.class).selectUserCount();
   }
   
   @Override
   public int deleteUser(String userid) {
       return sqlSession.getMapper(UserMapper.class).deleteUser(userid);
   }
   
   @Override
   public UserDTO selectUser(String userid) {
      return sqlSession.getMapper(UserMapper.class).selectUserinfo(userid);
   }

   @Override
   public int updateUser(UserDTO userdto) {
      return sqlSession.getMapper(UserMapper.class).updateUser(userdto);
   }
   
   @Override
   public List<UserDTO> selectUserPageList(Map<String, Object> map) {
      return sqlSession.getMapper(UserMapper.class).selectUserPageList(map);
   }
}