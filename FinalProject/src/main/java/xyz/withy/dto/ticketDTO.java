package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
이름                  널?       유형           
------------------- -------- ------------ 
PAYMENT_NO          NOT NULL NUMBER       
PAYMENT_USER_NO              NUMBER       
PAYMENT_TICKET_CODE          VARCHAR2(10) 
PAYMENT_DATE        NOT NULL DATE         
PAYMENT_STATUS      NOT NULL NUMBER    
*/

@Data
@Builder
public class ticketDTO {

	private int paymentNo;
	private int paymentUserNo;
	private String paymentTicketCode;
	private String paymentDate;
	private int paymentStatus;
}
