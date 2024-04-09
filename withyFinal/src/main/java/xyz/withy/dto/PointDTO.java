package xyz.withy.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
이름            널?       	유형       	원래 이름
------------- -------- 	------------- -----------
POINT_USER_NO          	NUMBER        	회원 번호
POINT_COMMENT NOT NULL 	VARCHAR2(100) 	지급사유
POINT_ADD				NUMBER        	지급포인트
POINT_TOTAL            	NUMBER        	총포인트
POINT_DATE    NOT NULL 	DATE       	 	지급일
*/

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PointDTO {
	private int pointUserNo;
	private String pointComment;
	private int pointAdd;
	private int pointTotal;
	private String pointDate;

	// USER 테이블과 조인
	private String userId;
	private String userName;


}
