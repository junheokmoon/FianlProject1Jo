package xyz.withy.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.MypageDAO;
import xyz.withy.dao.UserDAO;
import xyz.withy.dto.UserDTO;
import xyz.withy.exception.UserinfoNotFoundException;

@Service
@RequiredArgsConstructor
public class MypageServiceImpl implements MypageService{	
	private final MypageDAO mypageDAO;
	private final UserDAO userDAO;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void modifyUserinfo(UserDTO user) {
		 if(userDAO.selectUserByNo(user.getUserNo()) == null) {
	         throw new UserinfoNotFoundException("아이디의 회원정보를 찾을 수 없습니다.");
	      }
	      
	      if(user.getUserPassword() !=null && !user.getUserPassword().equals("")) {
	         String hashedPasword=BCrypt.hashpw(user.getUserPassword(),BCrypt.gensalt());
	         user.setUserPassword(hashedPasword);
	      }      
	      mypageDAO.updateUser(user);	      
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void withdrawal(int userNo) {
		if(userDAO.selectUserByNo(userNo) == null) {
	         throw new UserinfoNotFoundException("아이디의 회원정보를 찾을 수 없습니다.");
	      }
		    mypageDAO.withdrawal(userNo);  	      
	     }
	}

