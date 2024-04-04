package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
이름            널?       유형       원래 이름
------------- -------- ------------- ----------------
TICKET_CODE   NOT NULL VARCHAR2(10)  코드(종류/개월수)
TICKET_PRICE  NOT NULL NUMBER        요금
TICKET_IMAGE1          VARCHAR2(500) 이미지
TICKET_IMAGE2          VARCHAR2(500) 이미지2
TICKET_OTT_NO          NUMBER        종류
TICKET_MONTH  NOT NULL NUMBER        개월수 
*/ 

@Data
@Builder
public class ticketDTO {

	private String ticketCode;
	private int ticketPrice;
	private String ticketImage1;
	private String ticketImage2;
	private int ticketOttNo; 
	private int ticketMonth;
	
}
