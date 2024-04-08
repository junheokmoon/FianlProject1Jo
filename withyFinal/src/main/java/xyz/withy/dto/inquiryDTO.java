package xyz.withy.dto;

/*
이름              널?       유형
--------------- -------- --------------
INQUIRY_NO      NOT NULL NUMBER         문의번호
INQUIRY_TITLE   NOT NULL VARCHAR2(100)  문의제목
INQUIRY_CONTENT NOT NULL VARCHAR2(1000) 문의내용
INQUIRY_DATE    NOT NULL DATE           문의날짜
INQUIRY_ANSWER           VARCHAR2(4000) 문의답변
INQUIRY_TYPE    NOT NULL NUMBER(10)     문의유형
INQUIRY_STATUS           VARCHAR2(5)    문의상태
INQUIRY_IMAGE            VARCHAR2(100)  이미지
INQUIRY_USER_NO          NUMBER(5)      회원번호
*/

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class inquiryDTO {
	private int inquiryNo;
	private String inquiryTitle;
	private String inquiryContent;
	private String inquiryDate;
	private String inquiryAnswer;
	private int inquiryType;
	private String inquiryStatus;
	private String inquiryImage;
	private int inquiryUserNo;
}
