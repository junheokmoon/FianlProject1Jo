package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
이름        널?       유형      원래 이름
--------- -------- ------------ ----------
OTT_NO    NOT NULL NUMBER       OTT 번호
OTT_NAME  NOT NULL VARCHAR2(10) OTT 이름
OTT_IMAGE NOT NULL VARCHAR2(50) OTT 이미지
*/

@Data
@Builder
public class ottkindDTO {

	private int ottNo;
	private String ottName;
	private String ottImage;
	
	
}
