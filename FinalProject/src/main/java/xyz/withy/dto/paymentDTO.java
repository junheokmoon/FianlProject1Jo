package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
이름            널?       유형            
------------- -------- ------------- 
TICKET_CODE   NOT NULL VARCHAR2(10)  
TICKET_PRICE  NOT NULL NUMBER        
TICKET_IMAGE1          VARCHAR2(500) 
TICKET_IMAGE2          VARCHAR2(500) 
TICKET_OTT_NO          NUMBER        
TICKET_MONTH  NOT NULL NUMBER        

*/

@Data
@Builder
public class paymentDTO {

	private String ticketCode;
	private int ticketPrice;
	private String ticketImage1;
	private String ticketImage2;
	private int ticketOttNo;
	private int ticketMonth;
	
}
