package xyz.withy.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
이름        널?       유형      원래 이름
--------- -------- ------------ ----------
OTT_NO    NOT NULL NUMBER       OTT 번호
OTT_NAME  NOT NULL VARCHAR2(500) OTT 이름
OTT_IMAGE NOT NULL VARCHAR2(1000) OTT 이미지
OTT_CD             VARCHAR2(100) OTT 코드
*/

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class OttkindDTO {

	private int ottNo;
	private String ottName;
	private String ottImage;
	private String ottCd;
	

}