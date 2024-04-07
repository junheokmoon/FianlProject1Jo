package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
이름             널?       유형             
-------------- -------- -------------- 
NOTICE_NO      NOT NULL NUMBER          글번호
NOTICE_TITLE   NOT NULL VARCHAR2(100)   제목
NOTICE_CONTENT NOT NULL VARCHAR2(1000)  내용
NOTICE_IMAGE            VARCHAR2(100)   이미지
NOTICE_DATE             DATE            작성날짜
NOTICE_UPDATE           DATE            수정날짜
NOTICE_COUNT            NUMBER          조회수
NOTICE_USER_NO          NUMBER(5)       회원번호
*/

@Data
@Builder
public class noticeDTO {
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeImage;
	private String noticeDate;
	private String noticeUpdate;
	private int noticeCount;
	private int noticeUserNo;
}
