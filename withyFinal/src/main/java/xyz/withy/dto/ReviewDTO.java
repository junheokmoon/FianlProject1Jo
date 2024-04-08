package xyz.withy.dto;

import org.springframework.format.annotation.DateTimeFormat;

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
		private int reviewNo;
		private int reviewStar;
		private String reviewComment;
		private String reviewUserNo;
		@DateTimeFormat(pattern = "yyyy/MM/dd")
		private String reviewDate;
		private String reviewProgramNo;

}
