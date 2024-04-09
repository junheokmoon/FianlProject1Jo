package xyz.withy.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

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
@NoArgsConstructor
@AllArgsConstructor
public class PointDTO {
	private int pointUserNo;
	private String pointComment;
	private int pointAdd;
	private int pointTotal;
	private String pointDate;

	// USER ���̺�� ����
	private String userId;
	private String userName;


}
