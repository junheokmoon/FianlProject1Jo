package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
이름            널?       유형       원래 이름
------------- -------- ------------- -----------
POINT_USER_NO          NUMBER        회원 번호
POINT_COMMENT NOT NULL VARCHAR2(100) 지급사유
POINT_PAYMENT          NUMBER        지급포인트
POINT_TOTAL            NUMBER        총포인트
POINT_DATE    NOT NULL DATE       	 지급일
*/

@Data
@Builder
public class pointDTO {

	private int pointUserNo;
	private String pointComment;
	private int pointPaymenbt;
	private int pointTotal;
	private String pointDate;

}
