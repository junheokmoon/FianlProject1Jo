package xyz.withy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.UserDAO;
import xyz.withy.dto.UserDTO;
import xyz.withy.exception.ExistsUserinfoException;
import xyz.withy.exception.LoginAuthFailException;
import xyz.withy.exception.UserinfoNotFoundException;
import xyz.withy.util.Pager;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
   private final UserDAO userDAO;
   
   @Override
   public List<UserDTO> getUserJoindateList() {
      return userDAO.selectUserJoindateList();
   }

   @Override
   public List<UserDTO> getUserList() {
      return userDAO.selectUserList();
   }

   @Override
   public UserDTO getUserinfo(String userId) {
      return userDAO.selectUserinfo(userId);
   }

//   @Override
//   public UserDTO getUserPoint(String userId) {
//      return userDAO.selectUserPoint(userId);
//   }
   
   @Override
   public UserDTO getUserByNo(int userNo) {
      return userDAO.selectUserByNo(userNo);
   }

   @Override
   public void updateUserPoint(int userNo, int userPoint) {
      userDAO.updateUserPoint(userNo, userPoint);
   }

   //메소드의 매개변수로 요청 페이지 번호를 전달받아 게시글 목록을 검색하여 게시글 목록과
   //페이징 처리 관련 정보를 Map 객체의 엔트리로 추가하여 반환하는 메소드 
   @Override
   public Map<String, Object> getUserPageList(int pageNum) {
      //FILE_BOARD 테이블에 저장된 모든 행(게시글)의 갯수를 반환받아 저장
      int totalSize=userDAO.selectUserCount();
      int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수를 저장
      int blockSize=5;//하나의 블럭에 출력될 페이지 번호의 갯수를 저장
   
      Pager pager=new Pager(pageNum, totalSize, pageSize, blockSize);
   
      //FileBoardDAO 클래스의 selectFileBoardList() 메소드를 호출하기 위해 매개변수에 전달될 Map 객체 생성
      Map<String, Object> pageMap=new HashMap<String, Object>();
      pageMap.put("startRow", pager.getStartRow());
      pageMap.put("endRow", pager.getEndRow());
      List<UserDTO> userPageList=userDAO.selectUserPageList(pageMap);
      
      //요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
      // => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
      Map<String, Object> resultMap=new HashMap<String, Object>();
      resultMap.put("pager", pager);
      resultMap.put("userPageList", userPageList);
      
      return resultMap;
   }
   
   @Transactional(rollbackFor = Exception.class)
   @Override
   public void addUser(UserDTO userdto) {
      if(userDAO.selectUserinfo(userdto.getUserId()) != null) {
         //예외를 명확히 구분하여 예외처리시 필요한 값을 제공받기 위해 예외클래스를 작성하여
         //인위적 예외 발생
         throw new ExistsUserinfoException("이미 사용중인 아이디를 입력 하였습니다.", userdto);
      }
      
      //매개변수로 전달받은 회원정보의 비밀번호를 암호화 처리하여 필드값으로 변경 처리
      String hashedPassword = BCrypt.hashpw(userdto.getUserPassword(), BCrypt.gensalt());
      userdto.setUserPassword(hashedPassword);
      
      userDAO.insertUser(userdto);
   }


   @Transactional(rollbackFor = Exception.class)
   @Override
   public void modifyUser(UserDTO userdto) {
      if(userDAO.selectUser(userdto.getUserId()) == null) {
         throw new UserinfoNotFoundException("아이디의 회원정보를 찾을 수 없습니다.");
      }
      
      if(userdto.getUserPassword() != null && !userdto.getUserPassword().isEmpty()) {
          String hashedPassword = BCrypt.hashpw(userdto.getUserPassword(), BCrypt.gensalt());
          userdto.setUserPassword(hashedPassword);
       }
       
       userDAO.updateUser(userdto);
    }

   @Transactional(rollbackFor = Exception.class)
   @Override
   public void removeUser(String userid) {
      if(userDAO.selectUserinfo(userid) == null) {
         throw new UserinfoNotFoundException("아이디의 회원정보를 찾을 수 없습니다.");
      }
      
      userDAO.deleteUser(userid);
   }

   @Override
   public UserDTO getUser(String userid) {
      UserDTO userinfo=userDAO.selectUserinfo(userid);
      if(userinfo == null) {
         throw new UserinfoNotFoundException("아이디의 회원정보를 찾을 수 없습니다.");
      }
      return userinfo;
   }

   @Override
   public UserDTO loginAuth(UserDTO userdto) {
       UserDTO authUserinfo = userDAO.selectUserinfo(userdto.getUserId());

       if (authUserinfo == null) {
           throw new LoginAuthFailException("아이디의 회원정보가 존재하지 않습니다.", userdto.getUserId());
       }

       if (!BCrypt.checkpw(userdto.getUserPassword(), authUserinfo.getUserPassword())) {
           throw new LoginAuthFailException("아이디가 없거나 비밀번호가 맞지 않습니다.", userdto.getUserId());
       }

       return authUserinfo;
   }
}