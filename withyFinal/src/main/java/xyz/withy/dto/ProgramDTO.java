package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;
 
/*

이름                  널?       유형            
------------------- -------- ------------- 
PROGRAM_NO          NOT NULL NUMBER        프로그램번호
PROGRAM_OTT_NO      NOT NULL NUMBER(38)    프로그램OTT 번호(FK)
PROGRAM_AGE                  NUMBER(5)     프로그램 연령제한
PROGRAM_NAME        NOT NULL VARCHAR2(30)  프로그램 이름
PROGRAM_IMAGE                VARCHAR2(500) 프로그램 이미지
PROGRAM_DETAIL      NOT NULL VARCHAR2(200) 프로그램 설명
PROGRAM_VIDEO                VARCHAR2(200) 프로그램 비디오 링크
PROGRAM_CATEGORY_NO          NUMBER(5)     프로그램 세부 카테고리

*/ 


@Data
@Builder
public class ProgramDTO {
	private int programNo;
	private int programOttNo;
	private int programAge;
	private String programName;
	private String programImage;
	private String programDetail;
	private String programVideo;
	private String programCategoryNo;

}
