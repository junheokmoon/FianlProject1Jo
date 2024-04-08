package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
�̸�                ��?       ����
----------------- -------- -------------
REVIEW_NO         NOT NULL NUMBER        ���� ��ȣ
REVIEW_STAR                NUMBER(5)     ���� ����
REVIEW_COMMENT    NOT NULL VARCHAR2(300) ���� ���
REVIEW_USER_NO             NUMBER        ���� ����� ��ȣ(fk)
REVIEW_DATE                DATE          ���� ��¥
REVIEW_PROGRAM_NO          NUMBER   	 ���� ���α׷� ��ȣ (fk)
*/

@Data
@Builder
public class ReviewDTO {
		private int reviewNumber;
		private int reviewStar;
		private String reviewComment;
		private String reviewUserNo;
		private String reviewDate;
		private String reviewProgramNo;

}
