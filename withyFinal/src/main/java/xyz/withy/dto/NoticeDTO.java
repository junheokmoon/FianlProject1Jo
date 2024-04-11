package xyz.withy.dto;

import lombok.Data;

/*
이름           널?       유형
-------------- -------- --------------
NOTICE_NO      NOT NULL NUMBER          공지번호
NOTICE_TITLE   NOT NULL VARCHAR2(100)   공지제목
NOTICE_CONTENT NOT NULL VARCHAR2(1000)  공지내용
NOTICE_IMAGE            VARCHAR2(100)   공지이미지
NOTICE_DATE             DATE            공지날짜
NOTICE_UPDATE           DATE            공지변경날짜
NOTICE_COUNT            NUMBER          조회수
NOTICE_USER_NO          NUMBER(5)       회원번호
*/

@Data
public class NoticeDTO {
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeImage;
	private String noticeDate;
	private String noticeUpdate;
	private int noticeCount;
	private int noticeUserNo;
}
