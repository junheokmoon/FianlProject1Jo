package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

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
public class ProgramDTO {
	private int programNo;
	private int programOttNo;
	private String programName;
	private String programImage;
	private String programDetail;
	private String programVideo;
	private String programCategoryNo;

}
