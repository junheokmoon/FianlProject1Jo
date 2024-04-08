package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;
 
/*

이름                널?       유형            
----------------- -------- ------------- 
REVIEW_NO         NOT NULL NUMBER        리뷰 번호
REVIEW_STAR                NUMBER(5)     리뷰 별점
REVIEW_COMMENT    NOT NULL VARCHAR2(300) 리뷰 댓글
REVIEW_USER_NO             NUMBER        리뷰 사용자 번호(fk)
REVIEW_DATE                DATE          리뷰 날짜
REVIEW_PROGRAM_NO          NUMBER   	 리뷰 프로그램 번호 (fk)

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
