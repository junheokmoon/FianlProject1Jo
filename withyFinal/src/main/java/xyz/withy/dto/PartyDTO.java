package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
 ------------------- -------- ------------ 
PARTY_NO            NOT NULL NUMBER       
PARTY_OTT_TICKET_NO          VARCHAR2(10) 
PARTY_STARTDATE     NOT NULL DATE         
PARTY_ENDDATE       NOT NULL DATE         
PARTY_ACCOUNT       NOT NULL NUMBER       
PARTY_COMMENT_NO             NUMBER        
 */

@Data
@Builder
public class PartyDTO {
	private int partyNo;
	private String partyOttTicketNo;
	private String partyStartDate;
	private String partyendDate;
	private int partyAccount;
	private int partyCommentNo;
}
