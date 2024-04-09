package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
�̸�            ��?       	����       	���� �̸�
------------- -------- 	------------- -----------
POINT_USER_NO          	NUMBER        	ȸ�� ��ȣ
POINT_COMMENT NOT NULL 	VARCHAR2(100) 	���޻���
POINT_ADD				NUMBER        	��������Ʈ
POINT_TOTAL            	NUMBER        	������Ʈ
POINT_DATE    NOT NULL 	DATE       	 	������
*/

@Data
@Builder
public class pointDTO {

	private int pointUserNo;
	private String pointComment;
	private int pointAdd;
	private int pointTotal;
	private String pointDate;

}
