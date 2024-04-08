package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;


/*
 이름            널?       유형
------------- -------- ------------
USER_NO       NOT NULL NUMBER       회원번호
USER_ID       NOT NULL VARCHAR2(50) 아이디
USER_PASSWORD NOT NULL VARCHAR2(50) 패스워드
USER_NAME     NOT NULL VARCHAR2(20) 이름
USER_EMAIL    NOT NULL VARCHAR2(50) 이메일
USER_PHONE             VARCHAR2(50) 전화번호
USER_STATUS   NOT NULL NUMBER(10)   권한
USER_BIRTHDAY          DATE         생년월일
USER_NICKNAME          VARCHAR2(50) 닉네임
USER_JOINDATE          DATE 		가입날짜

 */

@Data
@Builder
public class UserDTO {
	private int userNumber;
	private String userId;
	private String userPassword;
	private String userName;
	private String userEmail;
	private String userPhone;
	private int userStatus; //탈퇴회원 0 일반회원 1 관리자 9
	private String userBirthday;
	private String userNickname;
	private String userJoindate;

}
