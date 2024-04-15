package xyz.withy.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
�̸�                  ��?       ����
------------------- -------- -------------
PROGRAM_NO          NOT NULL NUMBER        ���α׷���ȣ
PROGRAM_OTT_NO      NOT NULL NUMBER(38)    ���α׷�OTT ��ȣ(FK)
PROGRAM_NAME        NOT NULL VARCHAR2(30)  ���α׷� �̸�
PROGRAM_IMAGE                VARCHAR2(500) ���α׷� �̹���
PROGRAM_DETAIL      NOT NULL VARCHAR2(200) ���α׷� ����
PROGRAM_VIDEO                VARCHAR2(200) ���α׷� ���� ��ũ
PROGRAM_CATEGORY_NO          NUMBER(5)     ���α׷� ���� ī�װ�
*/
 

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProgramDTO {
	private int programNo;
	private int programOttNo;
	private String programName;
	private String programImage;
	private String programDetail;
	private String programVideo;
	private String programCategoryNo;
	
	private String keyword; //검색키워드
	private String type; //검색타입
	private int rn;	// NO

}
