package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
이름                  널?       유형      원래 이름
------------------- -------- ------------ -------------
PAYMENT_NO          NOT NULL NUMBER       결제 번호
PAYMENT_USER_NO              NUMBER       회원 번호
PAYMENT_TICKET_CODE          VARCHAR2(10) 결제 이용권 코드
PAYMENT_DATE        NOT NULL DATE         결제 날짜
PAYMENT_STATUS      NOT NULL NUMBER    	  결제 상태 rkdkdkdk
*/
@Data
@Builder
public class paymentDTO {

	private int paymentNo;
	private int paymentUserNo;
	private String paymentTicketCode;
	private String paymentDate;
	private int paymentStatus;
}
